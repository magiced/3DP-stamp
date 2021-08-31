
handle_length = 30;

x_target = 10;
y_target = 10;
z_target = 4;

x_pic = 500;
y_pic = 467;
z_pic = 100;

x_scale = x_target/x_pic;
echo("x_scale: ", x_scale);

y_scale = y_target/y_pic;
echo("y_scale: ", y_scale);

z_scale = z_target/z_pic;
echo("z_scale: ", z_scale);

scale([x_scale, y_scale, z_scale])
    surface( file = "starfish-bw-500x467.png", center = true, invert = true);
    
translate([0, 0, -z_target-handle_length/2])
    cube([x_target, y_target, handle_length], center = true);
    