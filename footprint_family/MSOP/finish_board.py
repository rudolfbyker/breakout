#!/usr/bin/env python

"""
Modify the PCB
Some things are hard to do in KiCAD, so we do them in a script
"""

from pcbnew import *

input_filename= './osh-park_2_layer_standard_order.kicad_pcb'
output_filename= './msop.kicad_pcb'

board = LoadBoard(input_filename)
modules = board.GetModules()

for module in modules:

    module.Value().SetVisible(False)
    module.Reference().SetVisible(False)

board.Save(output_filename)
