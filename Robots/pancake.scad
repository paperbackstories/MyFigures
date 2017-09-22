$fn=100;

//for (z=[-6:2:6])
//	translate([0, 0, z]) 
		Pancake(6, 100);

module Pancake(height, diameter)
{
	radius =  diameter / 2;
	width = radius - (height / 2);
	
	rotate_extrude()
	{
		difference()
		{
			union()
			{
				translate([width / 2, 0, 0])
					square([width, height], center=true);
				
				translate([width, 0, 0])
					circle(d = height, center = true);
			}
			color("green")
			translate([-height/2, 0, 0])
				square(height, center = true);
		}
	}
}