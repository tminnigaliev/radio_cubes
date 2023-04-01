use <cap_1x1.scad>
use <sym_transistor_pnp.scad>

module cap_1x1_pnp_transistor_flipped(width, height, thickness)
{
    mirror([1,0,0])difference()
    {
        cap_1x1(width, height, thickness);
        translate([3*width/8-0.5,width/2,-0.01]) mirror([0,1,0]) transistor_pnp(10*width/16, 1, 1);
    }
}

cap_1x1_pnp_transistor_flipped(30,6,3.3);