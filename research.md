@def title = "Resaerch"
@def hascode = false
@def date = Date(2019, 3, 22)
@def rss = "Research stuff"

@def tags = ["syntax", "code"]

# Research

\toc

## Topological phases in 2D materials

We are very lucky that 2D materials are both extremely interesting and practically accesible. On the one hand, 2D is special because the 2+1D spacetime trajectories of simple point particles trace out braids and knots (knots can be untied in dimensions higher than 3). This allows for interesting topological phases of matter to arise in which point-particles  carry fractionalized quantum statistics; and even better, these phases emerge in very relevant Hamiltonians like those which govern the quantum Hall effect. On the other hand, we can make 2D materials in the lab (for example in GaAs quantum wells, or more recently graphene), and experimentally poke around "inside" the 2D bulk since we live in one higher dimension. Recently we've been thinking about alot about fractional quantum Hall physics in graphene, including close collaboration with the Young Lab at UCSB, as well as frustrated quantum magnets like the Kagome spin liquid, triangular lattice Hubbard model, and Rydberg atom simulators.  One big goal is to help demonstrate  non-Abelian statistics in the lab and use this as the basis for building a topologically-protected qubit.

## Twisted bilayer graphene and other Moire systems

In Moire heterostructures (like twisted bilayer graphene), electronic features such as bandwidth and interaction strength are highly tunable in the laboratory. This opens the door to studying physics of correlated eletrons at intermediate and strong coupling, which is often poorly understood and may exhibit novel emergent phenomena. The Zaletel group studies the physics of symmetry-breaking, band topology, correlated transport and superconductivity in these materials by employing both analytical and numerical tools.

## Tensor network methods for strongly correlated systems

Tensor network methods allow for efficient representation and manipulation of quantum states on classial computers, yet the majority of work in this field has focused on ground state properties in one-dimension. Simulating dynamics, finite temperature systems, or systems in higher dimensions quickly becomes expensive and intractable with current methods, so the Zalelel group actively develops novel techniques to extend tensor networks to these currently limited domains. Of particular note is the Isometric Tensor Network (isoTNS) introduced in 2020 as a canonical form for tensor network states in two-dimensions.

## Quantum entanglement in many-body systems

Nontrivial quantum phases of matter often comes with nontrivial quantum entanglement that can be used to understand the behavior of the system. The Zaletel group investigates various "entanglement measures", which we hope can be used to distinguish nontrivial phases, such as chiral topological orders, from each other. We also believe a better understanding of quantum entanglement will lead to more efficient numerical algorithms for quantum phases.

## Quantum simulation in AMO

We collaborate with our good friends in Norm Yao's lab to study frustrated magnetism and non-equilibirum physics in Rydberg atom simulators and other AMO systems. 

<!--

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


-->
