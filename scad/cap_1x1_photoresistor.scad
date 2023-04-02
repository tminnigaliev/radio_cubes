use <cap_1x1.scad>
use <sym_resistor.scad>
use <sym_arrow.scad>
include <settings.scad>

module cap_1x1_photoresistor(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([0,width/2,-0.01])cube([2.5*width/12, glyph_thickness, glyph_depth]);
        translate([2.3*width/12,4*width/12,-0.01]) cube([glyph_thickness,2*width/12+glyph_thickness,glyph_depth]);
        translate([2.3*width/12, 4*width/12,-0.01])resistor(7*width/12, width/6, glyph_thickness, glyph_depth);
        translate([8.9*width/12,4*width/12,-0.01]) cube([glyph_thickness,2*width/12+glyph_thickness,glyph_depth]);
        translate([9*width/12,width/2,-0.01])cube([2.5*width/12, glyph_thickness, glyph_depth]);
        
        translate([width/3,width/6,-0.01])rotate([0,0,-135]) arrow(glyph_thickness, width/6, 2.5, glyph_depth);
        translate([2.8*width/6,width/6,-0.01])rotate([0,0,-135]) arrow(glyph_thickness, width/6, 2.5, glyph_depth);
        
        translate([width/2,7*width/12,-0.1])cylinder(r=3.5, h=thickness, $fn=120);
    }
    
    
}

cap_1x1_photoresistor(cap_width, cap_height, cap_thickness);
