;; Auto-generated. Do not edit!


(when (boundp 'duckietown_msgs::DuckieSensor)
  (if (not (find-package "DUCKIETOWN_MSGS"))
    (make-package "DUCKIETOWN_MSGS"))
  (shadow 'DuckieSensor (find-package "DUCKIETOWN_MSGS")))
(unless (find-package "DUCKIETOWN_MSGS::DUCKIESENSOR")
  (make-package "DUCKIETOWN_MSGS::DUCKIESENSOR"))

(in-package "ROS")
;;//! \htmlinclude DuckieSensor.msg.html


(defclass duckietown_msgs::DuckieSensor
  :super ros::object
  :slots (_value _fvalue _is_analog _name ))

(defmethod duckietown_msgs::DuckieSensor
  (:init
   (&key
    ((:value __value) 0)
    ((:fvalue __fvalue) 0.0)
    ((:is_analog __is_analog) nil)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _fvalue (float __fvalue))
   (setq _is_analog __is_analog)
   (setq _name (string __name))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:fvalue
   (&optional __fvalue)
   (if __fvalue (setq _fvalue __fvalue)) _fvalue)
  (:is_analog
   (&optional __is_analog)
   (if __is_analog (setq _is_analog __is_analog)) _is_analog)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ;; float32 _fvalue
    4
    ;; bool _is_analog
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;; float32 _fvalue
       (sys::poke _fvalue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_analog
       (if _is_analog (write-byte -1 s) (write-byte 0 s))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _fvalue
     (setq _fvalue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_analog
     (setq _is_analog (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get duckietown_msgs::DuckieSensor :md5sum-) "3337f0684bf5f2b309fb6921917219f7")
(setf (get duckietown_msgs::DuckieSensor :datatype-) "duckietown_msgs/DuckieSensor")
(setf (get duckietown_msgs::DuckieSensor :definition-)
      "# Sensors send value and type messages
# For analog sensors value = 0..4097 and fvalue = 0.0..1.0
# For digital sensors value= 0..1 and fvalue = 0.0
uint16 value
float32 fvalue
bool is_analog
string name
")



(provide :duckietown_msgs/DuckieSensor "3337f0684bf5f2b309fb6921917219f7")


