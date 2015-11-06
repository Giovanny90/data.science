% Probability Theory: The Logic of Science
% Kevin Qian

# 似真推理（Plausible Reasoning）
The true logic of this world is the calculus of probabilities.
-- James Clerk Maxwell (1850)

包含$n$个命题的表达式$B=f(A_1,\ldots,A_n)$，是包含$M=2^n$个点的空间$S$上的逻辑函数，共有$2^M$个这样的函数。当$n=1$，有四个逻辑函数$\{f_1(A),\ldots,f_4(A)\}$，可以通过枚举来定义，即列出真值表：

A        T   F
------   --- ---
$f_1(A)$ T   T
$f_2(A)$ T   F
$f_3(A)$ F   T
$f_4(A)$ F   F

不过很明显，上面四个函数就是：
$$
\begin{aligned}
f_1(A)&=A+\bar{A} \\
f_2(A)&=A \\
f_3(A)&=\bar{A} \\
f_4(A)&=A\bar{A}
\end{aligned}
$$

对于一般的$n$，先考虑一些特殊的函数，这些函数恰好只在$S$中一个点取真值。对$n=2$，有$2^n=4$个这样的函数：

A,B        TT  TF  FT  FF
---------- --  --  --  --
$f_1(A,B)$ T   F   F   F
$f_2(A,B)$ F   T   F   F
$f_3(A,B)$ F   F   T   F
$f_4(A,B)$ F   F   F   T

显然，上面的函数就是四个conjunctions：
$$
\begin{aligned}
f_1(A,B)&=AB \\
f_2(A,B)&=A\bar{B} \\
f_3(A,B)&=\bar{A}B \\
f_4(A,B)&=\bar{A}\bar{B}
\end{aligned}
$$

下面考虑任何在$S$中特定点为真的逻辑函数，比如

A,B        TT  TF  FT  FF
---------- --  --  --  --
$f_5(A,B)$ F   T   F   T
$f_6(A,B)$ T   F   T   T

可以证明，这些函数都是上面四个conjunctions中若干个在对应点为真的函数的逻辑和。从而，
$$
\begin{aligned}
f_5(A,B) &= f_2(A,B)+f_4(A,B) \\
         &= A\bar{B}+\bar{A}\bar{B} \\
         &= (A+\bar{A})\bar{B} \\
         &= \bar{B},
\end{aligned}
$$
类似的，
$$
\begin{aligned}
f_6(A,B) &= f_1(A,B)+f_3(A,B)+f_4(A,B) \\
         &= AB+\bar{A}B+\bar{A}\bar{B} \\
         &= B+\bar{A}\bar{B} \\
         &= \bar{A}+B.
\end{aligned}
$$
亦即，$f_6(A,B)$是一个implication：$f_6(A,B)=(A\Rightarrow B)$。任何在$S$中至少一点为真的逻辑函数都可以用这种方法构造出来。共有$2^4-1=15$个这样的函数。剩余的函数（永远为假），只要取一个矛盾式即可：$f_16(A,B)\equiv A\bar{A}$。

这种方法（在逻辑学教材中称为“分隔规范式约简”）对任何$n$都有效。因此，通过思维构建，可以验证：析取、合取、否定三个操作（AND，OR，NOT），足以生成任何逻辑函数，亦即它们构成完备集。由析取合取的对偶性可知，只需(AND,NOT)两个操作就可以构成演绎逻辑的完备集。

有没有一个操作，可以包含AND和NOT呢？令人惊讶的是，不仅有而且还有两个这样的操作。定义AND的反NAND：
$$A\uparrow B\equiv \bar{AB}=\bar{A}+\bar{B}$$
从而立即有：
$$\bar{A}=A\uparrow A$$
$$AB=(A\uparrow B)\uparrow (A\uparrow B)$$
$$A+B=(A\uparrow A)\uparrow(B\uparrow B)$$
因此，任何逻辑函数都可以NAND构造出来。类似的，定义NOR为：
$$A\downarrow B \equiv \bar{A+B}=\bar{A}\bar{B}$$
用它也可生成所有的逻辑函数：
$$\bar{A}=A\downarrow A$$
$$A+B=(A\downarrow B)\downarrow (A\downarrow B)$$
$$AB=(A\downarrow A)\downarrow(B\downarrow B)$$

## The basic desiderata
对每一个需要推理的命题，我们的机器人都根据掌握的证据，赋予其一个似真度；一旦获得新的信息，它就基于这些信息修正之前的赋值。为此，首先需要在似真度和实数之间建立联系：
$$\mathrm{Desideratum (I): 似真度由实数表示}$$
我们采用一个自然但无关紧要的惯例：似真度越大，对应的实数越大。（如果有连续性的假定，将更为方便，但目前还比较困难）。沿用Keynes（1921）和Cox（1961）的符号，令$A|B$表示给定$B$为真，$A$为真的条件似真度。因此，
$$(A|B)>(C|B)$$
表示：给定$B$，$A$的似真度高于$C$。为了避免不可能问题，我们不尝试定义包含相互矛盾条件的表达式。
