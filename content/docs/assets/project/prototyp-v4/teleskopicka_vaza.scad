// =============================================================
//  Teleskopická váza v4 – obrátená, PLOCHÉ GUMENÉ PODLOŽKY
//  SMVIT projekt, parametrický model (OpenSCAD 2021+)
//
//  Spodok (najužší, s dnom a pätkou) -> stred -> vrch (najširší).
//  Vyšší segment sa nasúva zvonka na nižší. Pri pohybe nič netesní,
//  tesnosť je potrebná len po zamknutí.
//
//  Spoj (na vrchu nižšieho segmentu):
//   - krúžok sa zaskrutkuje do vrchu nižšieho segmentu; závit
//     utesni teflónovou páskou,
//   - krúžok má kolíky a nad nimi plnú prírubu; v lôžku na spodku
//     príruby je podložka G2,
//   - po pootočení bajonetu klesajúci strop L-drážky pritiahne golier
//     vyššieho segmentu hore k prírube a stlačí G2 (o 25 %).
//     Tesne pred koncom je hrbolček = poistka proti odkrúteniu.
// =============================================================

/* [Zobrazenie] */
// assembly, section, exploded, test_set, test_section, bottom, middle, top, ring_bottom, ring_middle, test_lower, test_upper, gaskets_2d, gasket_g2_bottom, gasket_g2_middle
part = "assembly";
extended = true;
// true = diely otočené do polohy na tlač (segmenty golierom hore, krúžky prírubou dole)
print_ready = true;

/* [Rozmery] */
R1      = 29;    // vonkajší polomer spodku
H1      = 51;    // výška spodku
H2      = 69;    // výška stredu
H3      = 81;    // výška vrchu
wall    = 2.4;
clr     = 0.3;   // radiálna vôľa (doladiť testom!)
floor_t = 3;
foot_r  = 60;
foot_h  = 5;

/* [Podložky] */
gasket_t  = 2.0;   // hrúbka gumy (NAMERAJ a prepíš!)
// hĺbka lôžka sa dopočíta z hrúbky gumy -> stlačenie vždy 25 %
// G1 zrušená: závit krúžku utesni teflónovou páskou
gasket_labels = true;  // popisky v šablóne podložiek

/* [Bajonet] */
lug_n   = 3;
lug_w   = 6;
lug_d   = 3;
lug_h   = 4;
lock_angle = 30;
d_fl    = 3;      // medzera kolík -> príruba (= hrúbka zovretého golieru)
fl_t    = 3.3;    // hrúbka príruby
collar_T = 11;    // výška golieru

/* [Závit krúžku] */
thread_h = 10;
pitch    = 4;
th_e     = 0.7;
ow       = 3.0;   // stena za vnútorným závitom
sp_wall  = 1.6;

/* [Dekorácia vrchu] */
decoration_on = true;
hearts_count = 9;
heart_size = 20;
heart_z = 0.55;
relief = 1.5;
deco_color = "Gold";        // farba srdiečok (len na zobrazenie)

/* [Farby – len na zobrazenie] */
c_bottom = "SteelBlue";
c_middle = "LightSteelBlue";
c_top    = "AliceBlue";
c_ring   = "DarkOrange";

$fn = 120;

// ---------- odvodené ----------
function r_ch(Rl)  = Rl + lug_d + 0.4;          // vonkajší okraj L-drážky
function r_fl(Rl)  = r_ch(Rl) + 5.3;            // polomer príruby
function rec_in(Rl)  = Rl + 0.8;                // lôžko G2 (široké = veľká tolerancia)
function rec_out(Rl) = r_fl(Rl) - 1.0;
function g_in(Rl)  = r_ch(Rl) - 0.5;            // G2 nominálne
function g_out(Rl) = r_fl(Rl) - 1.8;
function rb(Rl)    = r_fl(Rl) + clr;            // vŕtanie vyššieho segmentu
function Rup(Rl)   = rb(Rl) + wall;
function rt_hole(R) = R - ow - th_e;
function rt_sp(R)   = rt_hole(R) - clr;
function sp_in(R)   = rt_sp(R) - th_e - sp_wall;

