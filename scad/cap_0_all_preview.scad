include <settings.scad>

use <cap_1x1_battery.scad>
use <cap_1x1_capacitor_polar.scad>
use <cap_1x1_capacitor.scad>
use <cap_1x1_diode_led.scad>
use <cap_1x1_diode.scad>

use <cap_1x1_ground.scad>
use <cap_1x1_inductor.scad>
use <cap_1x1_npn_transistor_flipped.scad>
use <cap_1x1_npn_transistor.scad>
use <cap_1x1_resistor_photo.scad>

use <cap_1x1_switch_reed_nc.scad>
use <cap_1x1_switch_button.scad>
use <cap_1x1_pnp_transistor_flipped.scad>
use <cap_1x1_pnp_transistor.scad>
use <cap_1x1_resistor_potentiometer.scad>

use <cap_1x1_switch_reed_no.scad>
use <cap_1x1_switch.scad>
use <cap_1x1_transformer.scad>
use <cap_1x1_resistor.scad>
use <cap_1x1_wireI.scad>

use <cap_1x1_wireIo.scad>
use <cap_1x1_wireIoI.scad>
use <cap_1x1_wireIooI.scad>
use <cap_1x1_wireP.scad>
use <cap_1x1_wireV.scad>

use <cap_1x1_wireVo.scad>
use <cap_1x1_wireX.scad>
use <cap_1x1_wireY.scad>

translate([0,  0,  0]) mirror([0,0,1]) cap_1x1_battery(cap_width, cap_height, cap_thickness);
translate([0,  33, 0]) mirror([0,0,1]) cap_1x1_capacitor_polar(cap_width, cap_height, cap_thickness);
translate([0,  66, 0]) mirror([0,0,1]) cap_1x1_capacitor(cap_width, cap_height, cap_thickness);
translate([0,  99, 0]) mirror([0,0,1]) cap_1x1_diode_led(cap_width, cap_height, cap_thickness);
translate([0,  132,0]) mirror([0,0,1]) cap_1x1_diode(cap_width, cap_height, cap_thickness);

translate([33, 0,  0]) mirror([0,0,1]) cap_1x1_ground(cap_width, cap_height, cap_thickness);
translate([33, 33, 0]) mirror([0,0,1]) cap_1x1_switch(cap_width, cap_height, cap_thickness);
translate([33, 66, 0]) mirror([0,0,1]) cap_1x1_npn_transistor_flipped(cap_width, cap_height, cap_thickness);
translate([33, 99, 0]) mirror([0,0,1]) cap_1x1_npn_transistor(cap_width, cap_height, cap_thickness);
translate([33, 132,0]) mirror([0,0,1]) cap_1x1_resistor_photo(cap_width, cap_height, cap_thickness);

translate([66, 0,  0]) mirror([0,0,1]) cap_1x1_switch_reed_nc(cap_width, cap_height, cap_thickness);
translate([66, 33, 0]) mirror([0,0,1]) cap_1x1_switch_button(cap_width, cap_height, cap_thickness);
translate([66, 66, 0]) mirror([0,0,1]) cap_1x1_pnp_transistor_flipped(cap_width, cap_height, cap_thickness);
translate([66, 99, 0]) mirror([0,0,1]) cap_1x1_pnp_transistor(cap_width, cap_height, cap_thickness);
translate([66, 132,0]) mirror([0,0,1]) cap_1x1_resistor(cap_width, cap_height, cap_thickness);

translate([99, 0,  0]) mirror([0,0,1]) cap_1x1_switch_reed_no(cap_width, cap_height, cap_thickness);
translate([99, 33, 0]) mirror([0,0,1]) cap_1x1_inductor(cap_width, cap_height, cap_thickness);
translate([99, 66, 0]) mirror([0,0,1]) cap_1x1_transformer(cap_width, cap_height, cap_thickness);
//translate([99, 99, 0]) mirror([0,0,1]) cap_1x1_pnp_transistor(cap_width, cap_height, cap_thickness);
translate([99, 132,0]) mirror([0,0,1]) cap_1x1_resistor_potentiometer(cap_width, cap_height, cap_thickness);

translate([132,0,  0]) mirror([0,0,1]) cap_1x1_wireI(cap_width, cap_height, cap_thickness);
translate([132,33, 0]) mirror([0,0,1]) cap_1x1_wireIo(cap_width, cap_height, cap_thickness);
translate([132,66, 0]) mirror([0,0,1]) cap_1x1_wireIoI(cap_width, cap_height, cap_thickness);
translate([132,99, 0]) mirror([0,0,1]) cap_1x1_wireIooI(cap_width, cap_height, cap_thickness);
translate([132,132,0]) mirror([0,0,1]) cap_1x1_wireP(cap_width, cap_height, cap_thickness);

translate([165,0,  0]) mirror([0,0,1]) cap_1x1_wireV(cap_width, cap_height, cap_thickness);
translate([165,33, 0]) mirror([0,0,1]) cap_1x1_wireVo(cap_width, cap_height, cap_thickness);
translate([165,66, 0]) mirror([0,0,1]) cap_1x1_wireX(cap_width, cap_height, cap_thickness);
translate([165,99, 0]) mirror([0,0,1]) cap_1x1_wireY(cap_width, cap_height, cap_thickness);
//translate([165,132,0]) mirror([0,0,1]) cap_2x1_wireYY(cap_width, cap_height, cap_thickness);

