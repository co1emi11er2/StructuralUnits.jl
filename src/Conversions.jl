# ----------------
# ft
# ----------------
"""
    to_ft(x)

Converts x to a Unitful quantity with unit `ft`. 
"""
to_ft(x::Real) = x * ft
to_ft(x::String) = parse(Float64, x) * ft
to_ft(x::Quantity) = x
function to_ft(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# inch
# ----------------
"""
    to_inch(x)

Converts x to a Unitful quantity with unit `inch`. 
"""
to_inch(x::Real) = x * inch
to_inch(x::String) = parse(Float64, x) * inch
to_inch(x::Quantity) = x
function to_inch(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# inch2
# ----------------
"""
    to_inch2(x)

Converts x to a Unitful quantity with unit `inch^2`. 
"""
to_inch2(x::Real) = x * inch^2
to_inch2(x::String) = parse(Float64, x) * inch^2
to_inch2(x::Quantity) = x
function to_inch2(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# pcf
# ----------------
"""
    to_pcf(x)

Converts x to a Unitful quantity with unit `pcf`. 
"""
to_pcf(x::Real) = x * pcf
to_pcf(x::String) = parse(Float64, x) * pcf
to_pcf(x::Quantity) = x
function to_pcf(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# kcf
# ----------------
"""
    to_kcf(x)

Converts x to a Unitful quantity with unit `kcf`. 
"""
to_kcf(x::Real) = x * kcf
to_kcf(x::String) = parse(Float64, x) * kcf
to_kcf(x::Quantity) = x
function to_kcf(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# plf
# ----------------
"""
    to_plf(x)

Converts x to a Unitful quantity with unit `plf`. 
"""
to_plf(x::Real) = x * plf
to_plf(x::String) = parse(Float64, x) * plf
to_plf(x::Quantity) = x
function to_plf(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# klf
# ----------------
"""
    to_klf(x)

Converts x to a Unitful quantity with unit `plf`. 
"""
to_klf(x::Real) = x * klf
to_klf(x::String) = parse(Float64, x) * klf
to_klf(x::Quantity) = x
function to_klf(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# ksi
# ----------------
"""
    to_ksi(x)

Converts x to a Unitful quantity with unit `ksi`. 
"""
to_ksi(x::Real) = x * ksi
to_ksi(x::String) = parse(Float64, x) * ksi
to_ksi(x::Quantity) = x
function to_ksi(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# mph
# ----------------
"""
    to_mph(x)

Converts x to a Unitful quantity with unit `mph`. 
"""
to_mph(x::Real) = x * mph
to_mph(x::String) = parse(Float64, x) * mph
to_mph(x::Quantity) = x
function to_mph(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end


# ----------------
# deg
# ----------------
"""
    to_deg(x)

Converts x to a Unitful quantity with unit `deg`. 
"""
to_deg(x::Real) = x * °
to_deg(x::String) = parse(Float64, x) * °
to_deg(x::Quantity) = x
function to_deg(x) 
    ErrorException("Incorrect Type. Expected float, int, or string, got $(typeof(x))")
end