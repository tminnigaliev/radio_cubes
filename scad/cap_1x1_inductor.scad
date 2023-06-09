use <cap_1x1.scad>
use <sym_inductor.scad>
include <settings.scad>

module cap_1x1_inductor(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 0);
        union()
        {
            translate([-width*0.15,width/2,-0.01]) rotate([0,0,-90]) 
            sym_inductor(width*1.3, glyph_depth, glyph_thickness, 0);
            //translate([width/6+glyph_thickness/2,width/2+glyph_thickness/2,-0.01])rotate([0,0,180])cube([width/6,glyph_thickness,glyph_depth]);
            //translate([5*width/6-glyph_thickness/2,(width-glyph_thickness)/2,-0.01])cube([width/5,glyph_thickness,glyph_depth]);
        }
    }
}

cap_1x1_inductor(cap_width, cap_height, cap_thickness);
