
// wood thickness
thickness = 6.0;

// einlage
bottle_diameter=61;
bottle_margin=0.8;
bottle_grid=[3,2];
frame_margin=4;

function get_size(bottle_diameter, frame_margin, bottle_grid) = [
    bottle_grid[0] * (bottle_diameter + frame_margin) + frame_margin,
    bottle_grid[1] * (bottle_diameter + frame_margin) + frame_margin];

size = get_size(bottle_diameter, frame_margin, bottle_grid);

// box size
z_inner = 135.6; // height
y_inner = size[1];
x_inner = size[0];

// finger_joints size factor
span_finger_joints= 17.5;

groove_height = 150;

margin = 0.4;

