use <cap_1x1.scad>
use <sym_switch.scad>
include <settings.scad>

module cap_1x1_switch(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 3);
        translate([0,width/2,-0.01]) switch(width, width/3, glyph_thickness, glyph_depth);
        translate([width/2,3*width/10, -0.01]) cylinder(r=3.2, h=height);
    }
}

//https://www.amazon.nl/-/en/gp/product/B07QLYVT4G/ref=ox_sc_act_image_1?smid=A1IVC609T2V6KT&psc=1

cap_1x1_switch(cap_width, cap_height, cap_thickness);
