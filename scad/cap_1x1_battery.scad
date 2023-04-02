use <cap_1x1.scad>
use <sym_battery.scad>
include <settings.scad>

module cap_1x1_battery(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([thickness/2,width/2,-0.01]) battery(7*width/8, width/4, glyph_thickness, glyph_depth);
    }
}

cap_1x1_battery(cap_width, cap_height, cap_thickness);
