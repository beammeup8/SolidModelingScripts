



union() {
	difference() {
		cylinder(h = 3.0, r = 27.0);
		cylinder(h = 3.0, r = 22.5);
	}
	rotate(a = [0, 0, -45]) {
		translate(v = [-24.75, 0, 0]) {
			translate(v = [0, -2.25, 0]) {
				cube(size = [49.5, 4.5, 3.0]);
			}
		}
	}
}
