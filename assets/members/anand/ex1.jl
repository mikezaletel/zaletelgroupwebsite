# This file was generated, do not modify it. # hide
#hideall
using Cascadia, Gumbo, HTTP, Dates
r = HTTP.get("https://arxiv.org/a/anand_s_1.html")
h = parsehtml(String(r.body))
sm = Selector(".mathjax")
articles = filter(node->getattr(node, "class")=="mathjax", eachmatch(sm, h.root))

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
function getarxiv(article)
    sm = Selector(".list-identifier")
    raw_arxiv = eachmatch(sm, article) |> only
    arxiv = getattr(raw_arxiv[1], "href") |> strip
    return arxiv[6:end]
end

function getjournalref(article)
    sm = Selector(".list-journal-ref")
    raw_journal = eachmatch(sm, article)
    if isempty(raw_journal)
        return ""
    end
    raw_journal = raw_journal |> only
    journal = raw_journal[2] |> text |> strip
    return journal
end

authors = getauthors.(articles)
titles = gettitle.(articles)
arxivs = getarxiv.(articles)
journalrefs = getjournalref.(articles)

sorted_index = sortperm(arxivs, rev=true)

authors = authors[sorted_index]
titles = titles[sorted_index]
arxivs = arxivs[sorted_index]
journalrefs = journalrefs[sorted_index]

function article_list(authors, title, arxivs, journalrefs)
    s = ""
    year = "00"
    for (ind, (author, title, arxiv, journalref)) in enumerate(zip(authors, titles, arxivs, journalrefs))
        new_year = arxiv[1:2]
        if year != new_year
            year = new_year
            s *= "## 20$year \n"
            # s *= "~~~<h2 id=\"20$year\"><a href=\"#20$year\">20$year</a></h2>~~~\n"
        end

        author_array = join(author, ", ")
        s *= "\\publishedarticle{$ind}{$title}{$author_array}{$arxiv}{$journalref}\n"
    end
    return s
end

s = article_list(authors, titles, arxivs, journalrefs)
println(s)