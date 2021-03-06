# Simulating vowel data based on Hillenbrand et al., 1995

# Category means for adult women
# Dims are duration, F0, F1, F2, F3, F4 (formants measured at midpoint)
# /i/
iy_mu = [306.83; 227.33; 437.25; 2761.31; 3372.76; 4352.71];
# /e/
ei_mu = [320.94; 219.58; 535.48; 2525.62; 3049.86; 4308.32];
# /ae/
ae_mu = [334.19; 214.19; 675.69; 2334.75; 2972.68; 4314.92];
# /U/ (horseshoe)
oo_mu = [249.27; 230.02; 518.65; 1228.56; 2829.44; 4061.20];
# /u/
uw_mu = [303.83; 235.56; 459.67; 1105.52; 2735.40; 4115.89];
# /a/
ah_mu = [324.33; 212.31; 921.12; 1525.83; 2831.94; 4290.93];
# // (open o)
aw_mu = [350.42; 214.00; 804.27; 1188.28; 2824.35; 3945.53];
# /E/ (epsilon)
eh_mu = [251.60; 213.04; 727.06; 2062.67; 2952.83; 4311.97];
# /I/ (small-cap i)
ih_mu = [241.40; 224.69; 484.31; 2369.10; 3057.12; 4332.91];
# /o/
oa_mu = [326.69; 217.67; 555.46; 1035.52; 2828.29; 3927.61];
# // (wedge or schwa)
uh_mu = [236.52; 218.50; 760.19; 1415.67; 2900.92; 4133.13];

# category covariances for adult women

iy_sigma = [2098. -230 -391 -1330   367  -2055;
            -230  598  792   877   866   2859;
            -391  792 1650  1278  1010   1229;
            -1330  877 1278 21739 18241  22825;
            367  866 1010 18241 56256  54223;
            -2055 2859 1229 22825 54223 176087];

ei_sigma = [2750. -245   149 -1124   677    822;
            -245  511   167   506  1187   2310;
            149  167  3963 -1939 -1608   -164;
            -1124  506 -1939 23864 19085  23730;
            677 1187 -1608 19085 32855  26937;
            822 2310  -164 23730 26937 102807];

ae_sigma = [2505.0 -229   399 -1818   291   7262;
            -229  424   -51   796  1342    535;
            399  -51  4800 -4418 -1274   6277;
            -1818  796 -4418 25184 21256   6268;
            291 1342 -1274 21256 40007  27792;
            7262  535  6277  6268 27792 135344];

oo_sigma = [2629. -189 -779   424  -516  -524;
            -189.  484  258   240   238   395;
            -779.  258 1696  2399   233   329;
            424.  240 2399 20908  1976 -1438;
            -516.  238  233  1976 33424  8573;
            -524.  395  329 -1438  8573 59623];

uw_sigma = [2896. -421 -740  5609  -623    668;
            -421  637  889  -734    10    762;
            -740  889 1496  -418   -58   1203;
            5609 -734 -418 42130  2436   9702;
            -623   10  -58  2436 19576  23230;
            668  762 1203  9702 23230 112277];

ah_sigma = [2587.  -238 -646  -594  1185  -5080;
            -238   493  302  1274  -143  -1490;
            -646   302 9359  4354  3313   9133;
            -594  1274 4354 15616   449  -2470;
            1185  -143 3313   449 31178  -8303;
            -5080 -1490 9133 -2470 -8303 161126];

aw_sigma = [2275.  -83  -367   227  -652 -3785;
            -83  409   491  1034  -694   240;
            -367  491  5569  6057   928 -3673;
            227 1034  6057 16615    99    -3;
            -652 -694   928    99 45019 -2117;
            -3785  240 -3673    -3 -2117 62593];

eh_sigma = [2896. -221  196  -684  1560   2253
            -221  368  598  -265   518   -204;
            196  598 5432  -849  3407    182;
            -684 -265 -849 20408 11749  14877;
            1560  518 3407 11749 35805  37141;
            2253 -204  182 14877 37141 147170];

ih_sigma = [2816. -222 -221   -22   637  -456;
            -222  429  331   229  1360  2022;
            -221  331 1181  -183  1726  2195;
            -22  229 -183 22331 19154 15650;
            637 1360 1726 19154 36139 24340;
            -456 2022 2195 15650 24340 91734];

oa_sigma = [2392. -282 -176   526 -1455   515;
            -282  489  164   298   479   829;
            -176  164 6496  6954   -17  1391;
            526  298 6954 15020   771  5878;
            -1455  479  -17   771 35040 15611;
            515  829 1391  5878 15611 48617];

uh_sigma = [2338.  -98  -21   907   226  2539;
            -98  497  414   925   619  1340;
            -21  414 3313  2539  3730  3679;
            907  925 2539 13318  6978 11463;
            226  619 3730  6978 29810  7626;
            2539 1340 3679 11463  7626 80296];

var_scaling = 0.7

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