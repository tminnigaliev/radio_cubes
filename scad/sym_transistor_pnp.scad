use <sym_ring.scad>
use <sym_arrow.scad>
use <sym_ring.scad>

module transistor_pnp(diameter, thickness, height)
{
    ring(0.5*diameter, thickness, height);
    translate([-diameter/4, -diameter/4, 0]) cube([thickness, diameter/2, height]);
    translate([-4*diameter/16, -diameter/5, 0])rotate([0,0,-30])arrow(thickness, 4*diameter/8, 3*thickness, height);
    translate([1.6*diameter/8, diameter/2.5, 0])rotate([0,0,-150])arrow(thickness, 4*diameter/8, 0, height);
    translate([-1.7*diameter/3, 0,0])arrow(thickness, diameter/3, 0, height);
    
    translate([3*diameter/16,-3*diameter/4-thickness,0])cube([thickness, diameter/3, height]);
    translate([3*diameter/16, 1.5*diameter/4+thickness*2,0])cube([thickness, diameter/3, height]);
}

transistor_pnp(30, 1, 1);