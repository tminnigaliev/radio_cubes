use <cap_1x1.scad>
use <sym_resistor.scad>
use <sym_arrow.scad>
include <settings.scad>

module cap_1x1_resistor_photo(width, height, thickness)
{
    hole_disp = 8.7*width/12;
    difference()
    {
        union()
        {
            cap_1x1(width, height, thickness, 0); //3
            translate([width/2,hole_disp,0]) cylinder(r=5, h=1.7*thickness);
        }
        
        //horizontal left wire    
        translate([0,width/2-glyph_thickness/2,-0.01])cube([3*width/24, glyph_thickness, glyph_depth]);
    
        // vertical left wire    
        translate([3*width/24-glyph_thickness,11*width/24-glyph_thickness/2,-0.01]) cube([glyph_thickness,1*width/24+glyph_thickness,glyph_depth]);
        
        //resistor
        translate([1.4*width/12, 11*width/24,-0.01])resistor(9*width/12, width/4, glyph_thickness, glyph_depth);
        
        //vertical right wire
        translate([10.4*width/12,11*width/24-glyph_thickness/2,-0.01]) cube([glyph_thickness,1*width/24+glyph_thickness,glyph_depth]);
        
        //horizontal right wire    
        translate([10.4*width/12,width/2-glyph_thickness/2,-0.01])cube([2.5*width/12, glyph_thickness, glyph_depth]);
        
        //left arrow
        translate([width/3-2,width/4,-0.01])rotate([0,0,-135]) arrow(glyph_thickness, width/3, 4, glyph_depth);
        
        //right arrow
        translate([2.8*width/6,width/4,-0.01])rotate([0,0,-135]) arrow(glyph_thickness, width/3, 4, glyph_depth);
    
        //photoresistor light hole    
        translate([width/2, hole_disp, -0.1])cylinder(r=3.1, h=2*thickness, $fn=120);
    }
    
    
}

cap_1x1_resistor_photo(cap_width, cap_height, cap_thickness);
