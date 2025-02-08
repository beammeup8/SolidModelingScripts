



union() {
	difference() {
		cylinder(h = 3.0, r = 31.5);
		cylinder(h = 3.0, r = 27.0);
	}
	rotate(a = [0, 0, -45]) {
		translate(v = [-29.25, 0, 0]) {
			translate(v = [0, -2.25, 0]) {
				cube(size = [58.5, 4.5, 3.0]);
			}
		}
	}
}
