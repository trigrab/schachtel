include <lasercut/lasercut.scad>;
include <schachtel_config.scad>;
$fn=60; 

x = x_inner + thickness; // thickness is only added once because of groove
y = y_inner + thickness; // same as above
z = z_inner + thickness; // thickness is only added one because there is no cover

num_fingers = x/span_finger_joints;

sides = 5;

difference() {
color("Gold",0.75)
lasercutoutBox(thickness = thickness, x=x, y=y, z=z, 
    sides=sides, num_fingers=num_fingers);
    translate([150, 0.5* thickness, 0.5*thickness]) {
        cube([thickness, y_inner, z_inner]);
    }
}
