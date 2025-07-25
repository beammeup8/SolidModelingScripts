



union() {
	translate(v = [10.0, 0, 0]) {
		translate(v = [0, 0, 10.0]) {
			cube(size = [230, 190, 56]);
		}
	}
	difference() {
		translate(v = [0, 47.5, 0]) {
			cube(size = [72.5, 157.5, 76]);
		}
		translate(v = [5, 0, 0]) {
			translate(v = [0, 0, 5]) {
				cube(size = [240, 200, 66]);
			}
		}
	}
}
