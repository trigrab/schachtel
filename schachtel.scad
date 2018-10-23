include <lasercut/lasercut.scad>;
include <schachtel_config.scad>;$fn=60;

sides = 5;

x = height;
y = length;
z = width;
num_fingers = round(x/span_finger_joints);

color("Gold",0.75)
lasercutoutBox(thickness = thickness, x=x, y=y, z=z, 
    sides=sides, num_fingers=num_fingers);
