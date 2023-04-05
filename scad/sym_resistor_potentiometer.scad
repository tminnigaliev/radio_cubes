use <sym_arrow.scad>
include <settings.scad>

module resistor_potentiometer(length, width, thickness, height)
{
    //left wire
    translate([0,-thickness/2,0])cube([length/2-width, thickness, height]);
    
    //right wire
    translate([length/2+width,-thickness/2,0])cube([length/2-width, thickness, height]);
    
    //left vertical bar
    translate([length/2-width,-width/2, 0])cube([thickness, width, height]);
    
    //right vertical bar
    translate([length/2+width,-width/2,0])cube([thickness, width, height]);
    
    //bottom horizontal bar
    translate([length/2-width,-width/2, 0])cube([2*width, thickness, height]);
    
    //top horizontal bar
    translate([length/2-width, width/2-thickness, 0])cube([2*width, thickness, height]);
    
    translate([length/2,width/2,0]) rotate([0,0,90])arrow(glyph_thickness, length/2, glyph_thickness*4, glyph_height);
}

resistor(30, 8, glyph_thickness, glyph_height);