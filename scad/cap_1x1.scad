module cap_1x1(width, height, thickness)
{
    width1=width-thickness;
    difference()
    {
        union()
        {
            cube([width, width, thickness*3/4]);
            translate([thickness,thickness,0])cube([width-2*thickness, width-2*thickness, height]);
        }
        union()
        {
            translate([width/2,width/2,0])rotate([0,0,45])translate([-width1/2,-width1/2,thickness*3/4]) cube([width1,width1,height]);
                        //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width, -width, -0.5*height]) cube([2*width, width, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width, -0.5*width, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([width-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([0,width-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width, 0, -0.5*height]) cube([2*width, width, 2*height]);
        }
    }
}

cap_1x1(30,6,3.3);
//ring(10,1,1);
//arrow(1, 20, 3, 1);
//transistor_npn(30, 1, 1);