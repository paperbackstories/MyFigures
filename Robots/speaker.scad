
difference(){

intersection()
{
	translate([0, 0, -28])
		sphere(r=30, $fn=100, center=true);
	cylinder(h=4, r=10, center=true);
}

for (x=[-11 : 22 : 11])
{
	for (y=[-2 : 4 : 2])
	{
		translate([x, y, 0])
		rotate([0, 0, 90])
		cube([2, 20, 20], center=true);

	}
}
}