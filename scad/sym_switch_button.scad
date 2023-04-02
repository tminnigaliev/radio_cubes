use <sym_switch>

module button(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([length/2-width/2, thickness, height]);
    translate([(length/2+width/2),-thickness/2,0])cube([(length/2-width/2), thickness, height]);
    
    translate([(length/2-width/2),+thickness/2, 0])rotate([0,0,-60])cube([thickness, width, height]);
    
    translate([3*length/8+thickness,width/3,0]) cube([thickness, width/2, height]);
    translate([4*length/8,width/2,0]) cube([thickness, width/3, height]);

    translate([3.5*length/8,2.3*width/3,0]) rotate([0,0,55])cube([thickness, width/3, height]);
    translate([3.8*length/8,2.25*width/3+thickness,0]) rotate([0,0,-55])cube([thickness, width/3, height]);

    translate([2.65*length/8, width,0]) cube([width/1.5, thickness, height]);
    translate([2.65*length/8, width+2*thickness,0]) cube([width/1.5, thickness, height]);
    
}

button(30, 12, 1, 1);