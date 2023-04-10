use <cap_2x1.scad>
include <settings.scad>

module wiring(width, height, thickness)
{
    translate([0,(width-glyph_thickness)/2,-0.01]) cube([width/2, glyph_thickness, glyph_depth]);
    translate([(width-glyph_thickness)/2, 0, -0.01]) cube([glyph_thickness, width/2, glyph_depth]);
    translate([width/2, width/2, -0.01]) cylinder(h=glyph_depth, r=1.5*glyph_thickness, $fn=120);
    translate([(3*width-glyph_thickness)/2, 3*width/4, -0.01]) cube([glyph_thickness, width/2, glyph_depth]);
    translate([(width-glyph_thickness)/2, width/2, -0.01]) rotate([0,0,-75])cube([glyph_thickness, 1.08*width, glyph_depth]);
}
    
module cap_2x1_wireYY(width, height, thickness)
{
    difference()
    {
        cap_2x1(width, height, thickness);
        union()
        {
            wiring(width, height, thickness);
            translate([2*width, 0,0]) mirror([1,0,0]) wiring(width, height, thickness);
        }
    }
}

cap_2x1_wireYY(cap_width, cap_height, cap_thickness);
