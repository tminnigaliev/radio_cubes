include <settings.scad>

module cap_2x2(width, height, thickness)
{
    width2 = 2*width + 1;
    width1=(width+thickness)*2;
    difference()
    {
        union()
        {
            cube([width2, width2, thickness*3/4]);
            translate([thickness,thickness,0])cube([width2-2*thickness, width2-2*thickness, height]);
        }
        union()
        {
            translate([width2/2,width2/2,0])rotate([0,0,45])translate([-width1/2,-width1/2,thickness*3/4]) cube([width1,width1,height]);
                        //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width2, -width2, -0.5*height]) cube([2*width2, width2, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width2, -0.5*width2, -0.5*height]) cube([width2, 2*width2, 2*height]);
            translate([width2-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width2, 2*width2, 2*height]);
            translate([0,width2-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width2, 0, -0.5*height]) cube([2*width2, width2, 2*height]);
        }
    }
}

cap_2x2(cap_width, cap_height, cap_thickness);