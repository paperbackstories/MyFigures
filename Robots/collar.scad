use <torso.scad>;

Collar();

module Collar()
{
	color("green")
	scale([1.1, 1, 1.1])
	difference()
	{
		Torso();

		translate([0, 0, 25])
		color("green")
		{
			difference()
			{
				cube([90, 100, 200], center=true);
				rotate([0, 90,0])
					cylinder(h=100, d=40, center=true);

			}
			rotate([0, 90,0])
				cylinder(h=100, d=20, center=true);
		}
	}

	//difference()
	//{
		Torso();
	//	translate([0, 0, 25])
	//			cube([20, 20, 10], center=true);
	//}

	translate([0, 0, 20])
		cylinder(r=10, h=10);
}