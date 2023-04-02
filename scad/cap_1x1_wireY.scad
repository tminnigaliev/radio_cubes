use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireY(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width, glyph_thickness, glyph_depth]);
        translate([(width-glyph_thickness)/2, 0, -0.01]) cube([glyph_thickness, width/2, glyph_depth]);
        translate([width/2, width/2, -0.01]) cylinder(h=glyph_depth, r=1.5*glyph_thickness, $fn=120);
    }
}

cap_1x1_wireY(cap_width, cap_height, cap_thickness);
