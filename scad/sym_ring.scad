module ring(radius, thickness, height)
{
    difference()
    {
        cylinder(r=radius, h=height, $fn=64);
        translate([0,0,-thickness/2])cylinder(r=(radius-thickness), h=(height+thickness), $fn=64);
    }
}

ring(30, 1, 1);