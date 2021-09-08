# Group website

## To-do
- make member page look nicer -> Add former group members table with picture and next appointment.
- Format the publications page better
    - Format the publications
- Create undergraduate project page
- Better documentation
- Scraping from more webpages (ORCID? arXiv search results?)
- Make the main page better
- overall aesthetic adjustment (it looks too much like the template)

## Usage

### Profile update

**subject to change**

In order to update your profile, create `_assets/member_profile/yourname`  folder containing `picture.png` and `profile.md`. You can use standard Markdown and LaTeX-like syntax in `profile.md`. Check out the sample `iguana/profile.md`.

Once you are done creating the folder, put `\insertprofile{yourname}{Your Name}{yoururl}{your (at) email.address}` at an appropriate place. `yoururl` is the url of your personal website, or the path of your personal page within the group website, as described below.

### Creating your own page

If you do not have a personal website, you can host a mini personal website within the group website.
Create `/members/yourname/index.md`. And start populating it with Markdown. You can write whatever you want there, but the following macros will give you a good default landing page:

```
\insertprofilepage{yourname}{Your Name}{ your (at) email.edu }

# Publications

\publist{https://arxiv.org/a/your_author_profile.html} # use your arXiv author profile
\publistarxivsearch{https://arxiv.org/a/your_searchresult.html} # use your arXiv author profile
```

`yoururl` of the resulting page is `/members/yourname/`.

### How to launch a Franklin server

1. Install most recent version of [Julia](https://julialang.org/downloads/).
2. Navigate to the repository and launch `julia`.
3. In the REPL, do the following
```julia
julia> using Pkg
julia> Pkg.activate() # make sure it activates to "groupwebsite"
julia> Pkg.instantiate()
julia> using Franklin
julia> serve(port=8888) # choose a port number you like
```

This launches a server at the specified port. You can portforward it and access the server via your browser. The server live-updates its content, so you can edit files and see changes in real time.

If you introduce parsing errors, the server stops running. You can call `serve()` again after fixing the errors.

### Other things

Check out the [Franklin website](https://franklinjl.org/) for more usage info.
