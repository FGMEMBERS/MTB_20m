%%
%% Propeller for Swedish Navy 20m MTB.
%%
%% Known: Diameter 0.7 m(?), pitch ??, diameter of hub ??.
%%        Engine power 1500 hp @ 2000 rpm.
%%        Max speed 50 knots.
%%

%% Assumed properties of seawater
%%   density:             1027.68 kg/m^3
%%   kinematic Viscosity: 0.00000183 m^2/s
%%   speed of sound:      1560 m/s


%% JavaProp parameters.
%%
%%   Diameter                0.7 m
%%   Spinner Dia.  Dsp       0.15 m
%%   Speed of Rotation       1400 1/min
%%   Velocity                25.00 m/s
%%   Number of Blades        4
%%   Power  P                1118550 W
%%

JP = [
%v/(nD)	v/(ΩR)	Ct	Cp	Cs	Pc	η	η*	stalled	v	n	Power	Thrust	Torque
%[-]	[-]	[-]	[-]	[-]	[-]	[%]	[%]	[%]	[m/s]	[1/min]	[kW]	[kN]	[kNm]
0.000   0.000   0.467998        0.816349        0.000033        999999.000000   0.00    0.00    95.00   0.00    1400    1.79    62.871  12.218
0.100   0.032   0.335746        0.620315        0.110022        1579.618000     5.41    18.58   95.00   1.63    1400    1.36    45.104  9.284
0.200   0.064   0.469602        0.831484        0.207520        264.669517      11.30   28.65   95.00   3.27    1400    1.82    63.086  12.444
0.300   0.095   0.468663        0.839866        0.310656        79.211120       16.74   39.34   85.00   4.90    1400    1.84    62.960  12.570
0.400   0.127   0.464949        0.845608        0.413644        33.645660       21.99   48.23   85.00   6.53    1400    1.86    62.461  12.656
0.500   0.159   0.456955        0.850548        0.516452        17.327216       26.86   55.72   85.00   8.17    1400    1.87    61.387  12.730
0.600   0.191   0.446094        0.855135        0.619076        10.081409       31.30   62.03   85.00   9.80    1400    1.88    59.928  12.798
0.700   0.223   0.433831        0.859683        0.721490        6.382406        35.32   67.33   85.00   11.43   1400    1.89    58.281  12.866
0.800   0.255   0.422968        0.858189        0.824847        4.268282        39.43   71.68   76.00   13.07   1400    1.88    56.821  12.844
0.900   0.286   0.430584        0.828687        0.934468        2.894696        46.76   74.54   38.00   14.70   1400    1.82    57.844  12.403
1.000   0.318   0.433581        0.804625        1.044435        2.048962        53.89   77.05   2.00    16.33   1400    1.77    58.247  12.042
1.100   0.350   0.411198        0.775752        1.157306        1.484175        58.31   80.05   0.00    17.97   1400    1.70    55.240  11.610
1.200   0.382   0.376142        0.729581        1.278105        1.075152        61.87   83.08   0.00    19.60   1400    1.60    50.531  10.919
1.300   0.414   0.333387        0.668512        1.409034        0.774853        64.83   85.99   0.00    21.23   1400    1.47    44.787  10.005
1.400   0.446   0.288973        0.600477        1.550346        0.557253        67.37   88.62   0.00    22.87   1400    1.32    38.820  8.987
1.500   0.477   0.241279        0.522624        1.707864        0.394326        69.25   91.05   0.00    24.50   1400    1.15    32.413  7.822
1.600   0.509   0.198888        0.450469        1.876666        0.280056        70.64   93.04   0.00    26.13   1400    0.99    26.718  6.742
1.700   0.541   0.149747        0.362791        2.082177        0.188040        70.17   95.03   0.00    27.77   1400    0.80    20.117  5.430
1.720   0.547   0.139540        0.344144        2.129024        0.172224        69.74   95.42   0.00    28.09   1400    0.76    18.746  5.151
1.740   0.554   0.128678        0.324121        2.179756        0.156675        69.08   95.81   0.00    28.42   1400    0.71    17.286  4.851
1.760   0.560   0.117383        0.303142        2.234516        0.141595        68.15   96.22   0.00    28.75   1400    0.67    15.769  4.537
1.780   0.567   0.105819        0.281519        2.293605        0.127112        66.91   96.62   0.00    29.07   1400    0.62    14.216  4.213
1.800   0.573   0.094816        0.260797        2.355115        0.113874        65.44   97.00   0.00    29.40   1400    0.57    12.738  3.903
1.820   0.579   0.084157        0.240626        2.419931        0.101641        63.65   97.36   0.00    29.73   1400    0.53    11.306  3.601
1.840   0.586   0.074032        0.221331        2.487766        0.090475        61.55   97.70   0.00    30.05   1400    0.49    9.945   3.313
1.860   0.592   0.063187        0.200541        2.564910        0.079361        58.60   98.06   0.00    30.38   1400    0.44    8.488   3.001
1.880   0.598   0.052747        0.180430        2.647868        0.069147        54.96   98.39   0.00    30.71   1400    0.40    7.086   2.700
1.900   0.605   0.042016        0.159674        2.742248        0.059281        50.00   98.73   0.00    31.03   1400    0.35    5.644   2.390
1.920   0.611   0.030645        0.137571        2.854932        0.049495        42.77   99.08   0.00    31.36   1400    0.30    4.117   2.059
1.940   0.618   0.019964        0.116731        2.981016        0.040712        33.18   99.41   0.00    31.69   1400    0.26    2.682   1.747
1.960   0.624   0.009222        0.095709        3.133757        0.032369        18.89   99.73   0.00    32.01   1400    0.21    1.239   1.432
1.980   0.630   -0.001606       0.074473        3.328631        0.024431        0.00    99.99   0.00    32.34   1400    0.16    -0.216  1.115
2.000   0.637   -0.012427       0.053244        3.595639        0.016948        0.00    99.99   0.00    32.67   1400    0.12    -1.669  0.797
2.020   0.643   -0.024018       0.030677        4.054989        0.009478        0.00    99.99   0.00    32.99   1400    0.07    -3.227  0.459
2.040   0.649   -0.035176       0.009105        5.221276        0.002731        0.00    99.99   0.00    33.32   1400    0.02    -4.725  0.136
2.060   0.656   -0.046586       -0.012951       4.913714        -0.003772       0.38    46.73   0.00    33.65   1400    -0.03   -6.258  -0.194
];

C_Thrust1 = [JP(:,1) JP(:,3)];

C_Power1 = [JP(:,1) JP(:,4)];

Efficiency = C_Thrust1(:,1) .* C_Thrust1(:,2) ./ C_Power1(:,2);

%% Thrust and Power v.s. advance ratio.

figure();
axis();
plot(C_Thrust1(:,1), C_Thrust1(:,2),\
     C_Power1(:,1), C_Power1(:,2));

%% Efficiency v.s. advance ratio.
figure();
axis([0 1 0 1]);
plot(C_Thrust1(:,1), Efficiency);

Advance = 0:0.05:2.00;

C_Thrust = [Advance' \
            interp1(C_Thrust1(:,1),C_Thrust1(:,2), Advance, 'extrap')'];

C_Power = [Advance' \
           interp1(C_Power1(:,1),C_Power1(:,2), Advance, 0.01)'];

figure();
plot(Advance, C_Thrust(:,2), Advance, C_Power(:,2));
