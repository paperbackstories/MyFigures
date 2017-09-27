use <torso.scad>;
use <speaker.scad>;
use <head.scad>;
use <pancake.scad>
use <arm.scad>

$fn=100;


RobotSoldier();

module RobotSoldier()
{

	translate([24, 0, 20])
		color("gray")
			Speaker();


	translate([0, 0, 28]) Torso();
	translate([0, 0, 80]) scale(1.2) Head();


	translate([0, -35, 35]) Arm(upperRotation=[-30, 0, 0], lowerRotation=[0, -20, 40]);
	mirror([0, 1, 0])
		translate([0, -35, 35]) Arm(upperRotation=[-30, 0, 0], lowerRotation=[0, -20, 40]);

}