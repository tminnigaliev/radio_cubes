module plus(size, thickness, height)
{
    translate([-size/2,-thickness/2, 0]) cube([size, thickness, height]);
    translate([-thickness/2,-size/2, 0]) cube([thickness, size, height]);
}