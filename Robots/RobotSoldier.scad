use <collar.scad>;
use <speaker.scad>;
use <head.scad>;
use <pancake.scad>

$fn=100;


RobotSoldier();

module RobotSoldier()
{

	translate([24, 0, 20])
		color("gray")
			Speaker();


	translate([0, 0, 28])
		Collar();
	translate([0, 0, 80])
scale(1.2)
		Head();

	color("gray")
	{
		translate([0, 0, -3])
			Pancake(height=6, diameter=40);
		translate([0, 0, -9])
			Pancake(height=6, diameter=40);
	}

	translate([0, -35, 35])
	rotate([-30, 10, 0])
	Arm();


}
module Arm()
{
	//upper arm
	color("red")
		sphere(12, center = true);
	translate([0, 0, -20])
		cylinder(h=40, r=5, center=true);
	color("gray")
	{
		translate([0, 0, -11])
			Pancake(height=3, diameter=18);

		translate([0, 0, -10])
			cylinder(h=20, r=6, center=true);

			translate([0, 0, -34])
				Pancake(height=3, diameter=16);

	}
	
	//lower arm
	translate([0, 0, -40])
	{
		rotate([25, -40, 0])
		{
			color("red")
				sphere(8, center = true);
			translate([0, 0, -15])
				cylinder(h=30, r=5, center=true);
			color("gray")
			{
				translate([0, 0, -5])
					cylinder(h=5, r=6, center=true);
			}
		}
	}
}