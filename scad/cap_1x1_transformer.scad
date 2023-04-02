use <cap_1x1.scad>
use <sym_transformer_1_1.scad>
include <settings.scad>

module cap_1x1_transformer(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        union()
        {
            translate([width/2+glyph_thickness, width/5, -0.01]) rotate([0,0,45])transformer_1_1(width/2.1, glyph_thickness, glyph_depth);
            translate([width/2-glyph_thickness/2, 0, -0.01]) cube([glyph_thickness, width/5, glyph_depth]);
            translate([width/2-glyph_thickness/2, 4*width/5+glyph_thickness, -0.01]) cube([glyph_thickness, width/5, glyph_depth]);
            translate([0, width/2-glyph_thickness/2, -0.01]) cube([width/5, glyph_thickness, glyph_depth]);
            translate([4*width/5+glyph_thickness, width/2-glyph_thickness/2, -0.01]) cube([width/5, glyph_thickness, glyph_depth]);
            
            translate([width/2,width/5,-0.01])rotate([0,0,-45])cube([glyph_thickness, width/8, glyph_depth]);
            translate([width/5-1,width/2+0.5,-0.01])rotate([0,0,-45])cube([glyph_thickness, width/8, glyph_depth]);
            translate([width/2-3,4*width/5-1,-0.01])rotate([0,0,-45])cube([glyph_thickness, width/8, glyph_depth]);
            translate([3.8*width/5,0.9*width/2,-0.01])rotate([0,0,-45])cube([glyph_thickness, width/8, glyph_depth]);
        }
    }
}

cap_1x1_transformer(cap_width, cap_height, cap_thickness);
