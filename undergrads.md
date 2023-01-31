@def title = "Undergrad project"
@def hascode = false
@def date = Date(2019, 3, 22)
@def rss = "Research stuff"

@def tags = ["syntax", "code"]

# Undergraduate projects

## Ongoing Projects

### Monte Carlo simulation of disordered Heisenberg model
Spin models can be used to describe a variety of phenomena in nature. Even exotic states of matter, such as superconducing twisted bilayer graphene, often have a simple description as an effective spin model. In this project, we investigate a particular spin model with disorder to understand whether superconductivity in twisted bilayer graphene can survive disorder.
We make a heavy use of computational techniques such as Monte Carlo simulations to tackle this problem. This is complimented with well-known field theory techniques that teach us what kind of phase transitions to expect.
### Two-dimensional finite temperature tensor network methods
Tensor network methods are most often used to study ground states (T=0) of Hamiltonians, but they can also be used to learn finite temperature properties. The Minimally Entangled Typical Thermal States (METTS) algorithms approximates the thermal density matrix by a Monte Carlo sampling of pure quantum states with low entanglement. In this project, we are extending the METTS algorithm, originally developed in 1D, to isometric tensor networks (isoTNS) in 2D. The METTS algorithm relies on a crucial "sampling" step, where product states are sampled from an entangled wavefunction, and we exploit the unique structure of isoTNS.
### Capturing topological phase transitions in isometric tensor networks
It is well known that the toric code, the simplest example of a topological quantum memory capable of robustly encoding a logical qubit into the collective state of many physical qubits, undergoes a phase transition when a strong magnetic field is applied. The magnetic field causes the system to transition to the so-called "trivial" phase, where no quantum information is stored. In this project, we capture this transition using isometric tensor networks (isoTNS), a 2D tensor network state developed in part here at Berkeley. Our goal is to understand the limitations of isoTNS and eventually explore more-exotic phase transitions.
## How To Get Involved
Please see the "How to Join" page for guidance on how to get involved in research in our group!

### Suggested Reading
Between these readings and the project descriptions on the "Research" page, we hope to give you an idea of what sort of things we work on in the group. You are not expected to read all of these; just take a look and see what interests you! When you start a project, you and your mentor will work together to find the necessary readings to get up-to-speed.

If you are interested in tensor network projects, a great first reference is [this review](https://scipost.org/SciPostPhysLectNotes.5). This review covers many 1D tensor network basics, and the techniques covered are indespinsible for our daily work. The first 3 sections are the most important.
More advanced/detailed material:
1. [Isometric Tensor Network](https://arxiv.org/abs/2112.08394)
2. [Standard density matrix renormalization group review](https://arxiv.org/abs/1008.3477)

For strongly correlated electron projects, take a look at the following resources.
1. [Electrical properties of graphene](https://arxiv.org/abs/0709.1163)
2. [Review of twisted bilayer graphene](https://arxiv.org/abs/2105.08858)
3. [Wannierization of bands](https://journals.aps.org/rmp/abstract/10.1103/RevModPhys.84.1419)

For topological phases and quantum entanglement in many-body systems, a nice reference is [this review](https://arxiv.org/abs/1610.03911). It covers different classes of topological phases and why they are unique / exotic!
