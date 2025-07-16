



difference() {
	minkowski() {
		cube(size = [109, 93, 5]);
		sphere(r = 1);
	}
	translate(v = [54.5, 0, 0]) {
		translate(v = [0, 81.0, 0]) {
			translate(v = [0, 0, 4.75]) {
				linear_extrude(height = 5) {
					text(font = "eufm10", halign = "center", size = 8, text = "Spell Slot Tracker", valign = "center");
				}
			}
		}
	}
	translate(v = [8, 0, 0]) {
		translate(v = [0, 8, 0]) {
			union() {
				minkowski() {
					translate(v = [0, 0, 1.25]) {
						cube(size = [16, 16, 16]);
					}
					sphere(r = 0.5);
				}
				translate(v = [0, 46, 0]) {
					translate(v = [0, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "1", valign = "center");
											}
											translate(v = [4.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [2.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [3.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 46, 0]) {
					translate(v = [23, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "2", valign = "center");
											}
											translate(v = [3.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [2.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 46, 0]) {
					translate(v = [46, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "3", valign = "center");
											}
											translate(v = [3.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [2.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 23, 0]) {
					translate(v = [0, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "4", valign = "center");
											}
											translate(v = [3.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [2.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 23, 0]) {
					translate(v = [23, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "5", valign = "center");
											}
											translate(v = [3.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [2.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 23, 0]) {
					translate(v = [46, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "6", valign = "center");
											}
											translate(v = [2.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 0, 0]) {
					translate(v = [0, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "7", valign = "center");
											}
											translate(v = [2.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
													}
													translate(v = [1.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 0, 0]) {
					translate(v = [23, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "8", valign = "center");
											}
											translate(v = [1.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
				translate(v = [0, 0, 0]) {
					translate(v = [46, 0, 0]) {
						union() {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									cube(size = [16, 16, 16]);
								}
								sphere(r = 0.5);
							}
							translate(v = [0, 0, 4.75]) {
								translate(v = [0, -3, 0]) {
									translate(v = [8.0, 0, 0]) {
										union() {
											linear_extrude(height = 5) {
												text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "9", valign = "center");
											}
											translate(v = [1.5, 0, 0]) {
												union() {
													cylinder(h = 5, r = 0.5);
													translate(v = [0.0, 0, 0]) {
														cylinder(h = 5, r = 0.5);
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
		}
	}
	translate(v = [0, 11.5, 0]) {
		translate(v = [88.5, 0, 0]) {
			union() {
				translate(v = [0, 15.0, 0]) {
					minkowski() {
						translate(v = [0, 0, 1.25]) {
							linear_extrude(height = 5) {
								rotate(a = 22.5) {
									polygon(points = [[10.452503719011013, 0.0], [7.391036260090295, 7.391036260090294], [6.400312611281321e-16, 10.452503719011013], [-7.391036260090294, 7.391036260090295], [-10.452503719011013, 1.2800625222562641e-15], [-7.391036260090296, -7.391036260090294], [-1.920093783384396e-15, -10.452503719011013], [7.391036260090292, -7.391036260090296]]);
								}
							}
						}
						sphere(r = 0.5);
					}
				}
				translate(v = [0, 0, 4.75]) {
					linear_extrude(height = 5) {
						text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "Spell Save DC", valign = "center");
					}
				}
				translate(v = [0, 32.0, 0]) {
					union() {
						translate(v = [0, 15.0, 0]) {
							minkowski() {
								translate(v = [0, 0, 1.25]) {
									linear_extrude(height = 5) {
										rotate(a = 22.5) {
											polygon(points = [[10.452503719011013, 0.0], [7.391036260090295, 7.391036260090294], [6.400312611281321e-16, 10.452503719011013], [-7.391036260090294, 7.391036260090295], [-10.452503719011013, 1.2800625222562641e-15], [-7.391036260090296, -7.391036260090294], [-1.920093783384396e-15, -10.452503719011013], [7.391036260090292, -7.391036260090296]]);
										}
									}
								}
								sphere(r = 0.5);
							}
						}
						translate(v = [0, 0, 4.75]) {
							linear_extrude(height = 5) {
								text(font = "UbuntuCondensed-Regular", halign = "center", size = 3, text = "Spell Attack Bonus", valign = "center");
							}
						}
					}
				}
			}
		}
	}
}
