
// wood thickness
thickness = 6.0;

// einlage
bottle_height=240;
bottle_diameter=61;
bottle_margin=0.8;
bottle_grid=[3,2];
frame_margin=4;
cover_groove=16;
cover_margin=4;
inlay_height=100;
groove_height = inlay_height + thickness;

function get_size(bottle_diameter, frame_margin, bottle_grid) = [
    bottle_grid[0] * (bottle_diameter + frame_margin) + frame_margin,
    bottle_grid[1] * (bottle_diameter + frame_margin) + frame_margin];

size = get_size(bottle_diameter, frame_margin, bottle_grid);

// box size
z_inner = bottle_height + cover_margin + cover_groove; // height
y_inner = size[1];
x_inner = size[0];

height = z_inner + thickness;
length = y_inner + 1 * thickness + bottle_margin;
width = x_inner + 1 * thickness + bottle_margin;

// finger_joints size factor
span_finger_joints= 17.5;


margin = 0.4;

