module StructuralUnits

using Reexport
@reexport using Unitful
@reexport using UnitfulLatexify

export ft, inch, kip, ksi, ksf, klf, plf, mph, kcf, pcf, °

Unitful.register(StructuralUnits)
@unit kip "kip" Kip 1000*u"lbf" false
@unit ksi "ksi" KSI 1*u"kip"/(1*u"inch^2") false
@unit ksf "ksf" KSF 1*u"kip"/(1*u"ft^2") false
@unit klf "klf" KLF 1*u"kip"/(1*u"ft") false
@unit plf "plf" PLF 1*u"lbf"/(1*u"ft") false
@unit mph "mph" MPH 1*u"mi"/(1*u"hr") false
@unit kcf "kcf" KCF 1*u"kip"/(1*u"ft^3") false
@unit pcf "pcf" PCF 1*u"lbf"/(1*u"ft^3") false

Unitful.preferunits(u"ft")

@derived_dimension Area Unitful.𝐋^2
@derived_dimension Volume Unitful.𝐋^3
@derived_dimension Density Unitful.𝐋*Unitful.𝐌*Unitful.𝐓^-2*Unitful.𝐋^-3
@derived_dimension Force Unitful.𝐋*Unitful.𝐌*Unitful.𝐓^-2
@derived_dimension Moment Unitful.𝐋^2*Unitful.𝐌*Unitful.𝐓^-2
@derived_dimension Stress Unitful.𝐋*Unitful.𝐌*Unitful.𝐓^-2/Unitful.𝐋^2
@derived_dimension UDLoad Unitful.𝐋*Unitful.𝐌*Unitful.𝐓^-2/Unitful.𝐋

Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.AreaUnits, T<:StructuralUnits.AreaUnits} = u"inch^2"
Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.VolumeUnits, T<:StructuralUnits.VolumeUnits} = u"ft^3"
Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.DensityUnits, T<:StructuralUnits.DensityUnits} = u"kcf"
Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.ForceUnits, T<:StructuralUnits.ForceUnits} = u"kip"
Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.MomentUnits, T<:StructuralUnits.MomentUnits} = u"kip*ft"
Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.StressUnits, T<:StructuralUnits.StressUnits} = u"ksi"
Unitful.promote_unit(::S, ::T) where {S<:StructuralUnits.UDLoadUnits, T<:StructuralUnits.UDLoadUnits} = u"klf"

const ft = u"ft"
const inch = u"inch"
const kip = u"kip"
const ksi = u"ksi"
const ksf = u"ksf"
const klf = u"klf"
const plf = u"plf"
const mph = u"mph"
const kcf = u"kcf"
const pcf = u"pcf"
const ° = u"°"

const localpromotion = copy(Unitful.promotion)
function __init__()
    Unitful.register(StructuralUnits)
    merge!(Unitful.promotion, localpromotion)
end



end
