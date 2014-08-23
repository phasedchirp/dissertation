# Simulating vowel data based on Hillenbrand et al., 1995
# F0-4 are ERB-scaled.

# Category means for adult women
# Dims are duration, F0, F1, F2, F3, F4 (formants measured at midpoint)
iy_mu = [306.83; 14.32; 21.43; 47.68; 50.81; 54.84];
ei_mu = [320.94; 14.00; 23.91; 46.28; 49.23; 54.70];
ae_mu = [334.19; 13.77; 26.94; 45.05; 48.82; 54.71];
oo_mu = [249.27; 14.44; 23.54; 35.30; 48.05; 53.77];
uw_mu = [236.52; 13.95; 28.55; 37.43; 48.44; 54.04];
ah_mu = [324.33; 13.68; 31.18; 38.55; 48.06; 54.62];
aw_mu = [350.52; 13.76; 29.31; 34.83; 48.01; 53.31];
eh_mu = [251.60; 13.72; 27.93; 43.14; 48.72; 54.69];
ih_mu = [241.40; 14.22; 22.69; 45.28; 49.27; 54.80];
oa_mu = [326.69; 13.91; 24.33; 32.82; 48.04; 53.24];
uh_mu = [236.52; 13.95; 28.55; 37.43; 48.44; 54.04];

# category covariances for adult women

iy_sigma = [2097.844 -9.659 -10.636 -7.715 1.434 -7.506;
-9.659  1.101   0.946  0.201 0.152  0.387;
-10.636  0.946   1.284  0.184 0.102  0.083;
-7.715  0.201   0.184  0.711 0.483  0.492;
1.434  0.152   0.102  0.483 1.242  0.921;
-7.506  0.387   0.083  0.492 0.921  2.159];

ei_sigma = [2750.358 -10.736  3.270 -6.909  3.515  3.361;
-10.736   0.984  0.176  0.120  0.265  0.358;
3.270   0.176  2.178 -0.283 -0.217 -0.006;
-6.909   0.120 -0.283  0.908  0.605  0.554;
3.515   0.265 -0.217  0.605  0.884  0.523;
3.361   0.358 -0.006  0.554  0.523  1.372];

ae_sigma = [2505.432 -9.955  6.815 -12.056  1.993 25.164;
-9.955  0.843 -0.025   0.243  0.300  0.094;
6.815 -0.025  1.773  -0.564 -0.128  0.424;
-12.056  0.243 -0.564   1.123  0.712  0.148;
1.993  0.300 -0.128   0.712  1.085  0.540;
25.164  0.094  0.424   0.148  0.540  1.711];

oo_sigma = [2629.180 -7.599 -18.450  4.542 -2.495 -2.309;
-7.599  0.874   0.253  0.139  0.045  0.069;
-18.450  0.253   0.967  0.672  0.023  0.030;
4.542  0.139   0.672  2.852  0.122 -0.027;
-2.495  0.045   0.023  0.122  0.998  0.181;
-2.309  0.069   0.030 -0.027  0.181  0.924];

uw_sigma = [2895.972 -17.239 -19.584 67.988 -3.967 3.212;
-17.239   1.130   1.025 -0.357 -0.006 0.108;
-19.584   1.025   1.106 -0.106 -0.018 0.110;
67.988  -0.357  -0.106  6.441  0.193 0.531;
-3.967  -0.006  -0.018  0.193  0.644 0.520;
3.212   0.108   0.110  0.531  0.520 1.637];

ah_sigma = [2587.078 -10.401 -9.371 -6.464  6.785 -17.926;
-10.401   0.983  0.196  0.567 -0.034  -0.252;
-9.371   0.196  2.159  0.644  0.253   0.510;
-6.464   0.567  0.644  1.537  0.029  -0.097;
6.785  -0.034  0.253  0.029  0.938  -0.142;
-17.926  -0.252  0.510 -0.097 -0.142   1.982];

