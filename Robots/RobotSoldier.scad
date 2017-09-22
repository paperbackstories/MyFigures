use <torso2.scad>;
use <speaker.scad>;
use <head.scad>;


translate([24, 0, 30])
	rotate([0, 90, 0])
		color("green")
			Speaker();


translate([0, 0, 28])
	Torso();

translate([0, 0, 70])
	Head();
