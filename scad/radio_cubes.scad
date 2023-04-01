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
        translate([width/2,width/2,0])rotate([0,0,45])translate([-width1/2,-width1/2,thickness*3/4]) cube([width1,width1,height]);
    }
}

module radio_cube_1x1(width, height, thickness)
{
    difference()
    {
        cube([width,width,height]);
        union()
        {
            translate([thickness,thickness,thickness+1.2]) cube([width-2*thickness,width-2*thickness,height+10]);
            
            //-y
            translate([width/2,2.0,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,thickness+1,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            
            // y
            translate([width/2,width+0.6,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,width-thickness,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            
            //-x
            translate([2.0,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([thickness+1,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);
            
            // x
            translate([width+0.6,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([width-thickness,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);

            //bottom
            translate([width/2,width/2,-0.1]) cylinder(r=15.3/2, h=3.6);
            
            //cutouts
            // -y
            translate([width/2-4,-0.2,5.8])cube([8,20,15]);
            // y
            translate([width/2-4, width-10,5.8])cube([8,20,15]);
            // -x
            translate([-0.2,width/2-4,5.8])cube([20,8,15]);
            // x
            translate([width-10,width/2-4,5.8])cube([20,8,15]);
            // bottom
            translate([width/2-2.25,width/2-4,0])cube([4.5,8,15]);
            
            //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width, -width, -0.5*height]) cube([2*width, width, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width, -0.5*width, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([width-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([0,width-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width, 0, -0.5*height]) cube([2*width, width, 2*height]);
        }
    }
}

module radio_cube_2x2(width, height, thickness)
{
    width2 = width;
    width = 2*width + 1;
    difference()
    {
        cube([width,width,height]);
        union()
        {
            translate([thickness,thickness,thickness+1.2]) cube([width-2*thickness,width-2*thickness,height+10]);
            
            //-y
            translate([width2/2,2.0,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width2/2,thickness+1,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            
            // y
            translate([width/2,width+0.6,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,width-thickness,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            
            //-x
            translate([2.0,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([thickness+1,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);
            
            // x
            translate([width+0.6,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([width-thickness,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);

            //bottom
            translate([width/2,width/2,-0.1]) cylinder(r=15.3/2, h=3.6);
            
            //cutouts
            // -y
            translate([width2/2-4,-0.2,5.8])cube([8,20,15]);
            // y
            translate([width/2-4, width-10,5.8])cube([8,20,15]);
            // -x
            translate([-0.2,width/2-4,5.8])cube([20,8,15]);
            // x
            translate([width-10,width/2-4,5.8])cube([20,8,15]);
            // bottom
            translate([width/2-2.25,width/2-4,0])cube([4.5,8,15]);
            
            //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width, -width, -0.5*height]) cube([2*width, width, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width, -0.5*width, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([width-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([0,width-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width, 0, -0.5*height]) cube([2*width, width, 2*height]);
        }
    }
}

//radio_cube_1x1(35,18,3.3);
radio_cube_2x2(35,18,3.3);
//cap_1x1(30,6,3.3);

