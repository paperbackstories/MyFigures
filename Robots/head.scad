use <pancake.scad>;
//$fn=100;

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
					resize([35, 20, 60])
						rotate([90, 0, 0])
							cylinder(h=2, r=20, center=true);

				color("red")
				{
					translate([0,16,30])
						cube([40, 30, 60], center=true);
					translate([0,16,0])
						rotate([0, 90, 0])
							cylinder(d=30, h=40, center=true);
					translate([-15,16,-10])
						cube([40, 30, 60], center=true);
					translate([0,-16,30])
						cube([40, 30, 60], center=true);
					translate([0,-16,0])
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
	
	translate([0, -15, 3])
		rotate([90, 0, 0])
			pancake(height=4, diameter=8);
	translate([0, -18, 3])
			sphere(r=2, center=true);
	translate([0, 15, 3])
		rotate([90, 0, 0])
			pancake(height=4, diameter=8);
	translate([0, 18, 3])
			sphere(r=2, center=true);
	
	translate([0, 0, -15])
		pancake(height=2, diameter=30);
	translate([0, 0, -17])
		pancake(height=2, diameter=30);
}
