module switch(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([length/2-width/2, thickness, height]);
    translate([(length/2+width/2),-thickness/2,0])cube([(length/2-width/2), thickness, height]);
    
    translate([(length/2-width/2),+thickness/2, 0])rotate([0,0,-60])cube([thickness, width, height]);
    
}

switch(30, 12, 1, 1);