// strop L-drážky (v súradniciach golieru)
lock_gap = 0.4;                          // zamknuté: medzera golier/príruba (> výška poistky!)
bump_h  = 0.3;                           // výška poistky
recess  = 0.75 * gasket_t - lock_gap;    // hĺbka lôžka G2
comp    = gasket_t - recess - lock_gap;  // stlačenie G2 (= 25 % hrúbky)
c_end   = collar_T - d_fl + lock_gap;    // zamknuté
c_entry = c_end + comp + 0.2;            // vstup: G2 voľná
c_bump  = c_end - bump_h;                               // poistka
fl_z    = lug_h + d_fl;                                 // spodok príruby nad čelom krúžku
lug_floor = c_end - lug_h - 0.6;
drop    = lug_h - c_end;    // poloha vyššieho segm. voči vrchu nižšieho
ring_top = fl_z + fl_t;

R2 = Rup(R1);
R3 = Rup(R2);
ext_h = H1 + H2 + H3 + 2 * drop;
col_h = foot_h + max(H3, H2 + ring_top);

echo(str("Spodok OD=", 2*R1, " ID=", 2*(R1-wall)));
echo(str("Stred  OD=", 2*R2, " ID=", 2*rb(R1)));
echo(str("Vrch   OD=", 2*R3, " ID=", 2*rb(R2), " (limit 100)"));
echo(str("Vyska vysunuta=", ext_h, " mm, zlozena=", col_h, " mm"));
module gecho(n, Rl) echo(str(n, ": nominalne ", 2*g_in(Rl), " / ", 2*g_out(Rl),
    " mm | vonkajsi O moze byt ", 2*(r_ch(Rl)+1.5), " az ", 2*rec_out(Rl),
    " | vnutorny O od ", 2*rec_in(Rl), " (sirka aspon 2 mm)"));
gecho("G2 spodok", R1);
gecho("G2 stred ", R2);
echo(str("Hlbka loza ", recess, " mm, stlacenie ", comp, " mm"));
assert(2*rb(R2) <= 100, "Vnutorny priemer vrchu > 100 mm");
assert(bump_h < lock_gap, "Poistka vyssia ako medzera golier/priruba - plast by narazil");
assert(recess > 0.2, "Prilis tenka guma pre lozko");
assert(H2 >= H1 + ring_top + thread_h + 2 - foot_h, "Stred je prilis nizky na zlozenie");

// ---------- bloky ----------
module ring_shape(ro, ri, h) difference() {
    cylinder(r = ro, h = h);
    translate([0, 0, -1]) cylinder(r = ri, h = h + 2);
}

module thread_solid(rt, h)
    linear_extrude(height = h, twist = -360 * h / pitch, slices = h * 6)
        translate([th_e, 0]) circle(r = rt);

// strop drážky podľa uhla steny phi
function cw(phi, a) =
    phi <= a + 0.5 ? c_entry :
    phi <  lock_angle - a - 3 ? c_entry - (c_entry - c_end) * (phi - a - 0.5) / (lock_angle - 2 * a - 3.5) :
    (phi >= lock_angle - a - 1.6 && phi <= lock_angle - a - 0.6) ? c_bump :
    c_end;

module collar_cuts(Rl) {
    ri = Rl + clr - 1;
    rc = r_ch(Rl);
    a  = (lug_w / 2 + 0.4) / Rl * 180 / PI;
    st = 0.5;
    translate([0, 0, -0.01]) cylinder(r1 = Rl + clr + 0.8, r2 = Rl + clr, h = 0.8);
    for (i = [0 : lug_n - 1]) rotate([0, 0, i * 360 / lug_n]) {
        // zvislý vstup (otvorený hore)
        rotate([0, 0, -a]) rotate_extrude(angle = 2 * a)
            translate([ri, lug_floor]) square([rc - ri, collar_T + 1 - lug_floor]);
        // vodorovná vetva s klesajúcim stropom a poistkou
        for (phi = [a : st : lock_angle + a - st / 2])
            rotate([0, 0, phi]) rotate_extrude(angle = st + 0.05)
                translate([ri, lug_floor]) square([rc - ri, cw(phi, a) - lug_floor]);
    }
}

