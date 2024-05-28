# StructuralUnits

<!-- #[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://co1emi11er2.github.io/StructuralUnits.jl/stable/) -->
<!-- [![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://co1emi11er2.github.io/StructuralUnits.jl/dev/) -->
[![Build Status](https://github.com/co1emi11er2/StructuralUnits.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/co1emi11er2/StructuralUnits.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/co1emi11er2/StructuralUnits.jl?svg=true)](https://ci.appveyor.com/project/co1emi11er2/StructuralUnits-jl)
[![Coverage](https://codecov.io/gh/co1emi11er2/StructuralUnits.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/co1emi11er2/StructuralUnits.jl)
[![Coverage](https://coveralls.io/repos/github/co1emi11er2/StructuralUnits.jl/badge.svg?branch=main)](https://coveralls.io/github/co1emi11er2/StructuralUnits.jl?branch=main)

## Introduction

This is a package for Structural Engineers in the US. It is a small package that extends the [Unitful.jl](https://github.com/PainterQubits/Unitful.jl) package. It exports a few units and changes promotion defaults in the Unitful package. It re-exports [Unitful](https://github.com/PainterQubits/Unitful.jl) and [UnitfulLatexify](https://github.com/gustaphe/UnitfulLatexify.jl), so there is no need to call `Using Unitful`.

## Defined Units

Below are a few tables that specify the constants that are exported by the package. These constants can then be used throughout your project.

### Length

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `ft`    | u"ft"|
| `inch` | u"inch" |

### Force

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `kip` | 1000u"lbf" |

### Stress

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `ksi` | 1\*`kip`/(1\*`inch`^2) |
| `ksf` | 1\*`kip`/(1\*`ft`^2) |

### Density

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `kcf` | 1\*`kip`/(1\*`ft`^3) |
| `pcf` | 1\*u"lbf"/(1\*`ft`^3) |

### Linear Weight

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `klf` | 1\*`kip`/(1\*`ft`) |
| `plf` | 1\*u"lbf"/(1\*`ft`) |

### Speed

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `mph` | 1\*u"mi"/(1\*u"hr") |

### Angle

| Constant/Variable | Unitful Definition |
| ---- | ---- |
| `°` | u"°" |

## Promotion

In [Unitful](https://github.com/PainterQubits/Unitful.jl), certain dimensions can automatically promote to a preferred set of units. This package changes those settings to be more in line with prefferences of structural engineers in the US. Note that autopromotion happens mainly with addition or subtraction (not multiplication). Below are a few simple examples of promotion:

### Promotion through addition

Based on the StructuralUnits preferences, `ft` is the preferred unit for a length dimension:

```julia
julia> 1.0ft + 6.0inch
1.5 ft
```

You can see how adding dimensions with two different units will auto promote to the preferred unit (the preferred unit for Unitful is `m` so this has been changed to `ft` for this package).

### Promotion through multiplication

```julia
julia> 1.0ft*6.0inch
6.0 ft inch
```

You can see how multiplying dimensions with different units does not automatically promote the units to the preferred unit for that specific dimension (which in this case would be an area dimension that was derived in this package). You can however promote this manually using the `|>` operator.

```julia
julia> 1.0ft*6.0inch |> ft^2
0.5 ft^2
```

### Preferred Units for Promotion

Below is a list of the preferred units to promote to when auto promotion occurs.
| Dimension | Unitful Definition |
| ---- | ---- |
| Length    | `ft`|
| Area | `inch`^2 |
| Volume | `ft`^3 |
| Force | `kip` |
| Stress | `ksi` |
| Density | `kcf` |
| Moment | `kip`*`ft` |
| UDLoad | `klf` |

## Contribution

This package may be somewhat difficult to contribute too given the fact that it is highly opinionated for its preferred units. This tool will mainly be used internally, so prefferences could change as we start to use the package more. Feel free to view the source code as well as use the package if it fits your needs. The source code is less than 100 lines of code, so I am sure you can use it to create your own units package if needed.
