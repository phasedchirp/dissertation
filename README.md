Dissertation
============

Dissertation-related category learning models. Mostly written in [Julia](julialang.org) (tested w/ version 0.4.0-dev+5011 (commit 4d9bc85), although there will be a warnings about deprecated syntax).

*last updated 7/15/2015*

This represents the version of model and simulation code used in my defense draft.

* For an explanation of how the model is meant to work, contact me for a copy of the relevant chapters.

If you see egregious math or coding errors feel free to point them out.

If you have suggestions for alternatives to some of the implementation, that'd be pretty cool too.

## Files currently in use:

* `diss.jl`: Biased Category Learner code.
* `GAmod.jl`: Gradient-based category learner based on OME as described in Vallabha et al. (2007), used for comparisons.
* `cluster_metrics.jl`: some code for testing clustering output. Functions for computing F1-score, precision, and recall.
* `vowels2.jl`: parameters/sampling functions for generating simulated vowel data (ERB-scaled).
* `sim1-jl`: code for simulation 1 comparing performance of models with 2-, 3-, 4-, and 5- dimensional input data.
* `sim2-jl`: code for simulation 2(b) attempting to simulate experimental results
* `sim2a-jl`: code for simulation 2a attempting to simulate experimental results
* `sim3-jl`: code for simulation 3 simulating L2 learning.
* `*_stims.csv`: experimental stimuli for simulation 2 (where * is one of `bal`, `F2`, or `F0`)
* `*_test.csv`: testing stimuli for simulation 2 (where * is one of `bal`, `F2`, or `F0`)


## Files no longer in use or out of date:

* `Vowels.jl`: hertz-scaled vowel parameters (not using currently)
