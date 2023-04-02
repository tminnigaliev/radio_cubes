use <sym_plus.scad>

module battery(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([length/2-width/8, thickness, height]);
    translate([(length/2+width/8),-thickness/2,0])cube([(length/2-width/8), thickness, height]);
    
    translate([(length-width/4)/2,-width/2, 0])cube([thickness, width, height]);
    translate([(length+width/4)/2,-width/4, 0])cube([thickness, width/2, height]);

    
    translate([length/2-width/2, 2*width/4,0]) plus(width/4, thickness, height);
}

battery(30, 12, 1, 1);