use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireIooI(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width/4, glyph_thickness, glyph_depth]);

        
        translate([width/4-glyph_thickness,width/4,-0.01]) cube([glyph_thickness, width/4, glyph_depth]);

        translate([width/4,width/4,-0.01])cylinder(r=7.5/2, h=height*1.1, $fn=120);

        translate([3*width/4,width/2,-0.01]) cube([width/4, glyph_thickness, glyph_depth]);

        translate([3*width/4-glyph_thickness/2,width/2,-0.01]) cube([glyph_thickness, width/4, glyph_depth]);
        
        translate([3*width/4,3*width/4,-0.01])cylinder(r=7.5/2, h=1.5*height, $fn=120);
    }
}

cap_1x1_wireIooI(cap_width, cap_height, cap_thickness);
