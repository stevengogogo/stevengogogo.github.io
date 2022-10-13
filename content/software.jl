######################################
# software.html: github (GitRepo)
#   option 1: Section is hidden (to avoid pulling info from GitHub at each run)
#   option 2: background for the page is set to start with white to emphasize the items
######################################
github = GitRepo(
    "stevengogogo/RetroSignalModel.jl",
    "stevengogogo/FindSteadyStates.jl",
    "stevengogogo/ReportTex",
    "stevengogogo/EstimHill.jl",
    #"NTUMitoLab/MitochondrialDynamics"
)

page(
    title="software",
    background=bg_white,
    sections=[
        Section(
            title="Software",
            hide=false,
            items=github,
        ),
    ]
)
