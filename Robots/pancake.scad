$fn=100;

for (z=[-6:2:6])
	translate([0, 0, z]) 
		pancake(2, 50);

module pancake(height, diameter)
{
	radius =  diameter / 2;
	width = radius - (height / 2);
	
	rotate_extrude()
	{
		translate([width / 2, 0, 0])
			square([width, height], center=true);
		
		translate([width, 0, 0])
			circle(d = height, center = true);
	}
}