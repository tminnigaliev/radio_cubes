include <settings.scad>

module radio_cube_2x2(width, height, thickness)
{
    //width2 = width;
    width2 = 2*width + 1;
    difference()
    {
        cube([width2,width2,height]);
        union()
        {
            translate([thickness,thickness,thickness+1.2]) cube([width2-2*thickness,width2-2*thickness,height+10]);
            
            //-y
            translate([width/2,2.0,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,thickness+1,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            translate([width/2-4,-0.2,5.8])cube([8,20,15]);

            translate([3*width/2+1,2.0,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([3*width/2+1,thickness+1,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            translate([3*width/2-3,-0.2,5.8])cube([8,20,15]);
            
            // y
            translate([width/2,width2+0.6,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,width2-thickness,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            translate([width/2-4, width2-10,5.8])cube([8,20,15]);

            translate([3*width/2+1,width2+0.6,8])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([3*width/2+1,width2-thickness,8])rotate([90,0,0])cylinder(r=14.5/2, h=1);
            translate([3*width/2-3, width2-10,5.8])cube([8,20,15]);
            
            //-x
            translate([2.0,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([thickness+1,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);
            translate([-0.2,width/2-4,5.8])cube([20,8,15]);
            translate([2.0,3*width/2+1,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([thickness+1,3*width/2+1,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);
            translate([-0.2,3*width/2-3,5.8])cube([20,8,15]);
            
            // x
            translate([width2+0.6,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([width2-thickness,width/2,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);
            translate([width2-10,width/2-4,5.8])cube([20,8,15]);

            translate([width2+0.6,3*width/2+1,8])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([width2-thickness,3*width/2+1,8])rotate([0,-90,0])cylinder(r=14.5/2, h=1);
            translate([width2-10,3*width/2-3,5.8])cube([20,8,15]);

            //bottom
            translate([width/2,width/2,-0.1]) cylinder(r=15.3/2, h=3.6);        
            translate([width/2-2.25,width/2-4,0])cube([4.5,8,15]);
            translate([3*width/2+1,width/2,-0.1]) cylinder(r=15.3/2, h=3.6);        
            translate([3*width/2-2.25+1,width/2-4,0])cube([4.5,8,15]);

            translate([width/2,3*width/2+1,-0.1]) cylinder(r=15.3/2, h=3.6);        
            translate([width/2-2.25,3*width/2-4+1,0])cube([4.5,8,15]);
            translate([3*width/2+1,3*width/2+1,-0.1]) cylinder(r=15.3/2, h=3.6);        
            translate([3*width/2-2.25+1,3*width/2-4+1,0])cube([4.5,8,15]);

            
            //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width2, -width2, -0.5*height]) cube([2*width2, width2, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width2, -0.5*width2, -0.5*height]) cube([width2, 2*width2, 2*height]);
            translate([width2-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width2, 2*width2, 2*height]);
            translate([0,width2-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width2, 0, -0.5*height]) cube([2*width2, width2, 2*height]);
        }
    }
}

radio_cube_2x2(cube_width, cube_height, cube_thickness);

