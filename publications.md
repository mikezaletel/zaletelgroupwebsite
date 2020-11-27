@def title = "Members"
@def hascode = false
@def date = Date(2019, 3, 22)
@def rss = "group member description"

@def tags = String[]

# Publications

```julia:./ex1
#hideall
using Cascadia, Gumbo, HTTP
r = HTTP.get("https://arxiv.org/a/soejima_t_1.html")
h = parsehtml(String(r.body))
sm = Selector(".meta")
articles = eachmatch(sm, h.root)
function getauthors(article)
    sm = Selector(".list-authors")
    raw_authors = eachmatch(sm, article) |> only
    authors = [children(author)[1] |> text |> strip for author in children(raw_authors) if author isa HTMLElement{:a}]
    return authors
end
function gettitle(article)
    sm = Selector(".list-title")
    raw_title = eachmatch(sm, article) |> only
    title = raw_title[2] |> text |> strip
    return title
end
authors = getauthors.(articles)
titles = gettitle.(articles)
function article_list(authors, titles)
    s = ""
    for (author, title) in zip(authors, titles)
        author_array = join(author, ", ")
        s *= "\\publishedarticle{$title}{$author_array}\n"
    end
    return s
end
s = article_list(authors, titles)
println(s)
```

\newcommand{\publishedarticle}[2]{
    @@pubs
    **!#1**

    #2
    @@
}

\textoutput{./ex1}