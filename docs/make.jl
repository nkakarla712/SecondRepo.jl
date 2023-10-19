using SecondRepo
using Documenter

DocMeta.setdocmeta!(SecondRepo, :DocTestSetup, :(using SecondRepo); recursive=true)

makedocs(;
    modules=[SecondRepo],
    authors="Nikhil <nkakarla@mit.edu> and contributors",
    repo="https://github.com/nkakarla712/SecondRepo.jl/blob/{commit}{path}#{line}",
    sitename="SecondRepo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://nkakarla712.github.io/SecondRepo.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nkakarla712/SecondRepo.jl",
    devbranch="main",
)
