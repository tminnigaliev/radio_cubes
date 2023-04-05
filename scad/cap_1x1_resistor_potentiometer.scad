use <cap_1x1.scad>
use <sym_resistor_potentiometer.scad>
include <settings.scad>

module cap_1x1_resistor_potentiometer(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 7);
        translate([width/6,6*width/9-1,-0.01])resistor_potentiometer(2*width/3, width/6, glyph_thickness, glyph_depth);
    }
}

cap_1x1_resistor_potentiometer(cap_width, cap_height, cap_thickness);
