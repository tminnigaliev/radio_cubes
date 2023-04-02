use <cap_1x1.scad>
use <sym_diode_led.scad>
include <settings.scad>

module cap_1x1_diode_led(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness);
        translate([thickness/2,width/2,-0.01]) diode_led(7*width/8, width/3, glyph_thickness, glyph_depth);
        translate([6*width/8,6*width/8,-0.1])cylinder(r=2.7, h=cap_height+1, $fn=180);
    }
}

cap_1x1_diode_led(cap_width, cap_height, cap_thickness);
