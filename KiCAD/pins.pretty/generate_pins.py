# -*- coding: utf-8 -*-

import os
import re

from kicad_mod import KicadMod


dir_kicad_pins = "/usr/share/kicad/modules/Pin_Headers.pretty/"
dir_my_pins = "./"
re_filenames = re.compile(r"Pin_Header_Straight_(\d)x(\d\d).kicad_mod")


modules = []
for filename in os.walk(dir_kicad_pins).next()[2]:
    matches = re_filenames.match(filename)
    if matches:
        modules.append({
            'input_filename': filename,
            'module': KicadMod(dir_kicad_pins + filename),
            'shape': matches.groups()
        })


for module in modules:

    for pad in module['module'].pads:
        pad['drill']['size'] = {'x': 1., 'y': 1.}

    module['module'].name = "pin-{}x{}".format(module['shape'][0], module['shape'][1])
    module['module'].save(filename="{}{}.kicad_mod".format(dir_my_pins, module['module'].name))
