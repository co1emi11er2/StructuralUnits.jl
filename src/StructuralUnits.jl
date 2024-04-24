module StructuralUnits

# Write your package code here.
using Unitful

@unit kip "kip" Kip 1000*u"lbf" false
@unit ksi "ksi" KSI 1*u"kip"/(1*u"inch^2") false
@unit ksf "ksf" KSF 1*u"kip"/(1*u"ft^2") false

Unitful.preferunits(u"ft")

@derived_dimension Area Unitful.𝐋^2
@derived_dimension Volume Unitful.𝐋^3
@derived_dimension Force Unitful.𝐋^2*Unitful.𝐌*Unitful.𝐓^-2
@derived_dimension Moment Unitful.𝐋^2*Unitful.𝐌*Unitful.𝐓^-2
@derived_dimension Stress Unitful.𝐋*Unitful.𝐌*Unitful.𝐓^-2/Unitful.𝐋^2

Unitful.promote_unit(::S, ::T) where {S<:Main.AreaUnits, T<:Main.AreaUnits} = u"inch^2"
Unitful.promote_unit(::S, ::T) where {S<:Main.AreaUnits, T<:Main.AreaUnits} = u"ft^3"
Unitful.promote_unit(::S, ::T) where {S<:Main.ForceUnits, T<:Main.ForceUnits} = u"kip"
Unitful.promote_unit(::S, ::T) where {S<:Main.MomentUnits, T<:Main.MomentUnits} = u"kip*ft"
Unitful.promote_unit(::S, ::T) where {S<:Main.StressUnits, T<:Main.StressUnits} = u"ksi"

const localpromotion = copy(Unitful.promotion)
function __init__()
    Unitful.register(YourModule)
    merge!(Unitful.promotion, localpromotion)
end



end