aw_sigma = [2274.595 -3.643 -6.444 3.611 -3.352 -14.236;
-3.643  0.805  0.349 0.527 -0.173   0.038;
-6.444  0.349  1.612 1.226  0.094  -0.242;
3.611  0.527  1.226 2.355  0.019   0.025;
-3.352 -0.173  0.094 0.019  1.350  -0.027;
-14.236  0.038 -0.242 0.025 -0.027   0.931];

eh_sigma = [2895.946 -9.680  4.741 -4.533 8.922  9.468;
-9.680  0.717  0.463 -0.091 0.100 -0.061;
4.741  0.463  1.800 -0.142 0.274 -0.003;
-4.533 -0.091 -0.142  1.116 0.455  0.393;
8.922  0.100  0.274  0.455 0.971  0.789;
9.468 -0.061 -0.003  0.393 0.789  2.058];

ih_sigma = [2816.414 -9.327 -5.843  0.033 3.471 -1.345;
-9.327  0.827  0.365  0.050 0.283  0.305;
-5.843  0.365  0.760 -0.033 0.210  0.203;
0.033  0.050 -0.033  0.953 0.628  0.372;
3.471  0.283  0.210  0.628 0.914  0.444;
-1.345  0.305  0.203  0.372 0.444  1.136];

oa_sigma = [2391.922 -11.975 -4.999 6.686 -8.107 1.896;
-11.975   0.930  0.147 0.160  0.103 0.152;
-4.999   0.147  3.564 2.299  0.030 0.146;
6.686   0.160  2.299 2.875  0.057 0.325;
-8.107   0.103  0.030 0.057  1.097 0.331;
1.896   0.152  0.146 0.325  0.331 0.789];

uh_sigma = [2338.255 -3.534 -0.241 9.866 1.159 10.464;
-3.534  0.908  0.298 0.411 0.130  0.205;
-0.241  0.298  1.072 0.497 0.370  0.242;
9.866  0.411  0.497 1.521 0.429  0.449;
1.159  0.130  0.370 0.429 0.895  0.156;
10.464  0.205  0.242 0.449 0.156  1.082];

var_scaling = 0.3

iy_sample = cat(1,rand(MvNormal(iy_mu,iy_sigma*var_scaling),500),zeros(1,500));
ei_sample = cat(1,rand(MvNormal(ei_mu,ei_sigma*var_scaling),500),ones(1,500));
ae_sample = cat(1,rand(MvNormal(ae_mu,ae_sigma*var_scaling),500),ones(1,500)*2);
oo_sample = cat(1,rand(MvNormal(oo_mu,oo_sigma*var_scaling),500),ones(1,500)*3);
uw_sample = cat(1,rand(MvNormal(uw_mu,uw_sigma*var_scaling),500),ones(1,500)*4);
ah_sample = cat(1,rand(MvNormal(ah_mu,ah_sigma*var_scaling),500),ones(1,500)*5);
aw_sample = cat(1,rand(MvNormal(aw_mu,aw_sigma*var_scaling),500),ones(1,500)*6);
eh_sample = cat(1,rand(MvNormal(eh_mu,eh_sigma*var_scaling),500),ones(1,500)*7);
ih_sample = cat(1,rand(MvNormal(ih_mu,ih_sigma*var_scaling),500),ones(1,500)*8);
oa_sample = cat(1,rand(MvNormal(oa_mu,oa_sigma*var_scaling),500),ones(1,500)*9);
uh_sample = cat(1,rand(MvNormal(uh_mu,uh_sigma*var_scaling),500),ones(1,500)*10);

sample_all = cat(2,iy_sample,ei_sample,ae_sample,oo_sample,uw_sample,ah_sample,aw_sample,
eh_sample,ih_sample,oa_sample,uh_sample);
ord = randperm(size(sample_all,2));
col1 = permute!(sample_all[1,:],ord);
col2 = permute!(sample_all[2,:],ord);
col3 = permute!(sample_all[3,:],ord);
col4 = permute!(sample_all[4,:],ord);
col5 = permute!(sample_all[5,:],ord);
col6 = permute!(sample_all[6,:],ord);
col7 = permute!(sample_all[7,:],ord);
vowels_rand = cat(1,col1,col2,col3,col4,col5,col6,col7);