remove("/home/tamas/femm-from-py/examples/electrostatic_data.csv")
newdocument(1)
file_out = openfile("/home/tamas/femm-from-py/examples/electrostatic_data.csv", "w")
ei_probdef("inches", "planar", 1e-08, 1, 30)
ei_addnode(0.0, 0.0)
ei_addnode(0.056, 0.0)
ei_addnode(0.056, 0.164)
ei_addnode(0.056, 0.244)
ei_addnode(0.0, 0.244)
ei_addnode(0.0, 0.08)
ei_addsegment(0.0, 0.0, 0.056, 0.0)
ei_addsegment(0.0, 0.0, 0.056, 0.0)
ei_addsegment(0.056, 0.0, 0.056, 0.164)
ei_addsegment(0.056, 0.0, 0.056, 0.164)
ei_addsegment(0.056, 0.164, 0.056, 0.244)
ei_addsegment(0.056, 0.164, 0.056, 0.244)
ei_addsegment(0.056, 0.244, 0.0, 0.244)
ei_addsegment(0.056, 0.244, 0.0, 0.244)
ei_addsegment(0.0, 0.244, 0.0, 0.08)
ei_addsegment(0.0, 0.244, 0.0, 0.08)
ei_addsegment(0.0, 0.08, 0.0, 0.0)
ei_addsegment(0.0, 0.08, 0.0, 0.0)
ei_addmaterial("air", 1.0, 1.0, 0.0)
ei_addblocklabel(0.028, 0.122)
ei_selectlabel(0.028, 0.122)
ei_setblockprop("air", 1, 0.0, 0)
ei_clearselected()
ei_addboundprop("GND", 0.0, 0, 0, 0, 0)
ei_addboundprop("U0", 2500.0, 0, 0, 0, 0)
ei_selectsegment(0.028, 0.0)
ei_setsegmentprop("GND", None, 0, 0, 0, "<None>")
ei_clearselected()
ei_selectsegment(0.056, 0.082)
ei_setsegmentprop("GND", None, 0, 0, 0, "<None>")
ei_clearselected()
ei_selectsegment(0.028, 0.244)
ei_setsegmentprop("U0", None, 0, 0, 0, "<None>")
ei_clearselected()
ei_selectsegment(0.0, 0.162)
ei_setsegmentprop("U0", None, 0, 0, 0, "<None>")
ei_clearselected()
ei_saveas("/home/tamas/femm-from-py/examples/double_l_shape.fee")
ei_analyze(1)
ei_loadsolution()
V, Dx, Dy, Ex, Ey, ex, ey, nrg = eo_getpointvalues(0.028, 0.122)
write(file_out, "x = ", 0.028, "y = ",0.122, "E_x =", Ex,"\n")
write(file_out, "x = ", 0.028, "y = ",0.122, "E_y =", Ey, "\n")
