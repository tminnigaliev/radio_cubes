use <sym_plus.scad>

module capacitor_polar(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([length/2-width/4, thickness, height]);
    translate([(length/2+width/4),-thickness/2,0])cube([(length/2-width/4), thickness, height]);
    
    translate([(length-width/2)/2,-width/2, 0])cube([thickness, width, height]);
    translate([(length-thickness)/2,-width/2, 0])cube([thickness, width, height]);
    
    translate([(length-width/2)/2,width/2-thickness,0]) cube([width/4-thickness/2,thickness,height]);
    translate([(length-width/2)/2,-width/2,0]) cube([width/4-thickness/2,thickness,height]);
    
    translate([length/2-width/2, 2*width/4,0]) plus(width/4, thickness, height);
    
    translate([(length+width/2)/2,-width/2, 0])cube([thickness, width, height]);
}

capacitor_polar(30, 12, 1, 1);