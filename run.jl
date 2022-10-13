# import the website generator functions
using Pkg 
Pkg.activate(@__DIR__)
Pkg.instantiate()
import StaticWebPages
import StaticWebPages: local_info

function main(ARGS)
    ## private information (local folders, connection infos, etc.)
    # content and site paths are always required
    local_info["content"] = "content"
    local_info["site"] = "build"

    ## Private Access Token (PAT) for GitHub as a github.jl file ; It is optional and can be commented/decommented using #
    if !isfile("token.jl")
        open("token.jl", "w") do io
            write(io, string("github_pat =","\"",ARGS[1],"\""))
        end
    end

    # directory of token.jl
    local_info["auth_tokens"] = ""

    # `rm_dir = true` will clean up the site folder before generating it again. Default to false.
    # `opt_in = true` will a link to this generator website in the side menu. Default to false.
    StaticWebPages.export_site(d=local_info, rm_dir = true, opt_in = true)

    ## upload website (comment/delete if not needed)
    # unfortunately does not work yet on windows system, please sync manually for the moment
    # StaticWebPages.upload_site(local_info)
end

main(ARGS)