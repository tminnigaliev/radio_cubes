use <sym_diode.scad>
use <sym_arrow.scad>

module diode_led(length, width, thickness, height)
{
    diode(length, width, thickness, height);
    translate([width/4,-width*1.25, 0]) rotate([0,0,50]) arrow(thickness, 3*width/4, width/3, height);    
    translate([3*width/4,-width*1.25, 0]) rotate([0,0,50]) arrow(thickness, 3*width/4, width/3, height);
}

diode_led(30, 10, 1, 1);