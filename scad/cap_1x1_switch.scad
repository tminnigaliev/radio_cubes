use <cap_1x1.scad>
use <sym_switch.scad>
include <settings.scad>

module cap_1x1_switch(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,width/2,-0.01]) switch(width, width/3, glyph_thickness, glyph_depth);
    }
}

cap_1x1_switch(cap_width, cap_height, cap_thickness);
