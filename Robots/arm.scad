use <pancake.scad>

$fn=100;

Arm(upperRotation = [-50, 0, 0], lowerRotation = [25, -40, 0]);

module Arm(upperRotation, lowerRotation)
{
	rotate(upperRotation)
	{
		//upper arm
		{
			//shoulder
			color("red") sphere(12, center = true);
			
			//forearm
			translate([0, 0, -20]) cylinder(h=40, r=5, center=true);
			color("gray")
			{
				translate([0, 0, -11]) Pancake(height=3, diameter=18);
				translate([0, 0, -10]) cylinder(h=20, r=6, center=true);
				translate([0, 0, -34]) Pancake(height=3, diameter=16);
			}
		}
		
		//lower arm
		translate([0, 0, -40])
		{
			rotate(lowerRotation)
			{
				color("red") sphere(8, center = true);
				translate([0, 0, -15]) cylinder(h=30, r=5, center=true);
				color("gray")
				{
					translate([0, 0, -5]) cylinder(h=5, r=6, center=true);
				}
			}
		}
	}
}