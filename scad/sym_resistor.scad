module resistor(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([length/2-width, thickness, height]);
    translate([length/2+width,-thickness/2,0])cube([length/2-width, thickness, height]);
    
    translate([length/2-width,-width/2, 0])cube([thickness, width, height]);
    translate([length/2+width,-width/2,0])cube([thickness, width, height]);
    translate([length/2-width,-width/2, 0])cube([2*width, thickness, height]);
    translate([length/2-width, width/2-thickness, 0])cube([2*width, thickness, height]);
}

resistor(30, 8, 1, 1);