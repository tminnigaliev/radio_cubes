use <sym_ring.scad>
use <sym_arrow.scad>
use <sym_ring.scad>

module transistor_pnp(diameter, thickness, height)
{
    //ring(0.5*diameter, thickness, height);
    //base
    translate([-1.7*diameter/4-thickness/2,-diameter/4,0])
        cube([thickness, diameter/2, height]);

    //emitter
    translate([0, -diameter/2.5, 0])rotate([0,0,150])arrow(thickness, -4*diameter/8, 3*thickness, height);

    //collector
    translate([0, diameter/2.5, 0])rotate([0,0,120])translate([-thickness/2,0,0])cube([thickness, 4*diameter/8, height]);

    //base wire
    translate([-41*diameter/48-thickness/2, 0,0])arrow(thickness, diameter/2.22, 0, height);

    //emitter wire 
    translate([-thickness/2,-3*diameter/4-thickness/2,0])cube([thickness, 1.17*diameter/3, height]);

    //collector wire
    translate([-thickness/2, 1.6*diameter/4,0])cube([thickness, 1.3*diameter/3, height]);
}

transistor_pnp(30, 1.5, 0.7);