// vnútorný závit na vrchu segmentu
module top_band(R, rbore, h) {
    difference() {
        union() {
            translate([0, 0, h - thread_h]) ring_shape(R, 1, thread_h);
            d = rbore - (rt_hole(R) - th_e);
            if (d > 0) translate([0, 0, h - thread_h - d])
                difference() {
                    cylinder(r = R - 0.01, h = d);
                    translate([0, 0, -0.01]) cylinder(r1 = rbore, r2 = rbore - d, h = d + 0.02);
                }
        }
        translate([0, 0, h - thread_h - 0.01]) thread_solid(rt_hole(R), thread_h + 1);
    }
}

// krúžok: čap so závitom, telo zarovno, kolíky, plná príruba s lôžkom pre G2
module lug_ring(R) {
    si = sp_in(R);
    difference() {
        union() {
            cylinder(r = R - 0.5, h = fl_z);
            translate([0, 0, fl_z]) cylinder(r = r_fl(R), h = fl_t);
            translate([0, 0, -thread_h + 0.4]) thread_solid(rt_sp(R), thread_h - 0.4);
            for (i = [0 : lug_n - 1]) rotate([0, 0, i * 360 / lug_n])
                translate([R - 1, -lug_w / 2, 0]) cube([lug_d + 1, lug_w, lug_h]);
        }
        translate([0, 0, -thread_h - 1]) cylinder(r = si, h = thread_h + fl_z + fl_t + 2);
        translate([0, 0, -thread_h + 0.39]) cylinder(r1 = si + 0.8, r2 = si, h = 0.8);
        // lôžko pre G2
        translate([0, 0, fl_z - 0.01]) ring_shape(rec_out(R), rec_in(R), recess);
    }
}

module gasket(ri, ro, t) ring_shape(ro, ri, t);

// ---------- dekorácia: 9 srdiečok ----------
module heart2d(s) translate([0, -s * 0.12]) rotate(-45) union() {
    square(s * 0.55, center = true);
    translate([-s * 0.275, 0]) circle(d = s * 0.55);
    translate([0, s * 0.275]) circle(d = s * 0.55);
}

module decoration(R, h)
    intersection() {
        translate([0, 0, 1]) ring_shape(R + relief, R - 1, h - 2);
        union() for (k = [0 : hearts_count - 1])
            rotate([0, 0, k * 360 / hearts_count])
                translate([R - 1.5, 0, h * heart_z]) rotate([90, 0, 90])
                    linear_extrude(relief + 3) heart2d(heart_size);
    }

// ---------- diely ----------
module bottom() {
    rbore = R1 - wall;
    difference() {
        union() {
            cylinder(r = R1, h = H1 - thread_h);
            cylinder(r1 = foot_r, r2 = foot_r - 1.5, h = foot_h);
        }
        translate([0, 0, floor_t]) cylinder(r = rbore, h = H1);
    }
    top_band(R1, rbore, H1);
}

module upper_segment(Rl, h, band) {
    R = Rup(Rl);
    difference() {
        union() {
            ring_shape(R, rb(Rl), band ? h - thread_h : h);
            ring_shape(R, Rl + clr, collar_T);
        }
        collar_cuts(Rl);
    }
    if (band) top_band(R, rb(Rl), h);
}

module middle() upper_segment(R1, H2, true);
module top() {
    upper_segment(R2, H3, false);
    if (decoration_on) color(deco_color) decoration(R3, H3);
}
module ring_bottom() lug_ring(R1);
module ring_middle() lug_ring(R2);

