use <cap_1x1.scad>
use <sym_ground.scad>
include <settings.scad>

module cap_1x1_ground(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,width/2,-0.01]) ground(width, width/4, glyph_thickness, glyph_depth);
    }
}

cap_1x1_ground(cap_width, cap_height, cap_thickness);
