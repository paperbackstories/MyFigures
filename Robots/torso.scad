$fn=100;

Torso();

module Torso()
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