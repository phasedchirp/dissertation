Dissertation
============

Dissertation-related category learning models. Mostly written in [Julia](julialang.org).

*last updated 12/18/2014*

In the process of major revisions.

* The way regularization is implemented isn't correct at the moment.
* Trying out a couple of different things.

If you see egregious math errors (ignoring my terrible assumptions about probability distributions) feel free to point them out.

If you have suggestions for alternatives to my terrible assumptions about probability distributions, that'd be pretty cool too.

## Files currently in use:

* `Diss.jl`: Biased Category Learner code. This currently needs to be cleaned up a bit.
* `GAmod.jl`: Gradient-based category learner based on OME as described in Vallabha et al. (2007) used for comparisons.
* `cluster_metrics.jl`: some code for testing clustering output. So far just F1-score.
* `vowels2.jl`: parameters for generating simulated vowel data for simulations (ERB-scaled).
* `BCL_simulations.ipynb`: Biased category learning simulations.
* `OME_simulations.ipynb`: Gradient learner simulations for comparisons.

## Files no longer in use or out of date:

* `model_main.ipynb`: description of the model, somewhat outdated but will fix at some point.
* `Vowels.jl`: hertz-scaled vowel parameters (not using currently)
