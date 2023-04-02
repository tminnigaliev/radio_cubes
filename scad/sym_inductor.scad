module sector(radius, angles, fn = 24) {
    r = radius / cos(180 / fn);
    step = -360 / fn;

    points = concat([[0, 0]],
        [for(a = [angles[0] : step : angles[1] - 360]) 
            [r * cos(a), r * sin(a)]
        ],
        [[r * cos(angles[1]), r * sin(angles[1])]]
    );

    difference() {
        circle(radius, $fn = fn);
        polygon(points);
    }
}

module arc(radius, angles, width, fn = 24) {
    difference() {
        sector(radius + width/2, angles, fn);
        sector(radius - width/2, angles, fn);
    }
} 

module arc_3d(radius, angles, width, depth, fn)
{
    linear_extrude(depth) arc(radius, angles, width);
}

module sym_inductor(height, depth, thickness)
{
    n1 = 3.33;
    //translate([0,-thickness/2,0]) cube([height/6, 2*thickness, depth]);
    r1 = height/(2*n1);
    
    translate([height/6,r1+thickness/2,0]) arc_3d(r1, [-90, 90], 2*thickness, depth, 120);
    
    translate([height/6,3*r1+1.5*thickness,0]) arc_3d(r1, [-90, 90], 2*thickness, depth, 120);

    translate([height/6,5*r1+2.5*thickness,0]) arc_3d(r1, [-90, 90], 2*thickness, depth, 120);

    //translate([0,height-1.5*thickness,0]) cube([height/6, 2*thickness, depth]);
}

sym_inductor(30, 0.5, 1);