use <cap_1x1.scad>
include <settings.scad>

module cap_1x1_wireIooI(width, height, thickness)
{
    hd = spring_contact_hole_r*2+1.7;
    cr1 = spring_contact_hole_r+0.1;
    cr2 = spring_contact_hole_r-0.3;
    difference()
    {
        union()
        {
            cap_1x1(width, height, thickness, 0);
            translate([width/4-hd/2,width/4-hd/2,0]) cube([hd,hd, height]);
            translate([3*width/4-hd/2,3*width/4-hd/2,0]) cube([hd, hd,height]);
        }
	    
        translate([0,(width-glyph_thickness)/2,-0.01]) cube([width/4, glyph_thickness, glyph_depth]);

        
        translate([width/4-glyph_thickness,width/4,-0.01]) cube([glyph_thickness, width/4, glyph_depth]);

        translate([width/4,width/4,-0.01])cylinder(r1=cr1, r2=cr2, h=height*1.1, $fn=120);

        translate([3*width/4,width/2,-0.01]) cube([width/4, glyph_thickness, glyph_depth]);

        translate([3*width/4-glyph_thickness/2,width/2,-0.01]) cube([glyph_thickness, width/4, glyph_depth]);
        
        translate([3*width/4,3*width/4,-0.01])cylinder(r1=cr1, r2=cr2, h=1.5*height, $fn=120);
    }
}

cap_1x1_wireIooI(cap_width, cap_height, cap_thickness);
