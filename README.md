Probability & Statistics (201-BLE) Course Notes
===============

These are notes used to teach a one semester introduction to probability, random variables, and statistical inference at the CEGEP (roughly second-year university) level, with differential and integral calculus as prerequisites.

To work with continuous sample spaces and to develop the weak law of large numbers in a rigorous way, at an appropriate level and subject to the time constraints of a single term course, here are some decisions that I made:

- It's sufficient to say an event is a subset of a sample space, and carefully avoid implying the converse. The notion of measurability is clearly beyond the scope of the course. Some of the subtleties of continuous sample spaces that can be rigorously developed at this level are discussed in Section 1.3.

- There's a short chapter on joint distributions which is not used in the notes. It's common practice to work with sums of independent random variables without introducing joint distributions formally (rolling a pair of fair dice, for example). The definition of independence for discrete random variables is given as P(X=x and Y=y) = P(X=x)P(Y=y) for all real values x and y, which is a clear extension of the notion of independence of events. This definition is sufficient to prove the key results on expectation and variance of a sum of independent random variables in the discrete case. The continuous case is omitted.

In order to compile ProbabilityNotes.tex and modify the notes yourself using your favourite tex distribution, you'll need to have pdflatex, bibtex, and gnuplot installed. If gnuplot is giving you problems, let me know. I can add the files it generates to this repository and remove that dependency.