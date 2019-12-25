#!/usr/bin/env python
from cv_bridge import CvBridge, CvBridgeError
from duckietown_msgs.msg import Twist2DStamped
from sensor_msgs.msg import CompressedImage, Image
import rospy

#!/usr/bin/env python
import cv_bridge
from cv_bridge import CvBridge, CvBridgeError
from duckietown_msgs.msg import Twist2DStamped
from sensor_msgs.msg import CompressedImage, Image
import rospy
import numpy as np
import math
import sys
sys.path.append(sys.path.pop(1))
sys.path.append(sys.path.pop(1))
import cv2

def calc_angle(image):
    image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

    height = image.shape[0]
    width = image.shape[1]

    gray_image = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)
    canny_image = cv2.Canny(gray_image, 100, 200)

    lines = cv2.HoughLinesP(canny_image,
                            rho=1,
                            theta=np.pi / 180,
                            threshold=100,
                            lines=np.array([]),
                            minLineLength=100,
                            maxLineGap=10)

    avg_vector_near = [0, 0]
    for line in lines:
        #print("line ", line[0][0], line[0][1], line[0][2], line[0][3])
        if line[0][1] > line[0][3]:
            line[0][1], line[0][3] = line[0][3], line[0][1]
            line[0][2], line[0][0] = line[0][0], line[0][2]
        if line[0][3] > height / 2:
            #print("ok")
            avg_vector_near[0] += line[0][0] - line[0][2]
            avg_vector_near[1] += line[0][1] - line[0][3]

    if abs(avg_vector_near[1]) < 0.001 and abs(avg_vector_near[0]) < 0.001:
        return 0
    ang = math.atan2(-avg_vector_near[0], -avg_vector_near[1])
    #print("avg_near = ", avg_vector_near)
    #print(ang)
    return 2 * ang


# from https://gist.github.com/awesomebytes/36581763554006f971edc070dbee4bf5#file-image_topic_opencv_skeleton-py-L56
def img_to_cv2(image_msg):
    """
    Convert the image message into a cv2 image (numpy.ndarray)
    to be able to do OpenCV operations in it.
    :param Image or CompressedImage image_msg: the message to transform
    """
    type_as_str = str(type(image_msg))
    if type_as_str.find('sensor_msgs.msg._CompressedImage.CompressedImage') >= 0:
        np_arr = np.fromstring(image_msg.data, np.uint8)
        return cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
    elif type_as_str.find('sensor_msgs.msg._Image.Image') >= 0:
        try:
            return self.bridge.imgmsg_to_cv2(image_msg, image_msg.encoding)
        except CvBridgeError as e:
            rospy.logerr("Error when converting image: " + str(e))
            return None
        else:
            rospy.logerr("We don't know how to transform image of type " + str(type(image_msg)))
            return None


class DemoNode(object):
    def __init__(self):
        self.node_name = "LineDetectorNode"
        self.sub_image = rospy.Subscriber("/None/corrected_image/compressed", CompressedImage, self.cbImage, queue_size=1)
        self.pub_cmd = rospy.Publisher("/None/car_cmd", Twist2DStamped, queue_size=1)


    def cbImage(self, image_msg):
        msg = Twist2DStamped()
        msg.v = 0.5
        msg.omega = calc_angle(img_to_cv2(image_msg))
        self.pub_cmd.publish(msg)

if __name__ == '__main__': 
    rospy.init_node('demo',anonymous=False)
    demo_node = DemoNode()
    rospy.spin()
