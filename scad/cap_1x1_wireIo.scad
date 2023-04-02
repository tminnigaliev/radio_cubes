use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireIo(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width/2, glyph_thickness, glyph_depth]);
        translate([width/2,width/2,-0.01])cylinder(r=7/2, h=1.5*thickness, $fn=120);
    }
}

cap_1x1_wireIo(cap_width, cap_height, cap_thickness);
