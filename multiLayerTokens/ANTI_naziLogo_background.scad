



difference() {
	cylinder(h = 1.25, r = 12.0);
	minkowski() {
		union() {
			cube(size = [3.0, 7.5, 2.5]);
			translate(v = [0, 4.5, 0]) {
				cube(size = [7.5, 3.0, 2.5]);
			}
			rotate(a = [0, 0, 90]) {
				union() {
					cube(size = [3.0, 7.5, 2.5]);
					translate(v = [0, 4.5, 0]) {
						cube(size = [7.5, 3.0, 2.5]);
					}
				}
			}
			rotate(a = [0, 0, 180]) {
				union() {
					cube(size = [3.0, 7.5, 2.5]);
					translate(v = [0, 4.5, 0]) {
						cube(size = [7.5, 3.0, 2.5]);
					}
				}
			}
			rotate(a = [0, 0, 270]) {
				union() {
					cube(size = [3.0, 7.5, 2.5]);
					translate(v = [0, 4.5, 0]) {
						cube(size = [7.5, 3.0, 2.5]);
					}
				}
			}
		}
		cube(size = [0.15, 0.15, 0.15]);
	}
	minkowski() {
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
		cube(size = [0.15, 0.15, 0.15]);
	}
}
