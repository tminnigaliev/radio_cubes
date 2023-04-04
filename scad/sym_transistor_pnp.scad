use <sym_ring.scad>
use <sym_arrow.scad>
use <sym_ring.scad>

module transistor_pnp(diameter, thickness, height)
{
    //ring(0.5*diameter, thickness, height);
    
    //base
    translate([-diameter/4, -diameter/4, 0]) cube([thickness, diameter/2, height]);
    
    //emitter
    translate([-diameter/4+thickness, -diameter/6, 0])rotate([0,0,-30])arrow(thickness, diameter/2, 3*thickness, height);
    
    //collector
    //translate([1.6*diameter/8, diameter/2.5, 0])rotate([0,0,-150])arrow(thickness, 4*diameter/8, 0, height);
    translate([-diameter/4+thickness/4, diameter/6, 0])rotate([0,0, 30])arrow(thickness, 4*diameter/8, 0, height);
    
    //base wire
    translate([-diameter/4+thickness, 0,0]) rotate([0,0,180])arrow(thickness, diameter/3, 0, height);
    
    //emitter wire
    translate([diameter/4,-diameter/2+2*thickness,0])rotate([0,0,180])cube([thickness, diameter/3, height]);
    
    // collector wire
    translate([3*diameter/16, 1.5*diameter/4+thickness])cube([thickness, diameter/3, height]);
}

transistor_pnp(30, 1.5, 0.7);