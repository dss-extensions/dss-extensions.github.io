[DSS Extensions](https://github.com/dss-extensions) enables cross-platform (Windows, Linux, macOS) multi-language interfaces and extensions for EPRI's [OpenDSS](http://smartgrid.epri.com/SimulationTool.aspx).
OpenDSS is an open-source distribution system simulator.

### Introduction

The extensions is built up of three layers:

![](https://raw.githubusercontent.com/dss-extensions/dss_capi/master/docs/images/repomap.png)

Firstly, there is the official OpenDSS SVN repository, [electricdss](https://sourceforge.net/p/electricdss/code/HEAD/tree/), hosted on SourceForge.net. A filtered copy, contaning only source code files, is provided on GitHub on the [opendss-official-svn branch](https://github.com/dss-extensions/dss_capi/tree/opendss-official-svn) of the DSS C-API repository.

Secondly, the [DSS C-API](https://github.com/dss-extensions/dss_capi) library exposes a customized, extended OpenDSS engine, adapted from the official OpenDSS code from `electricdss`. As the name suggests, this library provides a plain C interface.
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

Finally, there are slightly modified tests and examples from the official OpenDSS distribution [here](https://github.com/dss-extensions/electricdss-tst).

If you find yourself in need of a certain feature, feel free to open an issue in the respective repository.

### Documentation

At the moment, quality and volume of documentation across the projects vary. 

For the low-level DSS C-API reference, there are files available at the [`docs`](https://github.com/dss-extensions/dss_capi/tree/0.10.x/docs) folder, and the [C header](https://github.com/dss-extensions/dss_capi/blob/0.10.x/include/v7/dss_capi.h) itself is commented for most functions.

DSS_Python and DSS_MATLAB try to follow and be compatible with the official COM implementation. As such, users can employ the official OpenDSS COM documentation for a general reference.

OpenDSSDirect.py's reference is available on https://dss-extensions.org/OpenDSSDirect.py/ and the docs for OpenDSSDirect.jl are in https://dss-extensions.org/OpenDSSDirect.jl/stable/

An important reminder is that most of the original COM API functionality is exposed in all projects. As expected, the calling convention and general package organization does change from package to package. The API extensions, which include many extra functions and toggles, try to follow the conventions of each package. See the [known differences](https://github.com/dss-extensions/dss_capi/blob/0.10.x/docs/known_differences.md) document for an overview of the changes you can expected from using a DSS Extensions project instead of the official OpenDSS.

Most of the documentation focuses on the API facet. For a reference of the OpenDSS commands and properties at script level, on the DSS basic scripting language, users can refer to the official OpenDSS documentation, or use [DSS Extensions: OpenDSS Commands and Properties](https://github.com/dss-extensions/dss_capi/blob/master/docs/dss_properties.md) as a quick reference until we organize a general documentation covering important aspects of the projects listed here.

