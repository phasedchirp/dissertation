Dissertation
============

Dissertation-related category learning models. Mostly written in [Julia](julialang.org) (tested w/ version 0.4.0-dev+1426, although there may be some warnings about deprecated array syntax).

*last updated 1/30/2015*

In the process of major revisions.

* Documentation currently lacking. Will re-add in the near future.

If you see egregious math errors (ignoring my terrible assumptions about probability distributions) feel free to point them out.

If you have suggestions for alternatives to my terrible assumptions about probability distributions, that'd be pretty cool too.

## Files currently in use:

* `diss.jl`: Biased Category Learner code.
* `GAmod.jl`: Gradient-based category learner based on OME as described in Vallabha et al. (2007) used for comparisons.
* `cluster_metrics.jl`: some code for testing clustering output. So far just F1-score.
* `vowels2.jl`: parameters/sampling functions for generating simulated vowel data for simulations (ERB-scaled).
* `sim.jl`: some testing code. Set up to be run interactively rather than as a script so no output files.
* `BCL_simulations.ipynb`: Biased category learning simulations (a bit out of date).
* `OME_simulations.ipynb`: Gradient learner simulations for comparisons (a bit out of date).

## Files no longer in use or out of date:

* `Simulations_1.ipynb`: set of simulations testing learning with variable number of dimensions.
* `Simulations_2.ipynb`: set of simulations testing learning with variable within-category variances.
* `Simulations_3.ipynb`: set of simulations testing learning with variable number of categories.
* `Vowels.jl`: hertz-scaled vowel parameters (not using currently)
