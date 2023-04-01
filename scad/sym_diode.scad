module diode(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([(length-width*0.7)/2, thickness, height]);
    translate([(length+width*0.7)/2,-thickness/2,0])cube([(length-width*0.7)/2, thickness, height]);
    
    translate([(length-width)/2,-width/2, 0])cube([thickness, width, height]);
    translate([(length+width*0.7)/2,-width/2, 0])cube([thickness, width, height]);
    //translate([(length+width)/2,-thickness/2,0])cube([(length-width)/2, thickness, height]);
    translate([(length-width)/2,0,0])rotate([0,0,30])translate([0,-thickness/2,0])cube([width, thickness, height]);
    translate([(length-width)/2,0,0])rotate([0,0,-30])translate([0,-thickness/2,0])cube([width, thickness, height]);
}

diode(30, 12, 1, 1);