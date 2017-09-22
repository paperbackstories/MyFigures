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
	Arm();

	translate([0, 35, 35])
	Arm();

}
module Arm()
{
	color("red")
		sphere(12, center = true);
	translate([0, 0, -25])
		cylinder(h=50, r=5, center=true);
	color("red")
		translate([0, 0, -50])
			sphere(10, center = true);
	translate([0, 0, -75])
		cylinder(h=50, r=5, center=true);
}