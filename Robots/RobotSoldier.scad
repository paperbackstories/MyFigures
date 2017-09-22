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

	translate([0, 0, 75])
		Head();

	color("gray")
	{
		translate([0, 0, -3])
			Pancake(height=6, diameter=38);
		translate([0, 0, -9])
			Pancake(height=6, diameter=38);
	}

	translate([0, -35, 35])
	rotate([-10, 0, 0])
	Arm();


}
module Arm()
{
	color("red")
		sphere(12, center = true);
	color("gray")
	{
		translate([0, 0, -12])
			Pancake(height=4, diameter=18);

		translate([0, 0, -10])
			cylinder(h=20, r=6, center=true);
	}
	translate([0, 0, -20])
		cylinder(h=40, r=5, center=true);
	color("red")
		translate([0, 0, -40])
			sphere(8, center = true);
	translate([0, 0, -60])
		cylinder(h=30, r=5, center=true);
}