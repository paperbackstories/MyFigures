use <torso.scad>;
use <pancake.scad>;


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

	resize([28, 22, 15])
	translate([0, 0, 20])
		cylinder(r=15, h=15);
	translate([0, -25, 7])
		rotate([-75, 0, 0])
		color("gray")
			Pancake(height=4, diameter=43);

	mirror([0, 1, 0])
	translate([0, -25, 7])
		rotate([-75, 0, 0])
		color("gray")
			Pancake(height=4, diameter=43);


}