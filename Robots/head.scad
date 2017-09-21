// head
resize([30, 30, 50])
	sphere(20, center=true);

difference()
{
color("green")
	resize([35, 20, 60])
		rotate([90, 0, 0])
			cylinder(h=2, r=20, center=true);

color("red")
{
	translate([0,16,30])
		cube([40, 30, 60], center=true);
	translate([0,16,0])
		rotate([0, 90, 0])
			cylinder(d=30, h=40, center=true);
translate([-15,16,-10])
			cube([40, 30, 60], center=true);

	translate([0,-16,30])
		cube([40, 30, 60], center=true);
	translate([0,-16,0])
		rotate([0, 90, 0])
			cylinder(d=30, h=40, center=true);
translate([-15,-16,-10])
			cube([40, 30, 60], center=true);

}
}
