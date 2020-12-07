@def title = "Resaerch"
@def hascode = false
@def date = Date(2019, 3, 22)
@def rss = "Research stuff"

@def tags = ["syntax", "code"]

# Research

\toc

## Topological phases in 2D materials

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

## Twisted bilayer graphene and other Moire systems

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

## Tensor network methods for strongly correlated systems

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

## Quantum entanglement in many-body systems

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

## Quantum simulation in AMO

" With lil-Yao "


## Syntax

For more on this, read [Franklin documentation](https://franklinjl.org/syntax/markdown/#inline_and_display_maths)

You can use bold text:  **KIVC** You can also use italics, _bilayer graphene_, and combine them **_magic angle_**. Inline code can be shown using back ticks `likethis`. Multiline code blocks are shown using triple back ticks:

```julia
function pseudocode()
    # do awesome stuff here
    return awesome
end

```

You can also do inline math $\mathcal{T} = \sigma_y \mathcal{K}$ and display math:

$$ H = \sum_i Z_i Z_{i+1} + h \sum_i X_i$$

Multiline math:

\begin{align}

1 + 1 &= 2 \\
& = 2 + 0

\end{align}


You can also insert file.

\figalt{KIVC figure}{./figures/KIVC.PNG}

There is a way to add citation with automatic styling, but that feels like too much work tbh.