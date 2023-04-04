use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireIo(width, height, thickness)
{
    difference()
    {
        union()
        {
            cap_1x1(width, height, thickness, 0);
            translate([width/2,width/2,0]) cylinder(r=(spring_contact_hole_r+2), h=thickness*1.5);
        }
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width/2, glyph_thickness, glyph_depth]);
        translate([width/2,width/2,-0.01])cylinder(r1=spring_contact_hole_r+0.1, r2=spring_contact_hole_r-0.3, h=2*thickness, $fn=120);
    }
}

cap_1x1_wireIo(cap_width, cap_height, cap_thickness);
