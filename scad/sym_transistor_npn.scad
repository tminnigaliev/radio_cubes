use <sym_ring.scad>
use <sym_arrow.scad>
use <sym_ring.scad>

module transistor_npn(diameter, thickness, height)
{
    //ring(0.5*diameter, thickness, height);
    
    //base
    translate([-diameter/4, -diameter/4, 0]) cube([thickness, diameter/2, height]);
    
    //emitter
    translate([1.6*diameter/8, -diameter/2.5, 0])rotate([0,0,150])arrow(thickness, 4*diameter/8, 3*thickness, height);
    
    //collector
    translate([2*diameter/8, diameter/2.3, 0])rotate([0,0,-150])arrow(thickness, 4.3*diameter/8, 0, height);
    
    //base wire
    translate([-2*diameter/3, 0,0])arrow(thickness, diameter/2.22, 0, height);
    
    //emitter wire 
    translate([3*diameter/16,-3*diameter/4-thickness,0])cube([thickness, 1.17*diameter/3, height]);
    
    //collector wire
    translate([3*diameter/16, 1.3*diameter/4+1.5*thickness,0])cube([thickness, 1.3*diameter/3, height]);
}

transistor_npn(30, 1.5, 0.7);