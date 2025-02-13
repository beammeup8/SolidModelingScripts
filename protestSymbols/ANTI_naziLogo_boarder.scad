



union() {
	difference() {
		cylinder(h = 2.5, r = 15.0);
		cylinder(h = 2.5, r = 12.0);
	}
	rotate(a = [0, 0, -45]) {
		translate(v = [-13.5, 0, 0]) {
			translate(v = [0, -1.5, 0]) {
				cube(size = [27.0, 3.0, 2.5]);
			}
		}
	}
}
