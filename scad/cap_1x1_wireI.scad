use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireI(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width, glyph_thickness, glyph_depth]);
    }
}

cap_1x1_wireI(cap_width, cap_height, cap_thickness);
