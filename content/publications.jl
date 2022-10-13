######################################
# publications.html
#   option 1: background for the page is set to start with white to emphasize the items
######################################
page(
    title="publications",
    background=bg_white,
    sections=[
        Section(
            title="Publications",
            items=Publications("ref/publications.bib")
        )
    ]
)