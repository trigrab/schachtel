include <schachtel_config.scad>;

module groove_inlay(length=1) {
        cube([thickness + margin,length, thickness + margin]);
}

module groove_cover(length=1, height=1) {
        cube([height, length, thickness + margin]);
}

groove_cover_height = height - cover_groove -thickness;

module grooves(){
    translate([groove_height, 0, 0])
    groove_inlay(y_inner);

    
    translate([groove_height, length + .5*thickness, 0])
    groove_inlay(y_inner);

    
    translate([groove_height, 2*(length + .5*thickness), 0])
    groove_inlay(x_inner);

    
    translate([groove_height, 2*(length + .5*thickness) + width + .5*thickness, 0])
    groove_inlay(x_inner);

}

module cover_grooves() {
    translate([groove_cover_height, 0, 0])
    groove_cover(y_inner, cover_groove);
    
    translate([groove_cover_height, length + .5*thickness, 0])
    groove_cover(y_inner, cover_groove);
    
    translate([groove_cover_height, 2*(length + .5*thickness), 0])
    groove_cover(x_inner, cover_groove);
    
    translate([groove_cover_height, 2*(length + .5*thickness) + width + .5*thickness, 0])
    groove_cover(x_inner, cover_groove);
}

translate([0, -0.5*thickness,0]) {
projection(cut=false)
grooves();
projection(cut=false)
cover_grooves();
}
