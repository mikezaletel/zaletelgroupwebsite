# Group website

## To-do
- [ ] make member page look nicer -> Add former group members table with picture and next appointment.
- [ ] Better documentation
- [ ] _Scraping from more webpages (ORCID? arXiv search results?)_
- [ ] overall aesthetic adjustment (it looks too much like the template)

- [x] Create undergraduate project page
- [x] Format the publications page better
- [x] Make the main page better

## Usage

### General usage

The best way to update your profile is via creating a pull request. You will need to [fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo, make modifications in your fork, and then make a pull request to this repo. You can find details on how to do this on many GitHub tutorial pages.

### Profile update

**subject to change**

In order to update your profile, create `_assets/member_profile/yourname`  folder containing `picture.png` and `profile.md`. You can use standard Markdown and LaTeX-like syntax in `profile.md`. Check out the sample `iguana/profile.md`.

Once you are done creating the folder, put `\insertprofile{yourname}{Your Name}{yoururl}{your (at) email.address}` inside `members.md`. `yoururl` is the url of your personal website, or the path to your personal page within the group website, as described below.

### Creating your own page

This step is optional.
If you do not have a personal website, you can host a mini personal website within the group website.
Create `/members/yourname/index.md`. And start populating it with Markdown. You can write whatever you want there, but the following macros will give you a good default landing page:

```
\insertprofilepage{yourname}{Your Name}{ your (at) email.edu }

# Publications

# you can choose one of the two methods from below.
\publist{https://arxiv.org/a/your_author_profile.html} # use your arXiv author profile
\publistarxivsearch{https://arxiv.org/a/your_searchresult.html} # use your arXiv author profile
```

`yoururl` of the resulting page is `/members/yourname/`.

### Setting up your Franklin environment
We want to set up a julia environment that has necessary packages. ([See here](https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.1-linux-x86_64.tar.gz)).
To do so, navigate to `zaletelgroupwebsite` folder and launch `julia`. And then run
```julia
julia> using Pkg
julia> Pkg.activate(".") # make sure it activates to "zaletelgroupwebsite"
julia> Pkg.instantiate()
julia> exit()
```
This will initialize your environment.

### How to launch a Franklin server

1. Install most recent version of [Julia](https://julialang.org/downloads/).
2. Navigate to the repository and launch `julia`.
3. In the REPL, do the following
```julia
julia> using Franklin
julia> serve(port=8888) # choose a port number you like
```

This launches a server at the specified port. You can portforward it and access the server via your browser. The server live-updates its content, so you can edit files and see changes in real time.

If you introduce parsing errors, the server stops running. You can call `serve()` again after fixing the errors.

### Common mistakes

When running `serve()` to debug, you might notice the website does not change as expected. In that case, try deleting the content of `__site` and run `serve()` again. `__site` is not always updated in real time.

### Other things

Check out the [Franklin website](https://franklinjl.org/) for more usage info.
