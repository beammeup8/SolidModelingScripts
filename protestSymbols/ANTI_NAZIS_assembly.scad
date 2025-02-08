



union() {
	color(alpha = 1.0, c = [0, 0, 0]) {
		translate(v = [0, 0, 3.0]) {
			difference() {
				union() {
					translate(v = [0, 0, -3.0]) {
						cylinder(h = 3.0, r = 27.0);
					}
					linear_extrude(height = 2.25) {
						text(font = "Mic 32Bold", halign = "center", size = 9, text = "NAZIS", valign = "center");
					}
				}
				minkowski() {
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
					cube(size = [0.15, 0.15, 0.15]);
				}
			}
		}
	}
	translate(v = [0, 0, 3.0]) {
		color(alpha = 1.0, c = [1, 1, 1]) {
			difference() {
				cylinder(h = 1.5, r = 22.5);
				minkowski() {
					linear_extrude(height = 2.25) {
						text(font = "Mic 32Bold", halign = "center", size = 9, text = "NAZIS", valign = "center");
					}
					cube(size = [0.15, 0.15, 0.15]);
				}
				minkowski() {
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
					cube(size = [0.15, 0.15, 0.15]);
				}
			}
		}
	}
	translate(v = [0, 0, 3.0]) {
		color(alpha = 1.0, c = [1, 0, 0]) {
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
		}
	}
}
