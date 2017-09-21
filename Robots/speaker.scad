
Speaker();

module Speaker()
{
	rotate([90, 0, 0])
	
	difference(){

		union()
		{
			translate([0, 0, -2])
				cylinder(h=4, r=10, center=true);
			resize([20, 20, 4])
				sphere(r=10, center=true);
		}
		for (x=[-11 : 22 : 11])
		{
			for (y=[-6 : 4 : 6])
			{
				translate([x, y, 0])
				rotate([0, 0, 90])
				cube([2, 20, 20], center=true);
			}
		}
	}
}