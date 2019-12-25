#!/usr/bin/env python3

import sys
print(sys.path)
#sys.path.remove('/opt/ros/kinetic/lib/python2.7/dist-packages')

import time
import sys
import argparse
import math
import numpy as np
import gym
from PIL import Image
import io
from gym_duckietown.envs import DuckietownEnv
from gym_duckietown.simulator import Simulator
from rosagent import ROSAgent


def jpg2rgb(image_data):
    print(image_data)
    im = Image.open(io.BytesIO(image_data[10:]))
    im = im.convert('RGB')
    data = np.array(im) 
    assert data.ndim == 3
    assert data.dtype == np.uint8
    return data


agent = ROSAgent()


parser = argparse.ArgumentParser()
parser.add_argument('--env-name', default='Duckietown-udem1-v0')
parser.add_argument('--map-name', default='udem1')
parser.add_argument('--distortion', default=False, action='store_true')
parser.add_argument('--draw-curve', action='store_true', help='draw the lane following curve')
parser.add_argument('--draw-bbox', action='store_true', help='draw collision detection bounding boxes')
parser.add_argument('--domain-rand', action='store_true', help='enable domain randomization')
parser.add_argument('--frame-skip', default=1, type=int, help='number of frames to skip')
parser.add_argument('--seed', default=1, type=int, help='seed')
args = parser.parse_args()

if args.env_name and args.env_name.find('Duckietown') != -1:
    env = DuckietownEnv(
        seed = None,
        map_name = args.map_name,
        draw_curve = args.draw_curve,
        draw_bbox = args.draw_bbox,
        domain_rand = False,
        user_tile_start = (3,1),
        randomize_maps_on_reset = False,
        accept_start_angle_deg = 5,
        frame_skip = args.frame_skip,
        distortion = args.distortion,
        full_transparency = True
    )
else:
    env = gym.make(args.env_name)


obs = env.reset()
env.render()

total_reward = 0

while True:
    action = agent.action

    obs, reward, done, info = env.step(action)
    total_reward += reward

    agent._publish_img(obs)

    env.render()

    if done:
        if reward < 0:
            print('*** CRASHED ***')
        print ('Final Reward = %.3f' % total_reward)
        break
        env.reset()
        env.render()

