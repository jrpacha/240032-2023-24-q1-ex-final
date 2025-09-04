# 2023-24-ex-final. Problem 1
Consider the following problem on $[0,L]$ given by the equation

$$
-\frac{\mathrm{d}}{\mathrm{d} x}\left(k(x)\frac{\mathrm{d} u}%
{\mathrm{d} x}\right) = 0,\qquad\qquad 0 < x < L
$$

where $L > 0$ and $k = k(x)$ is a function which is constant and equal to
$k_{1}$ on $\Omega^{1} = [0, h_{1})$ and constant and equal to $k_{2}$ on
$\Omega^{2} = [h_{1}, h_{1} + h_{2}]$ with $L = h_{1} + h_{2}$. Assume the
following boundary conditions

$$
u(0) = u_{0},\qquad\qquad \left[k(x)\frac{\mathrm{d}u}{\mathrm{d} x} +
 20\left(u(x) - 50\right)\right]_{x = L} = 0,
$$

with $k_{1} = 10$, $k_{2} = 20$ and $u_{0} = 200$.

We will solve the one-dimensional problem by means of a linear elements at
$\Omega^{1}$ and another at $\Omega^{2}$.
