use <cap_1x1.scad>
use <sym_transformer_1_1.scad>
include <settings.scad>

module cap_1x1_transformer(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness,15);
        union()
        {
            translate([width/2+glyph_thickness, width/5, -0.01]) rotate([0,0,45])transformer_1_1(width/2.1, glyph_thickness, glyph_depth);
            
            //#upper vertical line
            translate([width/2-glyph_thickness/2, 0, -0.01]) cube([glyph_thickness, width/5-0.5, glyph_depth]);
            
            //#bottom vertical line
            translate([width/2+glyph_thickness/2, width, -0.01]) rotate([0,0,180])cube([glyph_thickness, width/6+0.5, glyph_depth]);
            
            //#left horizontal line
            translate([0, width/2-glyph_thickness/2, -0.01]) cube([width/6, glyph_thickness, glyph_depth]);
            
            //right horizontal line
            translate([width, width/2+glyph_thickness/2, -0.01]) rotate([0,0,180])cube([width/6, glyph_thickness, glyph_depth]);
    
            //#upper skew-line        
            translate([10*width/16,4*width/16+0.3,-0.01])rotate([0,0, 135])cube([glyph_thickness, width/8+1, glyph_depth]);
            
            //#left skew line
            translate([width/4+1.2,width/2+2.8,-0.01])rotate([0,0,135])cube([glyph_thickness, width/6, glyph_depth]);
            
            //#bottom skew line        
            translate([width/2-3,4*width/5-1,-0.01])rotate([0,0,-45])cube([glyph_thickness, width/8, glyph_depth]);
            
            //right skew line        
            translate([3.75*width/5,0.9*width/2,-0.01])rotate([0,0,-45])cube([glyph_thickness, width/9, glyph_depth]);
        }
    }
}

cap_1x1_transformer(cap_width, cap_height, cap_thickness);
