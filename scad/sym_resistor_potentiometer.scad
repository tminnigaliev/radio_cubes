use <sym_arrow.scad>
include <settings.scad>

module wire(length, width, elevation, thickness, height)
{
    //left wire left
    translate([0,-thickness/2,0])cube([(length/2-width)/2, thickness, height]);
    
    //left vertical wire
    translate([(length/2-width)/2, -thickness/2, 0]) cube([thickness, elevation, height]);
    
    //left wire right
    translate([(length/2-width)/2,elevation-thickness/2,0])cube([(length/2-width)/2, thickness, height]);
}

module resistor_potentiometer(length, width, elevation, thickness, height)
{
    //left wire
    wire(length, width, elevation, thickness, height);
    
    //right wire
    translate([length, 0,0])mirror([1,0,0])wire(length, width, elevation, thickness, height);
  
    translate([0,elevation,0])
    {
        //left vertical bar
        translate([length/2-width,-width/2, 0])cube([thickness, width, height]);
    
        //right vertical bar
        translate([length/2+width-thickness,-width/2,0])cube([thickness, width, height]);
    
        //bottom horizontal bar
        translate([length/2-width,-width/2, 0])cube([2*width, thickness, height]);
    
        //top horizontal bar
        translate([length/2-width, width/2-thickness, 0])cube([2*width, thickness, height]);
    
        //arrow
        translate([length/2,width/2,0]) rotate([0,0,90])arrow(glyph_thickness, length/2, thickness*3.5, height);
    }
        
}

resistor_potentiometer(30, 8, 10, glyph_thickness, glyph_height);