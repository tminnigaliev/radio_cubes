use <cap_1x1.scad>
use <sym_inductor.scad>
include <settings.scad>

module cap_1x1_wireP(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width/3, glyph_thickness, glyph_depth]);
        translate([2*width/3,(width-glyph_thickness)/2,-0.01]) cube([width/3, glyph_thickness, glyph_depth]);
        translate([(width-glyph_thickness)/2, 0, -0.01]) cube([glyph_thickness, width, glyph_depth]);
        
        translate([width/2,width/2, -0.01])arc_3d(width/6, [185,-5], glyph_thickness, glyph_depth, 60);
        //translate([width/2, width/2, -0.01]) cylinder(h=glyph_depth, r=1.5*glyph_thickness, $fn=120);
    }
}

cap_1x1_wireP(cap_width, cap_height, cap_thickness);
