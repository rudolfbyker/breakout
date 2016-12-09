# -*- coding: utf-8 -*-

import os
import re

from kicad_mod import KicadMod


dir_kicad_pins = "/usr/share/kicad/modules/Pin_Headers.pretty/"
dir_my_pins = "./"
re_filenames = re.compile(r"Pin_Header_Straight_(\d)x(\d\d).kicad_mod")


for filename in os.walk(dir_kicad_pins).next()[2]:
    matches = re_filenames.match(filename)
    if matches:

        module = KicadMod(dir_kicad_pins + filename)
        shape = matches.groups()

        for pad in module.pads:
            pad['drill']['size'] = {'x': 1., 'y': 1.}

        module.name = "pin-{}x{}".format(shape[0], shape[1])
        module.description = "Header pin. 2.54mm pitch. 1mm drills. Shape {}x{}".format(shape[0], shape[1])
        module.value['value'] = module.name
        module.save(filename="{}{}.kicad_mod".format(dir_my_pins, module.name))
