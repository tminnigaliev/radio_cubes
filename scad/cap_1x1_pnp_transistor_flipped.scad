use <cap_1x1.scad>
use <sym_transistor_pnp.scad>
include <settings.scad>

module cap_1x1_pnp_transistor_flipped(width, height, thickness)
{
    mirror([1,0,0])difference()
    {
        cap_1x1(width, height, thickness, 14);
        translate([3*width/8-1.7,width/2,-0.01]) mirror([0,1,0]) transistor_pnp(25, glyph_thickness, glyph_depth);
    }
}

cap_1x1_pnp_transistor_flipped(cap_width, cap_height, cap_thickness);
