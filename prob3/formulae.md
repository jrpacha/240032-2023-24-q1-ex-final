### Formulae
#### Problema 3

$$
\begin{align*}
0 \alpha + \beta &= \frac{3}{4},\\
2 \alpha + \beta &= \frac{1}{4},
\end{align*}
$$

So the values of $\alpha$ and $\beta$ turns out to be $\alpha =
\frac{1}{4}$ and $\beta = \frac{1}{2}$. Therefore,

$$
A(x) = \frac{3}{4} - \frac{\alpha}{4}
$$

Shape functions of the linear 1D element $\Omega^{e}$. First node at
position $x^{e}\_{1}$, second node at position $x^{e}\_{2}$:

$$
\psi^{e}_{1}(x) = \frac{x-x^{e}_{2}}{x^{e}_{1} - x^{e}_{2}},\qquad\qquad
\psi^{e}_{2}(x) = \frac{x-x^{e}_{1}}{x^{e}_{2} - x^{e}_{1}}.\qquad\qquad
$$

$$
\begin{array}{rcl}
K^{e}_{1,1} &=& \int_{x^{e}_{1}}^{x^{e}_{2}} E A(x) 
\frac{\mathrm{d}\psi^{e}_{1}}
{\mathrm{d}x}(x) \frac{\mathrm{d}\psi^{e}_{1}}
{\mathrm{d}x}(x)\mathrm{d} x \\
 &=&
\frac{E}{\left(x^{e}_{2}-x^{e}_{1}\right)^{2}}\int_{x^{e}_{1}}^{x^{e}_{2}}
\left(\alpha x + \beta\right)\mathrm{d} x =
\frac{E}{h^{e}}\left(\alpha\frac{x^{e}_{1} + x^{e}_{2}}{2} + \beta\right)
= K_{2,2},\\
K^{e}_{1,2} &=& K^{e}_{2,1} = - K^{e}_{1,1},
\end{array}
$$

being $h^{e} = x^{e}_{2} - x^{e}_1 = 1/2$, the length of the element
$\Omega^{e}$, for $e = 1,2,3,4$. Therefore:

$$
\begin{array}{c}
K^{1} = \displaystyle\frac{\alpha E}{2}\left(\!
\begin{array}{rr}
1 & -1\\
-1 & 1
\end{array}\!\right) 
+ 2E\beta\left(\!
\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}
\!\right),\\[15pt] 
K^{2} = \displaystyle\frac{\alpha E}{2}\left(\!\begin{array}{rr}
3 & -3\\
-3 & 3
\end{array}\!\right) + 2E\beta\left(
\!\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}\!\right),\\[15pt]
K^{3} = \displaystyle\frac{\alpha E}{2}\left(\!\begin{array}{rr}
5 & -5\\
-5 & 5
\end{array}\!\right) + 2E\beta\left(
\!\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}\!\right),\\[15pt]
K^{4} = \displaystyle\frac{\alpha E}{2}\left(\!\begin{array}{rr}
7 & -7\\
-7 & 7
\end{array}\!\right) + 2E\beta\left(
\!\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}\!\right).
\end{array}
$$

Then, the coupled stiffness matrix is,

$$
K = \frac{\alpha E}{2}
\left(\!\begin{array}{rrrrr}
1 & -1 & & &\\
-1 & 4 & -3 & & \\
& -3 & 8 & -5 & \\
& & -5 & 12 & -7 \\
& & & -7 & 7
\end{array}\!\right) +
2 E \beta \left(\!
\begin{array}{rrrrr}
1 & -1 & & &\\
-1 & 2 & -1 & &\\
& -1 & 2 & -1 &\\
& & -1 & 2 & -1\\
& & & -1 & 1
\end{array}
\!\right),
$$

with (recall) $E = 181\times 10^{6}\, \text{kN/m}^{2}$, $\alpha = -1/4$,
$\beta = 3/4$. So, substitution of these values in the matrix above yields,
$$
K =
10^{8}\times\left(
\begin{array}{rrrrr}
  2.48875000 & -2.48875000 &  0.00000000 &  0.00000000 &  0.00000000\\
 -2.48875000 &  4.52500000 & -2.03625000 &  0.00000000 &  0.00000000\\
  0.00000000 & -2.03625000 &  3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 &  0.00000000 & -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &  0.00000000 &  0.00000000 & -1.13125000 &  1.13125000
\end{array}
\right).
$$

Next, to compute the components of the body force vector,
$F^{e}$, we know that these are given by the quadratures,

$$
F^{e}_{i} = \int_{x^{e}_{1}}^{x^{e}_{2}} f(x) \psi^{e}_{i}(x)\mathrm{d} x,
$$

$i = 1,2$. Here $f(x)$ is an affine function of type $f(x) = \gamma x +
\delta$, with $\gamma = 6.25$ and $\delta = -6.25\times 3 = -18.75$. This
yields,

