



translate(v = [0, 0, 3.0]) {
	difference() {
		union() {
			translate(v = [0, 0, -3.0]) {
				cylinder(h = 3.0, r = 27.0);
			}
			linear_extrude(height = 2.25) {
				text(font = "Mic 32Bold", halign = "center", size = 9, text = "LABOR", valign = "center");
			}
		}
		minkowski() {
			difference() {
				cylinder(h = 3.0, r = 27.0);
				cylinder(h = 3.0, r = 22.5);
			}
			cube(size = [0.15, 0.15, 0.15]);
		}
	}
}
