use <torso.scad>;
use <speaker.scad>;
use <head.scad>;

translate([21, 0, 20])

rotate([0, 90, 0])
color("green")
Speaker();

Torso();


// waist
translate([0, 0, -2.5])
	cylinder(h=5, d=35, center=true);

translate([0, 0, 75])

Head();
