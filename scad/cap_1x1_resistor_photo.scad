use <cap_1x1.scad>
use <sym_resistor.scad>
use <sym_arrow.scad>
include <settings.scad>

module cap_1x1_photoresistor(width, height, thickness)
{
    difference()
    {
        union()
        {
            cap_1x1(width, height, thickness, 3);
            translate([width/2,7*width/12,0]) cylinder(r=5, h=1.7*thickness);
        }
        
        //horizontal left wire    
        translate([0,width/2-glyph_thickness/2,-0.01])cube([2.5*width/12, glyph_thickness, glyph_depth]);
    
        // vertical left wire    
        translate([2.3*width/12,4*width/12-0.7,-0.01]) cube([glyph_thickness,2*width/12+glyph_thickness,glyph_depth]);
        
        //resistor
        translate([2.3*width/12, 4*width/12,-0.01])resistor(7*width/12, width/6, glyph_thickness, glyph_depth);
        
        //vertical right wire
        translate([8.9*width/12,4*width/12-0.7,-0.01]) cube([glyph_thickness,2*width/12+glyph_thickness,glyph_depth]);
        
        //horizontal right wire    
        translate([9*width/12,width/2-glyph_thickness/2,-0.01])cube([2.5*width/12, glyph_thickness, glyph_depth]);
        
        //left arrow
        translate([width/3-2,width/5,-0.01])rotate([0,0,-135]) arrow(glyph_thickness, width/3, 4, glyph_depth);
        
        //right arrow
        translate([2.8*width/6,width/5,-0.01])rotate([0,0,-135]) arrow(glyph_thickness, width/3, 4, glyph_depth);
    
        //photoresistor light hole    
        translate([width/2,7*width/12,-0.1])cylinder(r=3.1, h=2*thickness, $fn=120);
    }
    
    
}

cap_1x1_photoresistor(cap_width, cap_height, cap_thickness);
