# 2023-24-ex-final. Problem 2

Consider the equation $-c\Delta u = 0$ on the domain $\mathcal{D} =
\Omega^{1}\cup \Omega^{2}$ meshed with two elements and connectivity matrix
`C = [1, 2, 3, 5; 3, 4, 5, *]`. $\Omega^{1}$ is a rectangle with node $1$
in $(0,0)$, whose edge $1$-$2$ lies in the $OX$ axis. Edge $1$-$2$ of length
$5$ and the edge $2$-$3$ of length $1$. $\Omega^{2}$ is a right triangle
with edge $3$-$4$ of length $3$, and edge $4$-$5$ of length $4$. The value
of $c$ is $30$ in $\Omega^{1}$ and $48$ in $\Omega^{2}$.

__Hint:__ Due to the shape of the elements, there is no need to compute the
nodes coordinates

(a) (2 points) The values of $K_{2,3}^{1}$ and $K_{1,2}^{2}$ are,

- [ ] `-34` and `-9`
- [ ] `-46` and `-16`
- [ ] Leave it empty (no penalty)
- [ ] `-41` and `-18`
- [x] `-49` and `-32` 

(b) (3 points) The value of $K_{3,5}$ in the assembled matrix is,

- [ ] `-7`
- [ ] Leave it empty (no penalty)
- [ ] `7`
- [ ] `17`
- [x] `23`

\(c\) (3 points) Assume that we have boundary conditions $u(x,y)\equiv 1$ on
the boundaries $4$-$5$, $5$-$1$ and $1$-$2$, $q_{n}^{1}(x,y)\equiv 0$ on
$2$-$3$ and $q_{n}^{2}(x,y)\equiv 2$ on $3$-$4$. Then, the value we obtain
for the approximate solution at node $3$ (i.e., $U_{3}$) is,

- [ ] Leave it empty (no penalty)
- [ ] `1.043956`
- [x] `1.035714`
- [ ] `1.046512`
- [ ] `1.040541`

(d) (2 points) Same as \(c\), but now, $\dfrac{\partial u}{\partial
x}(x,y) = 2 u(x,y)$ on $2$-$3$. Then, the value of $U_{3}$ is, 

__Hint:__ You can formulate this BC as a convection one for the suitable
values of $\beta$ and $T_{\infty}$

- [ ] Leave it empty (no penalty)
- [ ] `-1.113537`
- [x] `1.515625`
- [ ] `-1.914894`
- [ ] `-19.5000`
