use <cap_1x1.scad>
use <sym_capacitor_polar.scad>
include <settings.scad>

module cap_1x1_capacitor_polar(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 0); //3
        translate([0,width/2,-0.01]) capacitor_polar(width, width/3, glyph_thickness, glyph_depth);
    }
}

cap_1x1_capacitor_polar(cap_width, cap_height, cap_thickness);
