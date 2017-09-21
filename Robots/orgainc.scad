$fn=100;

hull(){
rotate([0, -90, 0])
rotate([0, 0, -22.5])
rotate_extrude(angle=45)
translate([20, 0, 0])
circle(5);
translate([0, 0, 18])
sphere(6);
translate([0, 0, 15])
sphere(6);
//translate([0, 0, 10])
//cylinder(h=6, r=6, center=true);	
	}
