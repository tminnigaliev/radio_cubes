use <cap_1x1.scad>
use <sym_switch_button.scad>
include <settings.scad>

module cap_1x1_switch_button(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,width/2,-0.01]) button(width, width/3, glyph_thickness, glyph_depth);
    }
}

cap_1x1_switch_button(cap_width, cap_height, cap_thickness);
