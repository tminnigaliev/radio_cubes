include <settings.scad>

module cap_1x1(width, height, thickness, holes_mask)
{
    width1=width-thickness;
    shrink_teeth = 0.02;
    st = shrink_teeth;
    difference()
    {
        union()
        {
            cube([width, width, thickness*3/4]);
            translate([thickness+st,thickness+st,0])cube([width-2*(thickness+st-0.025), width-2*(thickness+st+0.025), height]);
        }
        union()
        {
            //translate([width/2,width/2,0])rotate([0,0,45])translate([-width1/2,-width1/2,thickness*3/4]) cube([width1,width1,height]);
            translate([width/4,0,thickness*3/4])cube([width/2,width,height]);
            translate([0,width/4,thickness*3/4])cube([width,width/2,height]);
            translate([width/4,width/4,width/6])rotate([90,0,45])translate([0,0,-height])cylinder(r=height/2, h=2*height, $fn=64);
            translate([3*width/4,3*width/4,width/6])rotate([90,0,45])translate([0,0,-height])cylinder(r=height/2, h=height*2, $fn=64);
            translate([width/4,3*width/4,width/6])rotate([90,0,-45])translate([0,0,-height])cylinder(r=height/2, h=2*height, $fn=64);
            translate([3*width/4,width/4,width/6])rotate([90,0,-45])translate([0,0,-height])cylinder(r=height/2, h=height*2, $fn=64);
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