use <cap_1x1.scad>
use <sym_resistor_potentiometer.scad>
include <settings.scad>

module cap_1x1_resistor_potentiometer(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 0);
        translate([0,width/2,-0.01])resistor_potentiometer(width, width/5, 4, glyph_thickness, glyph_depth);
    }
}

cap_1x1_resistor_potentiometer(cap_width, cap_height, cap_thickness);
