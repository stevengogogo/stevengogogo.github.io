######################################
# index.html
# biography
# academic positions
# education and training
# honors, awards, and grants
######################################

work_cards = Deck(
    Card(
        "Aug. 2022",
        "Current",
        "Ph.D. student of ECE at Texas A&M University",
        "Scientific Machine Learning Lab (advisor: $(link("Dr. Ulisses Braga-Neto","https://engineering.tamu.edu/electrical/profiles/ubraganeto.html"))"
    ),
    Card(
        "May 2021",
        "Dec. 2021",
        "Intern at $(link("Pumas-AI, Inc","https://pumas.ai/company/about-us"))",
        "Scientical machine learning (SciML) and pharmaceutical application"
    ),
    Card(
        "June 2017",
        "Feb. 2021",
        "Undergraduate & Master Researcher",
        "Biological Systems & Simulation Lab, National Taiwan Univ. $(link("Dr. An-Chi Wei","https://ntubmse.com/people/"))"
        ),
    Card(
        "June 2020",
        "Sept. 2020",
        "Clerk of Dentistry",
        "Taipei City Hospital. Instructed by $(link("Dr. I-Chiang Chou", "https://www.semanticscholar.org/author/I-chiang-Chou/9930906"))"
    ),
    Card(
        "June 2018",
        "Sept. 2018",
        "Research Intern",
        "Cardiovascular Biophysics Lab, Johns Hopkins Univ. $(link("Dr. Brian O'Rourke","https://www.hopkinsmedicine.org/profiles/details/brian-orourke"))"
    ),
    Card(
        "June 2018",
        "Sept. 2018",
        "High School Research",
        "Evolutionary Genetics Lab, Academia Sinica. $(link("Dr. Jun-Yi Leu","http://www.imb.sinica.edu.tw/~jleu/index.html"))"
    )
)

education_cards = Deck(
    Card(
        "Master of Science",
        "2018-2021",
        "BEBI, EECS, National Taiwan University",
        "GPA: 4.12/4.3"
    ),
    Card(
        "Bachelor of Electrical Engineering",
        "2014-2018",
        "National Taiwan University",
        "GPA: 3.71/4.3"
    ),
    Card(
        "Dental Student",
        "2014-Present",
        "National Yang Ming Chiao Tung University",
        "GPA: 2.4/4.3 (Double majored, fifth grade). Special admission as Intel ISEF Grand Award Winner"
    )
)

honors = TimeLine(
    Dot(
        "Feb. 2022",
        "Electrical and Computer Engineering Merit Fellowship",
        "Texas A&M University - College Station"
    ),
    Dot(
        "Nov. 2019",
        "Pen Wen Yuan Memorial Scholarship",
        "Competitive scholarship sponsored by  Industrial Technology Research Institute, Hsinshu, Taiwan."
    ),
    Dot(
        "Dec. 2018",
        "Best Presentation",
        " International Student Science Forum, HCMC, Vietnam "
    ),
    Dot(
        "June 2017",
        "Best Presentation",
        "International Student Science Forum, HCMC, Vietnam"
    ),
    Dot(
        "Jul. 2016",
        "Selected participant in Asian Science Camp",
        "Bangalore, India"
    ),
    Dot(
        "Jul. 2015",
        "Solver Award",
        "Wu Chien‐Shiung Science Camp, Taiwan"
    ),
    Dot(
        "May 2014",
        "4th Grand Award Winner",
        "Intel International Science Fair (Intel ISEF)"
    ),
    Dot(
        "May 2014",
        "1st Special Award Winner",
        "Intel International Science Fair (Intel ISEF)"
    ),
    Dot(
        "Jan. 2014",
        "1st Place & Young Scientist Award",
        "Taiwan International Science Fair"
    )
)




biography = Block(
    paragraphs(
    """
    Steven Shao-Ting Chiu is a Ph.D. Student in the Department of Electrical and Computer Engineering at Texas A&M University, where his research advisor is Ulisses Braga-Neto. Previously, he was with Pumas-AI, working in the application of Julia to pharmaceutics and personalized medicine applications, under the supervision of Chris Rackauckas. He received both bachelor’s and master’s degrees at the Department of Electrical Engineering of National Taiwan University, with a specialization in physical modeling/simulation of biological systems. He is the recipient of a prestigious Texas A&M ECE Department Graduate Fellowship.
    """,
    """
    He received both bachelor's and master's degrees at the Department of Electrical Engineering of National Taiwan University with a specialization in physical modeling/simulation of biological systems. Besides, he is also a fifth-year student of dental surgery at National Yang Ming Chiao Tung University by special admission as Intel ISEF grand award winner.
    """,
    """
    Steven Chiu's current research project at Pumas-AI, Inc focuses on Scientific Machine Learning (SciML) and its application in pharmaceutics. He has rich research experience across mathematical modeling, machine learning, and SciML in solving complex biosystems. He is familiar with Python, C, and Julia for scientific computing. Furthermore, he has established open-source packages for analyzing ODE systems.
    """
    ),
    images(
        Image("Portrait_MS.jpg", "Compressed Stack"),
        Image("Portrait_DD.jpg", "Flow of Knowledge"),
    )
)

page(
    title="index",
    sections=[
        Section(
            title="Biography",
            items=biography
        ),
        Double(
            Section(
                title="Positions",
                items=work_cards
            ),
            Section(
                title="Education",
                items=education_cards
            )
        ),
        Section(
            title="Honors",
            items=honors
        )
    ]
)
