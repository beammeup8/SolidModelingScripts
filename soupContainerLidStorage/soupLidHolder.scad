



union() {
	difference() {
		cylinder(h = 5, r = 66.5);
		cylinder(h = 5, r = 46.125);
	}
	difference() {
		cylinder(h = 170, r = 66.5);
		cylinder(h = 170, r = 61.5);
		union() {
			translate(v = [0, -76.875, 0]) {
				translate(v = [-30.75, 0, 0]) {
					cube(size = [66.5, 184.5, 170]);
				}
			}
			translate(v = [0, -76.875, 0]) {
				translate(v = [-35.75, 0, 0]) {
					translate(v = [0, 0, 165]) {
						difference() {
							cube(size = [5, 184.5, 5]);
							rotate(a = [-90, 0, 0]) {
								cylinder(h = 184.5, r = 5);
							}
						}
					}
				}
			}
			mirror(v = [1, 0, 0]) {
				translate(v = [0, -76.875, 0]) {
					translate(v = [-35.75, 0, 0]) {
						translate(v = [0, 0, 165]) {
							difference() {
								cube(size = [5, 184.5, 5]);
								rotate(a = [-90, 0, 0]) {
									cylinder(h = 184.5, r = 5);
								}
							}
						}
					}
				}
			}
			rotate(a = 90) {
				union() {
					translate(v = [0, -76.875, 0]) {
						translate(v = [-30.75, 0, 0]) {
							cube(size = [66.5, 184.5, 170]);
						}
					}
					translate(v = [0, -76.875, 0]) {
						translate(v = [-35.75, 0, 0]) {
							translate(v = [0, 0, 165]) {
								difference() {
									cube(size = [5, 184.5, 5]);
									rotate(a = [-90, 0, 0]) {
										cylinder(h = 184.5, r = 5);
									}
								}
							}
						}
					}
					mirror(v = [1, 0, 0]) {
						translate(v = [0, -76.875, 0]) {
							translate(v = [-35.75, 0, 0]) {
								translate(v = [0, 0, 165]) {
									difference() {
										cube(size = [5, 184.5, 5]);
										rotate(a = [-90, 0, 0]) {
											cylinder(h = 184.5, r = 5);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