TH = 25;
module test_lower() {
    rbore = R1 - wall;
    difference() {
        cylinder(r = R1, h = TH - thread_h);
        translate([0, 0, floor_t]) cylinder(r = rbore, h = TH);
    }
    top_band(R1, rbore, TH);
}
TU_water = 25;   // výška steny test_upper nad krúžkom = vodný stĺpec nad spojom
module test_upper() upper_segment(R1, collar_T + ring_top + TU_water, false);

// ---------- zostavy ----------
// spoj na vrchu nižšieho segmentu (z = jeho vrch), ex = rozloženie
module joint(Rl, a, ex) {
    color(c_ring) translate([0, 0, ex * 1.0]) rotate([0, 0, a]) lug_ring(Rl);
    color("Black") translate([0, 0, fl_z + ex * 1.6 - (ex > 0 ? gasket_t + 2 : lock_gap)])
        gasket(g_in(Rl), g_out(Rl), ex > 0 ? gasket_t : gasket_t - comp);
}

module assembly(ext = extended, ex = 0) {
    zm = ext ? H1 + drop : foot_h;
    zt = ext ? zm + H2 + drop : foot_h;
    a  = ext ? lock_angle : 0;
    color(c_bottom) bottom();
    translate([0, 0, H1]) joint(R1, a, ex);
    color(c_middle) translate([0, 0, zm + ex * 2.4]) middle();
    translate([0, 0, zm + H2 + ex * 2.4]) joint(R2, a, ex);
    translate([0, 0, zt + ex * 4.8]) {
        color(c_top) upper_segment(R2, H3, false);
        if (decoration_on) color(deco_color) decoration(R3, H3);
    }
}

module test_set(ex) {
    color("SteelBlue") test_lower();
    translate([0, 0, TH]) joint(R1, ex > 0 ? 0 : lock_angle, ex);
    color("AliceBlue") translate([0, 0, TH + drop + ex * 2.4]) test_upper();
}

// otočenie hore nohami do polohy na tlač (h = horný okraj dielu)
module flip(h) if (print_ready) translate([0, 0, h]) rotate([180, 0, 0]) children(); else children();

module cut() difference() { children(); translate([0, -300, -50]) cube([600, 600, 600]); }

// 2D obrysy podložiek G2 na rezanie (export DXF/SVG), vojde sa na A4
module gaskets_2d() {
    rr = [[g_in(R1), g_out(R1), "G2 spodok"], [g_in(R2), g_out(R2), "G2 stred"]];
    pos = [[g_out(R1), 0], [2 * g_out(R1) + 10 + g_out(R2), 0]];
    for (k = [0:1]) translate(pos[k]) {
        difference() { circle(r = rr[k][1]); circle(r = rr[k][0]); }
        if (gasket_labels) {
            text(rr[k][2], size = 4, halign = "center", valign = "center");
            translate([0, -7]) text("tolerancia +-1,5 mm", size = 3, halign = "center", valign = "center");
        }
    }
}

if (part == "assembly") assembly();
else if (part == "section") cut() assembly();
else if (part == "exploded") assembly(true, 20);
else if (part == "test_set") test_set(20);
else if (part == "test_section") cut() test_set(0);
else if (part == "bottom") bottom();
else if (part == "middle") flip(H2) middle();
else if (part == "top") flip(H3) top();
else if (part == "ring_bottom") flip(ring_top) ring_bottom();
else if (part == "ring_middle") flip(ring_top) ring_middle();
else if (part == "test_lower") test_lower();
else if (part == "test_upper") flip(collar_T + ring_top + TU_water) test_upper();
else if (part == "gaskets_2d") gaskets_2d();
else if (part == "gasket_g2_bottom") gasket(g_in(R1), g_out(R1), gasket_t);
else if (part == "gasket_g2_middle") gasket(g_in(R2), g_out(R2), gasket_t);
