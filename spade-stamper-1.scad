module radiused_cube(size,r)
{
    hull()
    {
        translate([r,r,0]) cylinder(r=r,h=size.z);
        translate([r,size.y-r,0]) cylinder(r=r,h=size.z);
        translate([size.x-r,r,0]) cylinder(r=r,h=size.z);
        translate([size.x-r,size.y-r,0]) cylinder(r=r,h=size.z);
    }
}


handle_length = 30;

x_pic = 500;
y_pic = 838;
z_pic = 100;

x_target = 10;
y_target = x_target * ( y_pic / x_pic );
z_target = 4;

x_scale = x_target/x_pic;
echo("x_scale: ", x_scale);

y_scale = y_target/y_pic;
echo("y_scale: ", y_scale);

z_scale = z_target/z_pic;
echo("z_scale: ", z_scale);

scale([x_scale, y_scale, z_scale])
    surface( file = "spade-500x838.png", center = true, invert = true);
    
translate([0, 0, -z_target-handle_length/2])
    cube([x_target, y_target, handle_length], center = true);
    
*translate([-x_target/2, -y_target/2, -z_target-handle_length])
    radiused_cube([x_target, y_target, handle_length],2);
    