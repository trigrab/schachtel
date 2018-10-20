include <schachtel_config.scad>;

module bottle_holes_shifted(thickness, bottle_diameter, frame_margin, bottle_grid) {
    for (x=[1:bottle_grid[0]], y=[1:bottle_grid[1]]) {
        translate([(bottle_diameter + frame_margin)*x,
                  (bottle_diameter + frame_margin)*y, 0]){
            cylinder(d=bottle_diameter, h=thickness);
        }
    }
}

module bottle_holes(thickness, bottle_diameter, bottle_grid, frame_margin) {
    thickness = thickness + 0.2;
    shift = bottle_diameter*-0.5;
    translate([shift, shift, -0.1]){
        bottle_holes_shifted(thickness=thickness, 
                             bottle_diameter=bottle_diameter,
                             bottle_grid=bottle_grid,
                             frame_margin=frame_margin);
    }
}

module schachtel_einlage(thickness=1, 
                           bottle_diameter=61, bottle_margin=0.8,
                           bottle_grid=[3,2], frame_margin=4) {
    bottle_diameter = bottle_diameter + bottle_margin;
        
    size = get_size(bottle_diameter, frame_margin, bottle_grid);

    echo("module is of size (", size[0], ", ", size[1], ")mm");
    difference() {
        cube(size=[size[0], size[1], thickness], center = false);
        bottle_holes(thickness=thickness,
                     bottle_diameter=bottle_diameter,
                     bottle_grid=bottle_grid,
                     frame_margin=frame_margin);
    }
}

projection(cut=false)
translate([0,size[0]*2+size[1]*3+5*0.5*thickness,0])
schachtel_einlage(thickness=thickness, 
                  bottle_diameter=bottle_diameter, bottle_margin=bottle_margin,
                  bottle_grid=bottle_grid, frame_margin=frame_margin);