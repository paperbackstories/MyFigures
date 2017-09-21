$fn=100;

translate([21, 0, 20])

color("green")
Speaker();

Torso();


// waist
translate([0, 0, -2.5])
	cylinder(h=5, d=35, center=true);

//neck
translate([0, 0, 56])
	cylinder(h=10, d=30, center=true);
translate([0, 0, 58])
	cylinder(h=10, d=27, center=true);

// head
translate([0, 0, 80])
	resize([30, 30, 50])
		sphere(20);

translate([0, 0, 80])
	rotate([90, 0, 0])
		resize([35, 60, 2])
		cylinder(h=2, r=20);


//Torso();
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

module Speaker()
{
	rotate([0, 90, 0])
	
	difference(){

		union()
		{
			translate([0, 0, -2])
				cylinder(h=4, r=10, center=true);
			resize([20, 20, 4])
				sphere(r=10, center=true);
		}
		for (x=[-11 : 22 : 11])
		{
			for (y=[-6 : 4 : 6])
			{
				translate([x, y, 0])
				rotate([0, 0, 90])
				cube([2, 20, 20], center=true);
			}
		}
	}
}