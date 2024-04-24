using StructuralUnits
using Documenter

DocMeta.setdocmeta!(StructuralUnits, :DocTestSetup, :(using StructuralUnits); recursive=true)

makedocs(;
    modules=[StructuralUnits],
    authors="Cole Miller",
    sitename="StructuralUnits.jl",
    format=Documenter.HTML(;
        canonical="https://co1emi11er2.github.io/StructuralUnits.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/co1emi11er2/StructuralUnits.jl",
    devbranch="main",
)
