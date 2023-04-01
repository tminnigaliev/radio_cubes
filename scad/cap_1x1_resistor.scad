use <cap_1x1.scad>
use <sym_resistor.scad>

module cap_1x1_resistor(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,width/2,-0.01])resistor(width, width/6, 1,0.3);
    }
}

cap_1x1_resistor(30,6,3.3);
