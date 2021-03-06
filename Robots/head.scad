use <pancake.scad>;
$fn=100;

Head();

module Head()
{

	difference()
	{
		union()
		{
			resize([30, 30, 50])
				sphere(20, center=true);

			difference()
			{
				color("green")
					translate([-1, 0, 2])
					resize([35, 35, 55])
						rotate([90, 0, 0])
							sphere(r=20, center=true);
							//cylinder(h=2, r=20, center=true);

				color("red")
				{
					translate([0,16,30])
						cube([40, 30, 60], center=true);
					translate([0,16,2])
						resize([40, 30, 40])
						rotate([0, 90, 0])
							cylinder(d=30, h=40, center=true);
					translate([-15,16,-10])
						cube([40, 30, 60], center=true);
					translate([0,-16,30])
						cube([40, 30, 60], center=true);
					translate([0,-16,2])
						resize([40, 30, 40])
						rotate([0, 90, 0])
							cylinder(d=30, h=40, center=true);
					translate([-15,-16,-10])
						cube([40, 30, 60], center=true);
				}
			}
		}
		
		translate([0, 0, -35])
			cube(40, center=true);
	}

	translate([13, 0, 3])
	{
		union()
		{
			translate([0, -5, 0])
				rotate([0, 90, 0])
					cylinder(h=4, d=10, center=true);
			translate([0, 5, 0])
				rotate([0, 90, 0])
					cylinder(h=4, d=10, center=true);
			translate([0, 0, 0])
					cube([4, 10, 10], center=true);
		}
		
		color("red")
		{
			translate([0, 5, 0])
				sphere(4);
			translate([0, -5, 0])
				sphere(4);
		}
	}
	color("Gray")
	{
	translate([0, -15, 3])
		rotate([90, 0, 0])
			Pancake(height=4, diameter=8);
	translate([0, 15, 3])
		rotate([90, 0, 0])
			Pancake(height=4, diameter=8);
	}
	translate([0, -17, 3])
		color("red")
			sphere(r=2, center=true);
	translate([0, 17, 3])
		color("red")
			sphere(r=2, center=true);
	color("gray")
	{
		translate([0, 0, -16])
			Pancake(height=2, diameter=28);
		translate([0, 0, -18])
			Pancake(height=2, diameter=28);
	}
}
