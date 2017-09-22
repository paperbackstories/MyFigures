use <collar.scad>;
use <speaker.scad>;
use <head.scad>;

$fn=100;

translate([24, 0, 20])
		color("green")
			Speaker();


translate([0, 0, 28])
	Collar();

translate([0, 0, 75])
	Head();
