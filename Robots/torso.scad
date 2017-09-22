//$fn=100;

Torso();

module Torso()
{
	// TODO: change torso to 
	// rotate_extrude 45 followed 
	// by a linear_extrude
	
	translate([0, 0, 40])
	rotate([90, 0, 0])
	cylinder(h=40, r=20, center=true);
    
	translate([0, 0, 20])
	cube([40, 40, 40], center=true);
	
	LeftShoulder();
	RightShoulder();
}

module RightShoulder()
{
	mirror([0, -1, 0])
		LeftShoulder();
	
}

module LeftShoulder()
{
	translate([0, 20, 0])
	rotate([0, -90, 0])
	{
		difference()
		{
			rotate_extrude(angle = 30)
			{
				union()
				{
					translate([40, 0, 0])
						circle(20, center=true);
					translate([20, 0, 0])
						square(40, center=true);
				}
			}

			translate([0, 60, -25])
				color("green")
					cylinder(r=60, h=50);
		}
	}
}
