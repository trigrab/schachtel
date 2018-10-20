include <schachtel_config.scad>;

module groove(length=1) {
        cube([thickness + margin,length, thickness + margin]);

}

module grooves(){
    translate([groove_height, 0, 0])
    groove(y_inner - thickness);
    
    translate([groove_height, y_inner + 1.5*thickness, 3.4])
    groove(y_inner - thickness);
    
    translate([groove_height, 2*(y_inner + 1.5*thickness), 0])
    groove(z_inner - thickness);
    
    translate([groove_height, 2*(y_inner + 1.5*thickness) + z_inner + 1.5*thickness, 0])
    groove(z_inner - thickness);
}

projection(cut=false)
grooves();

