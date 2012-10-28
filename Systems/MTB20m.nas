###############################################################################
##
## Swedish Navy 20m-class motor torpedo boat for FlightGear.
##
##  Copyright (C) 2012  Anders Gidenstam  (anders(at)gidenstam.org)
##  This file is licensed under the GPL license v2 or later.
##
###############################################################################


###############################################################################
var ground = func {
    setprop("/fdm/jsbsim/hydro/water-level-ft",
            getprop("/position/ground-elev-ft"));

    settimer(ground, 0.0);
}

var _MTB20m_initialized = 0;
setlistener("/sim/signals/fdm-initialized", func {
    if (_MTB20m_initialized) return;
    aircraft.livery.init("Aircraft/MTB_20m/Models/Liveries");
    settimer(ground, 0.0);
    print("Hydrodynamics initialized.");
    _MTB20m_initialized = 1;
});

###############################################################################
# On-screen displays
var left  = screen.display.new(20, 10);
var right = screen.display.new(-300, 10);

left.add("/fdm/jsbsim/sim-time-sec");
left.add("/orientation/heading-magnetic-deg");
left.add("/fdm/jsbsim/hydro/true-course-deg");
left.add("/fdm/jsbsim/hydro/beta-deg");
left.add("/fdm/jsbsim/hydro/pitch-deg");
left.add("/fdm/jsbsim/hydro/roll-deg");
left.add("/fdm/jsbsim/hydro/height-agl-ft");
left.add("/fdm/jsbsim/inertia/cg-x-in");
left.add("/fdm/jsbsim/inertia/cg-z-in");
left.add("/fdm/jsbsim/fcs/rudder-pos-norm");
left.add("/fdm/jsbsim/hydro/fdrag-lbs");
left.add("/fdm/jsbsim/hydro/fbz-lbs");
left.add("/fdm/jsbsim/hydro/X/force-lbs");
left.add("/fdm/jsbsim/hydro/Y/force-lbs");
left.add("/fdm/jsbsim/hydro/yaw-moment-lbsft");
left.add("/fdm/jsbsim/hydro/pitch-moment-lbsft");
left.add("/fdm/jsbsim/hydro/roll-moment-lbsft");
#left.add("/fdm/jsbsim/");
#left.add("/fdm/jsbsim/");

right.add("/fdm/jsbsim/hydro/v-kt");
right.add("/fdm/jsbsim/hydro/vbx-fps");
right.add("/fdm/jsbsim/hydro/vby-fps");
right.add("/fdm/jsbsim/hydro/qbar-u-psf");
right.add("/fdm/jsbsim/hydro/Frode-number");
right.add("/fdm/jsbsim/hydro/speed-length-ratio");
right.add("/fdm/jsbsim/propulsion/engine[0]/engine-rpm");
right.add("/fdm/jsbsim/propulsion/engine[0]/power-hp");
right.add("/fdm/jsbsim/propulsion/propeller[0]/power-required-hp");
right.add("/fdm/jsbsim/propulsion/engine[0]/required-power-coefficient");
right.add("/fdm/jsbsim/propulsion/propeller[0]/thrust-lbs");
right.add("/fdm/jsbsim/propulsion/propeller[0]/advance-ratio");
right.add("/fdm/jsbsim/propulsion/engine[1]/engine-rpm");
right.add("/fdm/jsbsim/propulsion/engine[1]/power-hp");
right.add("/fdm/jsbsim/propulsion/propeller[1]/power-required-hp");
right.add("/fdm/jsbsim/propulsion/engine[1]/required-power-coefficient");
right.add("/fdm/jsbsim/propulsion/propeller[1]/thrust-lbs");
right.add("/fdm/jsbsim/propulsion/propeller[1]/advance-ratio");
#right.add("/fdm/jsbsim/");

###############################################################################
# Control overrides.

# The clutch must be disengaged while starting.
controls.startEngine = func(v = 1, which...) {
    if (!v and !size(which)) {
        props.setAll("/controls/engines/engine", "clutch", 1);
        return props.setAll("/controls/engines/engine", "starter", 0);
    }
    if(size(which)) {
        foreach(var i; which)
            foreach(var e; controls.engines)
                if(e.index == i) {
                    e.controls.getNode("starter").setBoolValue(v);
                    e.controls.getNode("clutch").setDoubleValue(v ? 0.0 : 1.0);
                }
    } else {
        foreach(var e; controls.engines)
            if(e.selected.getValue()) {
                e.controls.getNode("starter").setBoolValue(v);
                e.controls.getNode("clutch").setDoubleValue(v ? 0.0 : 1.0);
            }
    }
}


###############################################################################
