include <settings.scad>

module cap_1x1(width, height, thickness, holes_mask)
{
    width1=width-thickness;
    difference()
    {
        union()
        {
            cube([width, width, thickness*3/4]);
            translate([thickness,thickness,0])cube([width-2*(thickness-0.025), width-2*(thickness+0.025), height]);
        }
        union()
        {
            translate([width/2,width/2,0])rotate([0,0,45])translate([-width1/2,-width1/2,thickness*3/4]) cube([width1,width1,height]);
                        //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width, -width, -0.5*height]) cube([2*width, width, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width, -0.5*width, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([width-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([0,width-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width, 0, -0.5*height]) cube([2*width, width, 2*height]);
            
            if (holes_mask >= 8)
            {
                translate([width/2, thickness-1.5, -0.5]) cylinder(r=1.15, h=height*1.5, $fn=80);
            }
            if ((holes_mask%8) >= 4)
            {
                translate([width/2, width-thickness+1.5, -0.5]) cylinder(r=1.15, h=height*1.5, $fn=80);
            }
            if ((holes_mask%4)>= 2)
            {
                translate([thickness-1.5, width/2, -0.5]) cylinder(r=1.15, h=height*1.5, $fn=80);
            }
            if (holes_mask%2 >= 1)
            {
                translate([width-thickness+1.5, width/2, -0.5]) cylinder(r=1.15, h=height*1.5, $fn=80);
            }
        }
    }
}

cap_1x1(cap_width, cap_height, cap_thickness, 9);
//ring(10,1,1);
//arrow(1, 20, 3, 1);
//transistor_npn(30, 1, 1);