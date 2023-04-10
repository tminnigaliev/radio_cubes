use <sym_plus.scad>

module capacitor_polar(length, width, thickness, height)
{
    //left wire
    translate([0,-thickness/2,0])cube([length/2-width/4, thickness, height]);
    translate([(length/2+width/4),-thickness/2,0])cube([(length/2-width/4), thickness, height]);
    
    //left vertical
    translate([(length-width/2)/2,-width/2, 0])cube([thickness, width, height]);
    
    //middle vertical
    translate([(length)/2,-width/2, 0])cube([thickness, width, height]);
    
    //bottom horizontal
    translate([(length-width/2)/2,width/2-thickness,0]) cube([width/4,thickness,height]);
    
    //top horizontal
    translate([(length-width/2)/2,-width/2,0]) cube([width/4,thickness,height]);
    
    //+
    translate([length/2-2*width/3-thickness, 2*width/4,0]) plus(width/1.7, thickness, height);
    
    //right vertical
    translate([(length+width/2)/2,-width/2, 0])cube([thickness, width, height]);
}

capacitor_polar(30, 12, 1, 1);