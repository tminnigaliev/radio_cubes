use <cap_1x1.scad>
use <sym_resistor.scad>
include <settings.scad>

module cap_1x1_resistor(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 3);
        translate([0,width/2,-0.01])resistor(width, width/4, glyph_thickness, glyph_depth);
    }
}

cap_1x1_resistor(cap_width, cap_height, cap_thickness);
