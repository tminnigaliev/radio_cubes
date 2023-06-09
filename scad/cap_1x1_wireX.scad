use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireX(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 0); //1
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width, glyph_thickness, glyph_depth]);
        translate([(width-glyph_thickness)/2, 0, -0.01]) cube([glyph_thickness, width, glyph_depth]);
    }
}

cap_1x1_wireX(cap_width, cap_height, cap_thickness);
