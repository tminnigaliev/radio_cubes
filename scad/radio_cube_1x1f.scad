include <settings.scad>

module radio_cube_1x1f(width, height, thickness)
{
    h2 = height/2;
    difference()
    {
        cube([width,width,height]);
        union()
        {
            translate([thickness,thickness,-0.01]) cube([width-2*thickness,width-2*thickness,height+10]);
            
            //-y
            translate([width/2,2.0,h2-0.4])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,2.0,h2+0.4])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            
            // y
            translate([width/2,width+0.6,h2-0.4])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            translate([width/2,width+0.6,h2+0.4])rotate([90,0,0])cylinder(r=14.5/2, h=2.6);
            
            //-x
            translate([2.0,width/2,h2-0.4])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([2.0,width/2,h2+0.4])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            
            // x
            translate([width+0.6,width/2,h2-0.4])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            translate([width+0.6,width/2,h2+0.4])rotate([0,-90,0])cylinder(r=14.5/2, h=2.6);
            
            //bottom
            //translate([width/2,width/2,-0.1]) cylinder(r=15.3/2, h=3.6);
            
            //cutouts
            // -y
            translate([width/2-4,-0.2,5.8])cube([8,20,15]);
            // y
            translate([width/2-4, width-10,5.8])cube([8,20,15]);
            // -x
            translate([-0.2,width/2-4,height-5.8])mirror([0,0,1])cube([20,8,height]);
            // x
            translate([width-10,width/2-4,height-5.8])mirror([0,0,1])cube([20,8,15]);
            // bottom
            translate([width/2-2.25,width/2-4,0])cube([4.5,8,15]);
            
            //corners
            translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width, -width, -0.5*height]) cube([2*width, width, 2*height]);
            translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width, -0.5*width, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([width-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width, 2*width, 2*height]);
            translate([0,width-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width, 0, -0.5*height]) cube([2*width, width, 2*height]);
            
            translate([width/2,width/2,-width/8-thickness-1]) rotate([0,0,45])cylinder(r1=width, r2=0, h=width*2/3, $fn=4);

/*
            translate([0,0,height])mirror([0,0,1])
            {
                translate([0,0.25*thickness,0])rotate([45,0,0]) translate([-0.5*width, -width, -0.5*height]) cube([2*width, width, 2*height]);
                translate([0.25*thickness,0,0]) rotate([0,-45,0]) translate([-width, -0.5*width, -0.5*height]) cube([width, 2*width, 2*height]);
                translate([width-0.25*thickness,0,0]) rotate([0,45,0]) translate([0, 0, -0.5*height]) cube([width, 2*width, 2*height]);
                translate([0,width-0.25*thickness,0]) rotate([-45,0,0]) translate([-0.5*width, 0, -0.5*height]) cube([2*width, width, 2*height]);
            
                translate([width/2,width/2,-width/8-thickness-1]) rotate([0,0,45])cylinder(r1=width, r2=0, h=width*2/3, $fn=4);
            }
*/
        }
    }
}


radio_cube_1x1f(cube_width, cube_height, cube_thickness);

//intersection()
//{
//    translate([cube_width/2,0,0])cube([100,100,100]);
//    radio_cube_1x1(cube_width, cube_height, cube_thickness);    
//}