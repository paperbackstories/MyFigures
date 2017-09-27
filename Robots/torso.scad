use <pancake.scad>;


$fn = 100;

Torso();

module Torso()
{
	Collar();
	Chest();
	Epaulets();
	Waist();
	
	//neck
	resize([28, 22, 15])
		translate([0, 0, 20])
			cylinder(r=15, h=15);
}

module Chest()
{
	scale(4)
	hull()
	{
		translate([0, 0, -18])
			rotate([0, -90, 0])
				rotate([0, 0, -22.5])
					rotate_extrude(angle=45)
						translate([20, 0, 0])
							circle(5);
		sphere(6, center=true);
		translate([0, 0, -4])
			cylinder(h=6, r=5, center=true);	
	}
}

module Epaulets()
{

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

module Waist()
{
	color("gray")
	{
		translate([0, 0, -31]) Pancake(height=6, diameter=40);
		translate([0, 0, -37]) Pancake(height=6, diameter=40);
	}	
}

module Collar()
{
	color("green")
	scale(1.1)
	difference()
	{
		Chest();
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
}