[DSS Extensions](https://github.com/dss-extensions) enables cross-platform (Windows, Linux, macOS) multi-language interfaces and extensions for EPRI's [OpenDSS](http://smartgrid.epri.com/SimulationTool.aspx).
OpenDSS is an open-source distribution system simulator.

### Introduction

The extensions is built up of three layers:

![](https://raw.githubusercontent.com/dss-extensions/dss_capi/master/docs/images/repomap.png)

Firstly, there is the official OpenDSS SVN repository, [electricdss](https://sourceforge.net/p/electricdss/code/HEAD/tree/), hosted on SourceForge.net. A filtered copy, contaning only source code files, is provided on GitHub on the [opendss-official-svn branch](https://github.com/dss-extensions/dss_capi/tree/opendss-official-svn).

Secondly, the [DSS C-API](https://github.com/dss-extensions/dss_capi) library exposes the OpenDSS engine in `electricdss` in a plain C interface.
The interface tries to be feature compatible with the COM interface from the official OpenDSS distribution. What was initially intended as a API-only project has evolved to contain many customizations and extensions.

Lastly, there are several language specific extensions are built on top of DSS C-API.
The following language specific extensions mimic the `COM` interface. As such, they can be used as drop-in replacements for code that already uses the official COM module on Windows, enabling multi-platform usage.

- [DSS_Python](https://github.com/dss-extensions/dss_python): Python interface
- [DSS_MATLAB](https://github.com/dss-extensions/dss_matlab): MATLAB interface
- [DSS_Sharp](https://github.com/dss-extensions/dss_sharp): C#/.NET interface

Additionally, OpenDSSDirect interfaces have been built on top of DSS C-API and the language extensions.
See the following for more information:

- [OpenDSSDirect.py](https://github.com/dss-extensions/OpenDSSDirect.py)
- [OpenDSSDirect.jl](https://github.com/dss-extensions/OpenDSSDirect.jl)

These `opendssdirect` or `odd` interfaces are flexible to adapt and are not restricted by the COM API limitations.
They are intended to provide a more Pythonic, Julian or language geared API. Although these projects now use DSS C-API, these projects originally used the official OpenDSSDirect.DLL interface, hence their names.

Finally, there's slightly modified tests and examples from the official OpenDSS distribution [here](https://github.com/dss-extensions/electricdss-tst).

If you find yourself in need of a certain feature, feel free to open an issue in the respective repository.


