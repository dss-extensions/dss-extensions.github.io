# DSS Extensions

[DSS Extensions](https://github.com/dss-extensions) enables cross-platform multi-language interfaces and extensions for EPRI's [OpenDSS](http://smartgrid.epri.com/SimulationTool.aspx).
OpenDSS is an open-source distribution system simulator.

## # Introduction

The extensions is built up of three layers:

![](https://raw.githubusercontent.com/dss-extensions/dss_capi/master/docs/images/repomap.svg?sanitize=true)

Firstly, [electricdss-src](https://github.com/dss-extensions/electricdss-src) contains the official OpenDSS source code with specific modifications to enable cross-platform capabilities of all the OpenDSS features.

Secondly, [DSS C-API](https://github.com/dss-extensions/dss_capi) exposes the OpenDSS/OpenDSS-PM engine in `electricdss-src` in a plain C interface.
This interface tries to be feature compatible with the COM interface from the official OpenDSS distribution.

Lastly, language specific extensions are built on top of `dss_capi`.
These language specific extensions mimic the `dss_capi` interface.

- [dss_python](https://github.com/dss-extensions/dss_python): Python interface
- [dss_matlab](https://github.com/dss-extensions/dss_matlab): MATLAB interface
- [dss_sharp](https://github.com/dss-extensions/dss_sharp): C# interface

Additionally, OpenDSSDirect interfaces have been built on top of `dss_capi` and the language extensions.
See the following for more information:

- [OpenDSSDirect.py](https://github.com/dss-extensions/OpenDSSDirect.py)
- [OpenDSSDirect.jl](https://github.com/dss-extensions/OpenDSSDirect.jl)

These `opendssdirect` or `odd` interfaces are flexible to adapt and are not restricted by COM limitations.
They are intended to provide a more Pythonic, Julian or language geared API.

Finally, there's slightly modified tests and examples from the official OpenDSS distribution [here](https://github.com/dss-extensions/electricdss-tst)

If you find yourself in need of a certain feature, feel free to open an issue in the respective repository.