$$
\begin{array}{l}
    F^{e}_{1} =
        \displaystyle\int_{x^{e}_{1}}^{x^{e}_{2}}
        \left(\gamma x + \delta\right)
        \frac{x-x^{e}_{2}}
        {x^{e}_{1}-x^{e}_{2}}\mathrm{d} x =
        h^{e}\left(
        \gamma\frac{2x^{e}_{1} + x^{e}_{2}}{6}
        + \frac{\delta}{2}\right),\\[15pt]
    F^{e}_{2} =
        \displaystyle\int_{x^{e}_{1}}^{x^{e}_{2}}
        \left(\gamma x + \delta\right)
        \frac{x-x^{e}_{1}}
        {x^{e}_{2}-x^{e}_{1}}\mathrm{d} x =
        h^{e}\left(
        \gamma\frac{x^{e}_{1} + 2 x^{e}_{2}}{6}
        + \frac{\delta}{2}\right).
\end{array}
$$

being $h^{e} = x^{e}_{2} - x^{e}_{1} = 1/2$, the length of the element
$\Omega^{e}$, for $e = 1,2,3,4$. Therefore:

$$
\begin{array}{cccc}
F^{1} = \displaystyle \frac{1}{2}\left(
    \begin{array}{c}
    \displaystyle \frac{\gamma}{12} + \frac{\delta}{2}\\[7pt]
    \displaystyle \frac{\gamma}{6} + \frac{\delta}{2}
    \end{array}\right),&
F^{2} = \displaystyle \frac{1}{2}\left(
    \begin{array}{c}
    \displaystyle \frac{\gamma}{3} + \frac{\delta}{2}\\[7pt]
    \displaystyle \frac{5\gamma}{6} + \frac{\delta}{2}
    \end{array}\right),&
F^{3} = \displaystyle \frac{1}{2}\left(
    \begin{array}{c}
    \displaystyle \frac{7\gamma}{12} + \frac{\delta}{2}\\[7pt]
    \displaystyle \frac{2\gamma}{3} + \frac{\delta}{2}
    \end{array}\right), &
F^{4} = \displaystyle \frac{1}{2}\left(
    \begin{array}{c}
    \displaystyle \frac{5\gamma}{6} + \frac{\delta}{2}\\[7pt]
    \displaystyle \frac{11\gamma}{12} + \frac{\delta}{2}
    \end{array}\right).
\end{array}
$$

Hence, after coupling the local vectors, it turns out that the global body force vector is given by 

$$
F = \left(\begin{array}{c}
F^{1}_{1}\\
F^{1}_{2} + F^{2}_{1}\\
F^{2}_{2} + F^{3}_{1}\\
F^{3}_{2} + F^{4}_{1}\\
F^{4}_{2}
\end{array}\right) =
\frac{\gamma}{24}\left(
\begin{array}{c}
1\\ 6\\ 12\\ 18\\ 11 
\end{array}
\right) + 
\frac{\delta}{4}
\left(
\begin{array}{c}
1\\ 2\\ 2\\ 2\\ 1
\end{array}
\right).
$$

with (recall) $\gamma = 6.25$ and $\gamma =-18.75$. So, substitution of
these values in the vector above yields,

$$
F = \left(\!
\begin{array}{r}
 -4.42708333\\
 -7.81250000\\
 -6.25000000\\
 -4.68750000\\
 -1.82291667
\end{array}
\!\right).
$$

Boundary conditions,
* Natural $Q_{2} = Q_{3} = Q_{4} = 0$, $Q_{5} = -5$.
* Essential: $U_{1} = 0$.

__Reduced system:__ $K_{m} U_{m} = Q_{m} + F_{m} - K_{1,m} U_{1}$, being

$$
\begin{array}{l}
K_{m} =
10^{8}\times\left(\!
\begin{array}{rrrr}
  4.52500000 & -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &  3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 & -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &  0.00000000 & -1.13125000 &  1.13125000
\end{array}
\!\right),\\[30pt]
U_{m}^{\top} = \left(\!
\begin{array}{rrrr}
U_{2}, & U_{3}, & U_{4}, & U_{5}
\end{array}
\!\right),\\[10pt]
Q_{m}^{\top} = \left(\!
\begin{array}{rrrr}
0,& 0,& 0,& -5
\end{array}
\!\right),\\[10pt]
F_{m}^{\top} = \left(\!
\begin{array}{rrrr}
 -7.81250000,&
 -6.25000000,&
 -4.68750000,&
 -1.82291667
\end{array}
\!\right),\\[10pt]
K_{1,m}^{\top} = 10^{8}\times
\left(\!
\begin{array}{rrrr}
 -2.48875000,&
  0.00000000,&
  0.00000000,&
  0.00000000
\end{array}
\!\right). 
\end{array}
$$

So the system is,

