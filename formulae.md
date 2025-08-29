### Formulae

$$
\begin{align*}
0 \alpha + \beta &= \frac{3}{4},\\
2 \alpha + \beta &= \frac{1}{4},
\end{align*}
$$

So the values of $\alpha$ and $\beta$ turns out to be $\alpha =
\dfrac{1}{4}$ and $\beta = \frac{1}{2}$. Therefore,

$$
A(x) = \frac{3}{4} - \frac{\alpha}{4}
$$
Shape functions of the linear 1D element $\Omega^{e}$. First node at
position $x^{e}_{1}$, second node at position $x^{e}_{2}$:
$$
\psi^{e}_{1}(x) = \frac{x-x^{e}_{2}}{x^{e}_{1} - x^{e}_{2}},\qquad\qquad
\psi^{e}_{2}(x) = \frac{x-x^{e}_{1}}{x^{e}_{2} - x^{e}_{1}}.\qquad\qquad
$$

$$
\begin{align*}
K^{e}_{1,1} &= \int_{x^{e}_{1}}^{x^{e}_{2}} E A(x) 
\frac{\mathrm{d}\psi^{e}_{1}}
{\mathrm{d}x}(x) \frac{\mathrm{d}\psi^{e}_{1}}
{\mathrm{d}x}(x)\mathrm{d} x \\
&=
\frac{E}{\left(x^{e}_{2}-x^{e}_{1}\right)^{2}}\int_{x^{e}_{1}}^{x^{e}_{2}}
\left(\alpha x + \beta\right)\mathrm{d} x =
\frac{E}{h^{e}}\left(\alpha\frac{x^{e}_{1} + x^{e}_{2}}{2} + \beta\right)
= K_{2,2},\\
K^{e}_{1,2} &= K^{e}_{2,1} = - K^{e}_{1,1},
\end{align*}
$$
being $h^{e} = x^{e}_{2} - x^{e}_1$, the length of the element.

To compute the components of the body force vector, $F^{e}$, we apply the formula,
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
Local stiffness matrices
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
\!\right)\\[15pt] 
K^{2} = \displaystyle\frac{\alpha E}{2}\left(\!\begin{array}{rr}
3 & -3\\
-3 & 3
\end{array}\!\right) + 2E\beta\left(
\!\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}\!\right)\\[15pt]
K^{3} = \displaystyle\frac{\alpha E}{2}\left(\!\begin{array}{rr}
5 & -5\\
-5 & 5
\end{array}\!\right) + 2E\beta\left(
\!\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}\!\right)\\[15pt]
K^{4} = \displaystyle\frac{\alpha E}{2}\left(\!\begin{array}{rr}
7 & -7\\
-7 & 7
\end{array}\!\right) + 2E\beta\left(
\!\begin{array}{rr}
1 & -1\\
-1 & 1\end{array}\!\right)
\end{array}
$$
