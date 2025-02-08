



difference() {
	cylinder(h = 1.5, r = 22.5);
	minkowski() {
		linear_extrude(height = 2.25) {
			text(font = "Mic 32Bold", halign = "center", size = 9, text = "LABOR", valign = "center");
		}
		cube(size = [0.15, 0.15, 0.15]);
	}
	minkowski() {
		difference() {
			cylinder(h = 3.0, r = 27.0);
			cylinder(h = 3.0, r = 22.5);
		}
		cube(size = [0.15, 0.15, 0.15]);
	}
}
