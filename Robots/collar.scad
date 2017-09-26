use <torso.scad>;



$fn = 100;

Collar();

module Collar()
{
	color("green")
	scale(1.1)
	difference()
	{
		Torso();
		translate([0, 0, -135])
		color("green")
		difference()
		{
			translate([0, 0, 100])
				cube([90, 100, 200], center=true);

			translate([0, 0, 200])
				rotate([-90, 0, 0])
					rotate([0, 0, 45])
						rotate_extrude(angle=90)
							translate([40, 0, 0])
								difference()
								{
									circle(20);
									circle(10);
								}
		}
	}

	Torso();

	resize([30, 22, 15])
	translate([0, 0, 20])
		cylinder(r=15, h=15);

}