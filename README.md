<div align="center">

# Retracing the Path of Linear Algebra

A first course in linear algebra, following Gilbert Strang, from systems of equations to the SVD.

</div>

---

## About

This tutorial retraces a first course in linear algebra. It follows Prof. Gilbert Strang's MIT lectures, as taught through Prof. Liu's course at China University of Petroleum, and it is written for readers meeting the subject for the first time.

The order is Strang's. It begins with a system of equations and the two pictures that describe it, then builds outward: elimination and factorization, vector spaces and the four fundamental subspaces, orthogonality and least squares, determinants, eigenvalues, linear transformations, and finally the applications that make the machinery worth having.

The emphasis throughout is on what the objects mean and how they are computed, rather than on proofs for their own sake.

## Who this is for

No prior exposure to linear algebra is assumed. You should be comfortable with basic algebra, and with the idea of a function.

The Preface recommends watching Prof. Strang's open course alongside the text. It is worth taking that advice: the lectures and the tutorial are arranged the same way, and they reinforce each other.

## Contents

### 1. Solving linear equations

The two pictures of a linear system. The row picture draws each equation as a line or plane and asks where they meet; the column picture asks which combination of the columns reaches the right-hand side. Then the computation: Gaussian elimination, matrix multiplication read as composition, inverses, and LU factorization.

### 2. Vector spaces

What kind of object a matrix has been acting on all along. Vector spaces and subspaces, the column space and null space of a matrix, and row reduction as the tool that produces bases for both. This leads to the four fundamental subspaces and to the relations between their dimensions, and closes with graphs and networks.

### 3. Orthogonality

Why right angles make linear algebra computable. Orthogonal vectors and subspaces, then projection onto a subspace, which is how the closest point is found and where least squares comes from. The chapter ends with Gram-Schmidt and QR factorization.

### 4. Determinants

A single number attached to a square matrix, measuring how it scales volume and deciding whether it is invertible. The properties come first, because they are what you compute with, followed by the cofactor formula and Cramer's rule.

### 5. Eigenvalue and eigenvector

The directions a matrix does not rotate. The characteristic equation, diagonalization, and the fact that powers of a diagonalizable matrix become trivial. Symmetric and positive definite matrices are treated in detail, and the chapter ends with the singular value decomposition.

### 6. Linear Transformations

A matrix treated as a function rather than a table of numbers. Linear transformations, the fact that a matrix representation depends on a basis while the transformation does not, change of basis, similarity, and the pseudoinverse.

### 7. Applications

Difference equations, differential equations, Markov matrices, Fourier series, and the fast Fourier transform. Each reduces to an eigenvalue problem, which is why the preceding chapters were worth the effort.

### Afterwords

Closing thoughts.

## What this tutorial does not cover

- **Proofs in full generality.** The tutorial is written to build intuition and computational skill. Results are stated and explained rather than proved from axioms.
- **Numerical linear algebra.** Conditioning, floating-point behaviour, and the design of production solvers are outside its scope.
- **Abstract or algebraic treatments.** Vector spaces appear early and are used throughout, but the subject is not developed axiomatically.

## Building the PDF

You need a TeX distribution with XeLaTeX. A **full** TeX Live installation is required rather than a minimal one. The document class is bundled in this repository, so there is nothing extra to install.

```bash
latexmk
```

A `.latexmkrc` is included, so `latexmk` selects XeLaTeX automatically and runs as many passes as the cross-references need.

```bash
latexmk -c    # remove auxiliary files, keep the PDF
latexmk -C    # remove everything, including the PDF
```

The cover is a TikZ drawing in `cover.tex`, compiled to `cover.pdf`.

## License

This tutorial is released under
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [LICENSE](LICENSE).
