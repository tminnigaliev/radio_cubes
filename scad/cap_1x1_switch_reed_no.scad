use <cap_1x1.scad>
use <sym_switch_reed_no.scad>
include <settings.scad>

// no = normally open
module cap_1x1_switch_reed_no(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 3);
        translate([0,width/2,-0.01]) switch_reed_no(width, width/3, glyph_thickness, glyph_depth);
    }
}

cap_1x1_switch_reed_no(cap_width, cap_height, cap_thickness);
