######################################
# General informations
######################################

info["avatar"] = "pic.jpeg"
info["lang"] = "en"
info["name"] = "Shao-Ting Chiu (Steven)"
info["title"] = "Ph.D., Texas A&M University"
info["email"] = "stchiu@email.tamu.edu"

# Download latest CV
download("https://stevengogogo.github.io/ResumeCustomized/CV/CV_ShaoTingChiu.pdf", joinpath(@__DIR__,"files","CV_ShaoTingChiu.pdf"))
info["cv"] = "CV_ShaoTingChiu.pdf"

## Social Networks (comment/delete lines to unwanted social network, input your personal info for the others)

info["googlescholar"] = "https://scholar.google.com.tw/citations?user=X56QgvzEdmcC&hl=zh-TW"
info["linkedin"] = "https://www.linkedin.com/in/shao-ting-chiu-35125b128/"
info["github"] = "https://github.com/stevengogogo"


######################################
# Contributors user name => real name
######################################
user_to_name["stevengogogo"] = "Shao-Ting Chiu"
user_to_name["sosiristseng"] = "Wen-Wei Tseng"
user_to_name["dependabot[bot]"] = ""
