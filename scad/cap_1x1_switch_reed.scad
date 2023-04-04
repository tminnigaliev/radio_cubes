use <cap_1x1.scad>
use <sym_switch_reed.scad>
include <settings.scad>

module cap_1x1_switch_reed(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 3);
        translate([0,width/2,-0.01]) switch_reed(width, width/3, glyph_thickness, glyph_depth);
    }
}

cap_1x1_switch_reed(cap_width, cap_height, cap_thickness);
