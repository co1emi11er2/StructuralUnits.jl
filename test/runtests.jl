using TestItems, TestItemRunner

if isdefined(@__MODULE__,:LanguageServer)
    include("../src/StructuralUnits.jl")
end

@testitem "Unit Conversions  " begin include("unit_conversions.jl") end
@testitem "Unit Promotions   " begin include("unit_promotions.jl") end
@testitem "Conversions       " begin include("Conversions.jl") end

@run_package_tests verbose=true