$$
\begin{array}{l}
10^{8}\times\left(\!
\begin{array}{rrrr}
  4.52500000 & -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &  3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 & -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &  0.00000000 & -1.13125000 &  1.13125000
\end{array}
\!\right)
\left(\!
\begin{array}{c}
U_{2}\\
U_{3}\\
U_{4}\\
U_{5} 
\end{array}
\!\right)\\[25pt]
\hspace{100pt} = \left(\!
\begin{array}{r}
0.00000000\\
0.00000000\\
0.00000000\\
-5.00000000
\end{array}
\!\right) +
\left(\!
\begin{array}{r}
-7.81250000\\
-6.25000000\\
-4.68750000\\
-1.82291667
\end{array}
\!\right) -
10^{8}\times
\left(\!
\begin{array}{r}
 -2.48875000\\
  0.00000000\\
  0.00000000\\
  0.00000000
\end{array}
\!\right) U_{1},
\end{array}
$$

but, by the essential boundary conditions, one has $U_{1} = 0$, so the above
linear system writes,

$$
\left(\!
\begin{array}{rrrr}
  4.52500000 & -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &  3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 & -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &  0.00000000 & -1.13125000 &  1.13125000
\end{array}
\!\right) 
\!\left(
\begin{array}{c}
U_{2}\\
U_{3}\\
U_{4}\\
U_{5}
\end{array}
\!\right) =
10^{-8}\times 
\left(\!
\begin{array}{r}
 -7.81250000\\
 -6.25000000\\
 -4.68750000\\
 -6.82291667
\end{array}
\!\right)
$$

We solve it, for example by Cramer's rule, to get:

$$
U_{2} = 10^{-8}\times\frac{\left|
\begin{array}{rrrr}
 -7.81250000 & -2.03625000 &  0.00000000 &  0.00000000\\
 -6.25000000 &  3.62000000 & -1.58375000 &  0.00000000\\
 -4.68750000 & -1.58375000 &  2.71500000 & -1.13125000\\
 -6.82291667 &  0.00000000 & -1.13125000 &  1.13125000
\end{array}
\right|}{
\left|
\begin{array}{rrrr}
  4.52500000 & -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &  3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 & -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &  0.00000000 & -1.13125000 &  1.13125000
\end{array}
\right|
} = -1.02754060\times 10^{-7},
$$

$$
U_{3} = 10^{-8}\times\frac{\left|
\begin{array}{rrrr}
   4.52500000 & -7.81250000  &  0.00000000 &  0.00000000\\
  -2.03625000 & -6.25000000  & -1.58375000 &  0.00000000\\
   0.00000000 & -4.68750000  &  2.71500000 & -1.13125000\\
   0.00000000 & -6.82291667  & -1.13125000 &  1.13125000
\end{array}
\right|}{
\left|
\begin{array}{rrrr}
  4.52500000 &  -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &   3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 &  -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &   0.00000000 & -1.13125000 &  1.13125000
\end{array}
\right|
} = -1.89975259\times 10^{-7},
$$

$$
U_{4} = 10^{-8}\times\frac{\left|
\begin{array}{rrrr}
  4.52500000 &  -2.03625000 & -7.81250000&  0.00000000\\
 -2.03625000 &   3.62000000 & -6.25000000&  0.00000000\\
  0.00000000 &  -1.58375000 & -4.68750000& -1.13125000\\
  0.00000000 &   0.00000000 & -6.82291667&  1.13125000
\end{array}
\right|}{
\left|
\begin{array}{rrrr}
  4.52500000 &  -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &   3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 &  -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &   0.00000000 & -1.13125000 &  1.13125000
\end{array}
\right|
} = -2.62653502\times 10^{-7},
$$

$$
U_{5} = 10^{-8}\times\frac{\left|
\begin{array}{rrrr}
  4.52500000 &  -2.03625000 &  0.00000000 & -7.81250000\\
 -2.03625000 &   3.62000000 & -1.58375000 & -6.25000000\\
  0.00000000 &  -1.58375000 &  2.71500000 & -4.68750000\\
  0.00000000 &   0.00000000 & -1.13125000 & -6.82291667
\end{array}
\right|}{
\left|
\begin{array}{rrrr}
  4.52500000 &  -2.03625000 &  0.00000000 &  0.00000000\\
 -2.03625000 &   3.62000000 & -1.58375000 &  0.00000000\\
  0.00000000 &  -1.58375000 &  2.71500000 & -1.13125000\\
  0.00000000 &   0.00000000 & -1.13125000 &  1.13125000
\end{array}
\right|
} = -3.22966577\times 10^{-7},
$$

Therefore, the displacements are

$$
\begin{array}{r}
U_{1} = \phantom{-}0.00000000\times 10^{-7}\, \text{m},\\
U_{2} = -1.02754060\times 10^{-7}\, \text{m},\\
U_{3} = -1.89975259\times 10^{-7}\, \text{m},\\
U_{4} = -2.62653502\times 10^{-7}\, \text{m},\\
U_{5} = -3.22966577\times 10^{-7}\, \text{m}.
\end{array}
$$

Elongation of the last element $\Omega^{4}$ (reacall that the elongation is
the change in the length of the element)

$$
\text{Elongation} = U_{5} - U_{4} = -3.22966577\times 10^{-7} 
$$
- (-2.62653502\times 10^{-7}) =
 -6.03130755\times 10^{8}\, \text{m}.\\
$$
