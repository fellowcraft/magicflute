<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr = 44100
kr =  4410
ksmps = 10
nchnls = 2
galeft  init 0
garight init 0

instr 1
idur            = p3
iamp            = ampdb(p4)
ifreq           = p5   ;  1x - negative backwards 
iat             = p6
irel            = p7
ipanStart       = p8
ipanEnd         = p9
iskiptime       = p10
irevSend        = p11

kpan    linseg  ipanStart, idur, ipanEnd
aAmpEnv expsegba 0.01, iat,  iamp, irel, 0.01

aIn  diskin2 "../WAV/night.wav", ifreq, iskiptime, 1

aLeft  = aIn * kpan       * aAmpEnv
aRight = aIn * (1 - kpan) * aAmpEnv 

outs aLeft, aRight 

galeft    =         galeft  +  aIn * kpan       * irevSend
garight   =         garight +  aIn * (1 - kpan) * irevSend
endin

instr 99                           ; global reverb ----------------------------
irvbtime    =        p4
aleft,  aleft  reverbsc  galeft,  galeft, irvbtime, 18000, sr, 0.8, 1 
aright, aright reverbsc  garight, garight,irvbtime, 18000, sr, 0.8, 1 
outs   aright,   aleft              
galeft    =    0
garight   =    0 
endin
</CsInstruments>
<CsScore>; Reverb
i99     0   191    0.9 

i1 98.4  0.2   -3     0.77  0.05  0.15  0.94  0.11  77.315  0     
i1 86.8  0.4   -3     1.263 0.1   0.3   0.47  0.38  130.399 0     
i1 84.2  0.4   -3     1.084 0.1   0.3   0.78  0.95  43.52   0     
i1 34.2  0.5   -3     0.86  0.13  0.38  0.73  0.27  135.096 0.01  
i1 96.8  0.3   -3     1.158 0.08  0.23  0.58  0.81  158.574 0.01  
i1 150.6 0.6   -3     0.915 0.15  0.45  0.87  0.8   64.961  0.01  
i1 8.4   0.4   -3     1.161 0.1   0.3   0.89  0.92  80.317  0     
i1 60.2  0.5   -3     1.347 0.13  0.38  0.7   0.8   164.371 0     
i1 126.6 0.3   -3     1.193 0.08  0.23  0.61  0.99  50.739  0.01  
i1 89.4  0.2   -3     1.368 0.05  0.15  0.95  0.86  49.578  0     
i1 124   0.5   -3     1.391 0.13  0.38  0.79  0.65  15.992  0.01  
i1 134.9 0.4   -3     0.589 0.1   0.3   0.83  0.6   169.944 0.01  
i1 43    0.3   -3     0.639 0.08  0.23  0.45  0.48  25.606  0.01  
i1 111.5 0.5   -3     0.502 0.13  0.38  0.97  0.55  27.106  0     
i1 28.4  0.5   -3     0.61  0.13  0.38  0.64  0.02  35.454  0     
i1 76.4  0.5   -3     1.203 0.13  0.38  0.07  0.07  94.968  0.01  
i1 24.5  0.4   -3     1.471 0.1   0.3   0.99  0.26  171.143 0     
i1 175.8 0.5   -3     0.831 0.13  0.38  0.48  0.21  114.024 0.01  
i1 155   0.4   -3     0.686 0.1   0.3   0.02  0.8   118.651 0.01  
i1 93.9  0.5   -3     0.975 0.13  0.38  0.25  0.74  49.651  0     
i1 9.2   0.6   -3     1.473 0.15  0.45  0.69  0.86  67.612  0     
i1 17.3  0.3   -3     1.436 0.08  0.23  0.08  0.36  68.292  0     
i1 158.4 0.5   -3     0.93  0.13  0.38  0.88  0.39  25.629  0     
i1 61.2  0.5   -3     0.804 0.13  0.38  0.79  0.76  148.466 0.01  
i1 21.2  0.5   -3     0.766 0.13  0.38  0.74  0.49  33.714  0.01  
i1 77.7  0.4   -3     0.858 0.1   0.3   0.19  0.5   33.787  0.01  
i1 115.2 0.6   -3     1.389 0.15  0.45  0.68  0.07  93.474  0.01  
i1 77.8  0.2   -3     1.13  0.05  0.15  0.13  0.04  7.773   0.01  
i1 54.8  0.2   -3     1.028 0.05  0.15  0.97  0.35  75.173  0.01  
i1 154.9 0.4   -3     1.007 0.1   0.3   0.28  0.91  61.346  0     
i1 123.1 0.4   -3     0.824 0.1   0.3   0.61  0.67  20.325  0     
i1 46.5  0.6   -3     1.141 0.15  0.45  0.45  0.81  167.949 0.01  
i1 158.9 0.5   -3     1.162 0.13  0.38  0.23  0.89  152.568 0.01  
i1 23.8  0.4   -3     1.327 0.1   0.3   0.09  0.39  127.128 0.01  
i1 66.8  0.2   -3     0.962 0.05  0.15  0.99  0.83  164.467 0     
i1 31.7  0.3   -3     0.642 0.08  0.23  0.98  0.38  128.376 0.01  
i1 31.7  0.3   -3     0.817 0.08  0.23  0.42  0.27  112.312 0     
i1 37.5  0.3   -3     0.564 0.08  0.23  0.17  0.98  7.798   0.01  
i1 138.2 0.3   -3     1.186 0.08  0.23  0.1   0.61  103.012 0     
i1 174.9 0.4   -3     1.346 0.1   0.3   0.52  0.39  96.968  0.01  
i1 97    0.2   -3     1.038 0.05  0.15  0.46  0.05  98.398  0.01  
i1 79.4  0.3   -3     0.672 0.08  0.23  0.18  0.65  127.746 0.01  
i1 120.9 0.6   -3     0.605 0.15  0.45  0.62  0.42  141.5   0     
i1 111.2 0.4   -3     0.957 0.1   0.3   0.56  0.54  0.169   0     
i1 131   0.4   -3     0.684 0.1   0.3   0.07  0.76  149.738 0     
i1 142.8 0.2   -3     1.275 0.05  0.15  0.89  0.63  90.697  0.01  
i1 156.8 0.3   -3     1.263 0.08  0.23  0.78  0.05  69.93   0.01  
i1 154.7 0.4   -3     1.296 0.1   0.3   0.94  0.37  71.271  0.01  
i1 100.8 0.3   -3     0.747 0.08  0.23  0.47  0.13  113.109 0     
i1 39    0.6   -3     0.919 0.15  0.45  0.42  0.33  27.983  0.01  
i1 124.5 0.2   -3     1.229 0.05  0.15  0.45  0.25  119.049 0.01  
i1 41.3  0.2   -3     0.57  0.05  0.15  0.27  0.5   59.401  0.01  
i1 140   0.2   -3     0.876 0.05  0.15  0.38  0.4   167.023 0     
i1 62.8  0.5   -3     1.453 0.13  0.38  0.02  0.33  154.283 0     
i1 113.6 0.5   -3     1.245 0.13  0.38  0.91  0.54  115.589 0     
i1 93.1  0.3   -3     0.829 0.08  0.23  0.61  0.15  15.074  0     
i1 11    0.3   -3     1.029 0.08  0.23  0.86  0.74  129.085 0     
i1 148.2 0.2   -3     1.319 0.05  0.15  0.44  0.03  163.028 0.01  
i1 167.2 0.4   -3     0.533 0.1   0.3   0.78  0.71  50.684  0     
i1 20.2  0.4   -3     0.561 0.1   0.3   0.78  0.34  159.77  0     
i1 131.1 0.6   -3     1.32  0.15  0.45  0.89  0.25  142.246 0.01  
i1 47.4  0.4   -3     0.988 0.1   0.3   0.19  0.05  110.782 0.01  
i1 109.3 0.4   -3     1.475 0.1   0.3   0.23  0.1   158.719 0.01  
i1 119.8 0.2   -3     1.354 0.05  0.15  0.89  0.63  11.172  0.01  
i1 26.8  0.3   -3     0.971 0.08  0.23  0.52  0.39  93.235  0     
i1 24.6  0.6   -3     0.785 0.15  0.45  0.08  0.74  17.44   0     
i1 134   0.5   -3     1.097 0.13  0.38  0.88  0.14  94.213  0     
i1 56.5  0.5   -3     0.758 0.13  0.38  0.54  0.56  100.388 0     
i1 154.2 0.3   -3     1.253 0.08  0.23  0.13  0.35  167.433 0.01  
i1 138.6 0.5   -3     1.044 0.13  0.38  0.01  0.51  61.999  0.01  
i1 36.2  0.2   -3     0.576 0.05  0.15  0.97  0.36  158.397 0.01  
i1 157.6 0.5   -3     1.113 0.13  0.38  0.08  0.86  33.27   0     
i1 29.5  0.5   -3     1.339 0.13  0.38  0.88  0.84  125.878 0     
i1 8.3   0.3   -3     1.048 0.08  0.23  0.85  0.88  132.928 0.01  
i1 114.3 0.5   -3     0.629 0.13  0.38  0.5   0.75  142.142 0     
i1 103.9 0.5   -3     0.595 0.13  0.38  0.55  0.42  29.437  0     
i1 133.8 0.5   -3     1.13  0.13  0.38  0.92  0.55  36.768  0.01  
i1 50.7  0.3   -3     0.882 0.08  0.23  0.26  0.97  37.786  0.01  
i1 149.7 0.3   -3     0.886 0.08  0.23  0.03  0.25  167.874 0.01  
i1 140   0.3   -3     1.477 0.08  0.23  0.39  0.07  160.226 0.01  
i1 140.5 0.6   -3     1.054 0.15  0.45  0.46  0.47  93.353  0     
i1 68.2  0.5   -3     0.626 0.13  0.38  0.79  0.47  138.745 0     
i1 22.8  0.6   -3     0.717 0.15  0.45  0.64  0.1   126.959 0     
i1 128.2 0.4   -3     1.395 0.1   0.3   0.09  0.2   3.775   0.01  
i1 112.1 0.6   -3     0.697 0.15  0.45  0.74  0.74  91.93   0     
i1 64    0.6   -3     1.364 0.15  0.45  0.28  0.96  75.385  0.01  
i1 132.2 0.4   -3     0.596 0.1   0.3   0.14  0.03  90.793  0.01  
i1 22.5  0.5   -3     1.009 0.13  0.38  0.21  0.01  92.063  0     
i1 139.6 0.5   -3     0.651 0.13  0.38  0.51  0.1   12.315  0.01  
i1 74.2  0.5   -3     1.13  0.13  0.38  0.7   0.39  76.286  0     
i1 59.9  0.6   -3     1.466 0.15  0.45  0.18  0.92  164.57  0.01  
i1 39.9  0.3   -3     0.79  0.08  0.23  0.61  0.34  97.52   0     
i1 156.4 0.3   -3     1.347 0.08  0.23  0.23  0.37  73.644  0.01  
i1 123.4 0.5   -3     0.941 0.13  0.38  0.95  0.8   91.441  0     
i1 145.1 0.4   -3     0.753 0.1   0.3   0.5   0.29  176.67  0.01  
i1 154.6 0.5   -3     1.395 0.13  0.38  0.79  0.42  99.959  0.01  
i1 22.5  0.4   -3     1.186 0.1   0.3   0.67  0.83  172.211 0     
i1 93.5  0.5   -3     0.692 0.13  0.38  0.1   0.15  153.99  0.01  
i1 68    0.4   -3     0.7   0.1   0.3   0.19  0.36  168.36  0.01  
i1 59.9  0.5   -3     1.338 0.13  0.38  0.1   0.37  85.712  0.01  
i1 139.5 0.4   -3     0.832 0.1   0.3   0.29  0.78  111.568 0.01  
i1 116.7 0.4   -3     1.31  0.1   0.3   0.6   0.74  60.002  0     
i1 152.3 0.3   -3     1.026 0.08  0.23  0.69  0.02  43.009  0.01  
i1 64.9  0.3   -3     0.841 0.08  0.23  0.46  0.1   150.981 0.01  
i1 168.7 0.4   -3     0.555 0.1   0.3   0.68  0.61  77.248  0.01  
i1 123.1 0.6   -3     1.282 0.15  0.45  0.16  0.39  15.296  0.01  
i1 86.3  0.4   -3     0.899 0.1   0.3   0.92  0.51  119.363 0.01  
i1 151.8 0.4   -3     0.784 0.1   0.3   0.54  0.71  35.471  0.01  
i1 151   0.4   -3     1.094 0.1   0.3   0.49  0.21  156.954 0     
i1 36.9  0.3   -3     0.82  0.08  0.23  0.59  0.47  69.257  0.01  
i1 76.9  0.3   -3     1.179 0.08  0.23  0.91  0.48  82.675  0.01  
i1 42.6  0.2   -3     1.452 0.05  0.15  0     0.29  97.124  0.01  
i1 95.1  0.5   -3     0.982 0.13  0.38  0.64  0.27  81.913  0     
i1 148.2 0.3   -3     1.079 0.08  0.23  0.4   0.08  91.998  0.01  
i1 55.8  0.3   -3     0.976 0.08  0.23  0.67  0.63  154.253 0.01  
i1 123.3 0.4   -3     1.321 0.1   0.3   0.8   0.64  146.842 0     
i1 36.5  0.5   -3     0.963 0.13  0.38  0.63  0.9   1.751   0.01  
i1 120.1 0.4   -3     0.751 0.1   0.3   0.84  0.95  67.43   0.01  
i1 156.9 0.3   -3     1.395 0.08  0.23  0.53  0.36  49.043  0     
i1 90.9  0.5   -3     0.734 0.13  0.38  0.5   0.41  37.862  0.01  
i1 118.6 0.3   -3     0.584 0.08  0.23  0.23  0.96  10.831  0     
i1 78.1  0.5   -3     0.581 0.13  0.38  0.11  0.74  161.544 0     
i1 57    0.3   -3     0.621 0.08  0.23  0.39  0.47  25.01   0.01  
i1 125.8 0.3   -3     0.847 0.08  0.23  0.06  0.37  11.506  0     
i1 48.5  0.4   -3     1.268 0.1   0.3   0.95  0.25  59.705  0.01  
i1 29.4  0.4   -3     0.674 0.1   0.3   0.01  0.98  112.423 0.01  
i1 4.7   0.6   -3     0.643 0.15  0.45  0.45  0.65  103.865 0.01  
i1 8.7   0.2   -3     1.014 0.05  0.15  0.75  0.82  116.027 0.01  
i1 133.5 0.5   -3     1.475 0.13  0.38  0.16  0.77  138.313 0     
i1 71.2  0.4   -3     1.403 0.1   0.3   0.96  0.38  164.414 0.01  
i1 28    0.4   -3     1.163 0.1   0.3   0.06  0.09  173.746 0.01  
i1 131.6 0.5   -3     1.325 0.13  0.38  0.62  0.76  24.218  0     
i1 43.9  0.5   -3     0.781 0.13  0.38  0.97  0.06  41.336  0.01  
i1 133.8 0.5   -3     0.744 0.13  0.38  0.84  0.21  46.611  0     
i1 147.2 0.3   -3     1.257 0.08  0.23  0.8   0.99  71.682  0.01  
i1 122.5 0.6   -3     1.39  0.15  0.45  0.32  0.17  115.967 0     
i1 30.8  0.3   -3     1.083 0.08  0.23  0.85  0.48  168.117 0.01  
i1 71.7  0.4   -3     0.572 0.1   0.3   0.58  0.11  136.948 0     
i1 45.7  0.2   -3     1.388 0.05  0.15  0.8   0.83  149.618 0.01  
i1 163.4 0.3   -3     0.737 0.08  0.23  0.14  0.19  82.596  0     
i1 69.2  0.2   -3     1.434 0.05  0.15  0.84  0.27  34.849  0     
i1 36.1  0.4   -3     1.489 0.1   0.3   0.93  0.16  86.609  0.01  
i1 128.3 0.4   -3     0.958 0.1   0.3   0.27  0.03  153.943 0.01  
i1 34.2  0.5   -3     0.975 0.13  0.38  0.03  0.8   118.468 0.01  
i1 107.4 0.6   -3     1.306 0.15  0.45  0.51  0.11  148.259 0.01  
i1 114.5 0.4   -3     0.593 0.1   0.3   0.26  0.47  144.527 0.01  
i1 14.4  0.3   -3     0.816 0.08  0.23  0.21  0.25  61.05   0     
i1 121.5 0.4   -3     0.9   0.1   0.3   0.39  0.66  44.147  0.01  
i1 20.8  0.6   -3     0.64  0.15  0.45  0.32  0.94  108.692 0.01  
i1 83.8  0.3   -3     0.931 0.08  0.23  0.76  0.34  8.649   0.01  
i1 72.8  0.4   -3     0.665 0.1   0.3   0.52  0.26  166.98  0     
i1 1.9   0.6   -3     1.285 0.15  0.45  0.83  0.19  51.308  0.01  
i1 81.7  0.4   -3     0.961 0.1   0.3   0.59  0.12  94.644  0.01  
i1 122.9 0.6   -3     0.76  0.15  0.45  0.07  0.61  15.518  0.01  
i1 89    0.5   -3     0.847 0.13  0.38  0.19  0.62  55.515  0     
i1 135.7 0.4   -3     0.633 0.1   0.3   0.62  0.19  20.121  0     
i1 157.2 0.3   -3     0.641 0.08  0.23  0.48  0.65  154.841 0     
i1 49.5  0.3   -3     1.107 0.08  0.23  0.09  0.25  127.367 0     
i1 110.1 0.2   -3     1.437 0.05  0.15  0.51  0.78  58.542  0     
i1 125.8 0.3   -3     0.809 0.08  0.23  0.02  0.57  171.142 0.01  
i1 169.1 0.5   -3     0.583 0.13  0.38  0.91  0.15  174.942 0.01  
i1 96.9  0.5   -3     0.966 0.13  0.38  0.54  0.63  151.849 0.01  
i1 47.7  0.3   -3     0.564 0.08  0.23  0.56  0.06  111.996 0     
i1 110.4 0.5   -3     0.664 0.13  0.38  0.03  0.09  23.725  0.01  
i1 174.9 0.4   -3     0.672 0.1   0.3   0.65  0.92  44.328  0     
i1 103.8 0.2   -3     0.795 0.05  0.15  0.97  0.08  55.303  0.01  
i1 148.3 0.6   -3     0.561 0.15  0.45  0.5   0.04  62.422  0.01  
i1 81    0.3   -3     0.777 0.08  0.23  0.11  0.88  35.665  0.01  
i1 141.9 0.4   -3     1.454 0.1   0.3   0.48  0.8   158.07  0     
i1 170.5 0.4   -3     1.256 0.1   0.3   0.16  0.82  62.812  0     
i1 57.9  0.3   -3     1.165 0.08  0.23  0.61  0.8   140.146 0.01  
i1 51.9  0.6   -3     0.718 0.15  0.45  0.64  0.63  165.835 0     
i1 141.6 0.4   -3     1.328 0.1   0.3   0.81  0.57  123.176 0.01  
i1 47.1  0.4   -3     0.748 0.1   0.3   0.63  0.15  147.505 0.01  
i1 149.9 0.5   -3     1.1   0.13  0.38  0.56  0.43  18.644  0.01  
i1 149.4 0.3   -3     1.132 0.08  0.23  0.58  0.07  35.924  0.01  
i1 96.6  0.3   -3     1.415 0.08  0.23  0.82  0.72  134.312 0.01  
i1 29.8  0.5   -3     1.199 0.13  0.38  0.93  0.95  104.372 0.01  
i1 122.5 0.6   -3     0.641 0.15  0.45  0.96  0.41  81.789  0.01  
i1 18.7  0.5   -3     0.661 0.13  0.38  0.94  0.24  21.492  0.01  
i1 12.3  0.3   -3     0.661 0.08  0.23  0.63  0.73  145.574 0.01  
i1 96.5  0.5   -3     0.757 0.13  0.38  0.95  0.68  99.115  0.01  
i1 169.4 0.2   -3     1.103 0.05  0.15  0.93  0.3   142.84  0.01  
i1 14.3  0.4   -3     0.813 0.1   0.3   0.14  0.89  106.584 0     
i1 175.5 0.3   -3     0.862 0.08  0.23  0.11  0.58  176.898 0.01  
i1 166.2 0.4   -3     1.267 0.1   0.3   0.97  0.37  130.899 0.01  
i1 54.2  0.3   -3     1.306 0.08  0.23  0.93  0.52  152.12  0.01  
i1 7.8   0.3   -3     1.473 0.08  0.23  0.64  0.6   98.02   0.01  
i1 172.1 0.3   -3     1.474 0.08  0.23  0.34  0.17  89.421  0.01  
i1 113.6 0.3   -3     0.974 0.08  0.23  0.94  0.66  127.56  0     
i1 31.6  0.3   -3     0.689 0.08  0.23  0.85  0.79  42.602  0.01  
i1 73.6  0.3   -3     1.377 0.08  0.23  0.36  0.52  32.08   0.01  
i1 164.6 0.6   -3     0.528 0.15  0.45  0.02  0.04  49.735  0.01  
i1 138.3 0.3   -3     0.664 0.08  0.23  0.56  0.95  129.492 0.01  
i1 62.5  0.6   -3     1.091 0.15  0.45  0.5   0.71  122.143 0.01  
i1 106   0.6   -3     0.689 0.15  0.45  0.03  0.97  83.903  0.01  
i1 146.6 0.6   -3     1.061 0.15  0.45  0.94  0.43  96.896  0.01  
i1 20.7  0.5   -3     0.774 0.13  0.38  0.13  0.48  63.615  0.01  
i1 44.6  0.4   -3     1.113 0.1   0.3   0.83  0.89  121.868 0.01  
i1 73.7  0.5   -3     1.351 0.13  0.38  0.84  0.49  31.765  0.01  
i1 176.9 0.3   -3     1.4   0.08  0.23  0.42  0.28  10.149  0.01  
i1 130.6 0.2   -3     1.051 0.05  0.15  0.02  0.72  35.636  0.01  
i1 6.6   0.5   -3     0.867 0.13  0.38  0.24  0.39  139.576 0.01  
i1 37.4  0.4   -3     0.603 0.1   0.3   0.76  0.12  11.195  0.01  
i1 20.1  0.5   -3     1.124 0.13  0.38  0.45  0.33  95.174  0.01  
i1 151.9 0.5   -3     1.451 0.13  0.38  0.18  0.76  142.2   0     
i1 89.3  0.2   -3     0.993 0.05  0.15  0.38  0.36  8.784   0.01  
i1 176   0.3   -3     0.562 0.08  0.23  0.81  0.86  38.253  0     
i1 9.9   0.5   -3     1.455 0.13  0.38  0.41  0.69  20.347  0     
i1 87.3  0.4   -3     1.105 0.1   0.3   0.27  0.61  140.615 0.01  
i1 153.1 0.3   -3     0.902 0.08  0.23  0.79  0.06  48.16   0.01  
i1 158.5 0.5   -3     1.321 0.13  0.38  0.85  0.51  68.539  0.01  
i1 165.2 0.4   -3     1.331 0.1   0.3   0.91  0.72  162.32  0     
i1 20.5  0.6   -3     1.495 0.15  0.45  0.54  0.98  88.555  0.01  
i1 170.8 0.6   -3     1.339 0.15  0.45  0.67  0.2   18.527  0     
i1 35.9  0.2   -3     1.44  0.05  0.15  0.63  0.95  1.32    0     
i1 52.9  0.4   -3     0.61  0.1   0.3   0.31  0.7   90.717  0     
i1 46    0.5   -3     1.057 0.13  0.38  0.14  0.93  160.823 0.01  
i1 30.3  0.4   -3     1.004 0.1   0.3   0.1   0.21  127.753 0     
i1 69.8  0.4   -3     1.228 0.1   0.3   0.31  0.51  59.225  0.01  
i1 151.3 0.4   -3     0.536 0.1   0.3   0.36  0.22  110.981 0.01  
i1 153   0.4   -3     1.262 0.1   0.3   0.07  0.34  109.053 0.01  
i1 77.7  0.6   -3     1.154 0.15  0.45  0.05  0.14  87.392  0.01  
i1 118.5 0.3   -3     0.95  0.08  0.23  0.09  0.7   122.171 0     
i1 172.4 0.3   -3     1.045 0.08  0.23  0.85  0.27  37.859  0.01  
i1 1.8   0.2   -3     1.461 0.05  0.15  0.61  0.52  97.847  0     
i1 23    0.2   -3     0.684 0.05  0.15  0.45  0.13  2.654   0     
i1 75.6  0.6   -3     0.936 0.15  0.45  0.94  0.78  20.748  0.01  
i1 152.1 0.5   -3     0.587 0.13  0.38  0.54  0.6   10.373  0     
i1 48.8  0.3   -3     1.245 0.08  0.23  0.25  0.16  14.785  0     
i1 33.7  0.3   -3     0.989 0.08  0.23  0.32  0.35  99.188  0.01  
i1 93.1  0.5   -3     0.849 0.13  0.38  0.33  0.88  25.47   0.01  
i1 59.6  0.5   -3     0.697 0.13  0.38  0.73  0.36  96.759  0     
i1 122.6 0.2   -3     0.874 0.05  0.15  0.02  0.32  145.725 0     
i1 65.7  0.4   -3     1.374 0.1   0.3   0.47  0.79  22.952  0.01  
i1 105   0.4   -3     0.839 0.1   0.3   0.42  0.3   47.723  0     
i1 118.8 0.4   -3     0.659 0.1   0.3   0.5   0.65  72.062  0.01  
i1 91.5  0.6   -3     0.639 0.15  0.45  0.65  0.02  50.883  0.01  
i1 61.7  0.3   -3     0.675 0.08  0.23  0.51  0.63  21.991  0     
i1 12.7  0.5   -3     0.928 0.13  0.38  0.88  0.9   153.919 0     
i1 29.9  0.3   -3     1.045 0.08  0.23  0.27  0.36  176.707 0.01  
i1 123.8 0.5   -3     0.619 0.13  0.38  0.79  0.14  155.78  0     
i1 9     0.6   -3     1.077 0.15  0.45  0.37  0.24  87.685  0.01  
i1 139.1 0.5   -3     1.419 0.13  0.38  0.01  0.42  66.015  0.01  
i1 58.9  0.5   -3     1.097 0.13  0.38  0.24  0.79  62.408  0.01  
i1 101.8 0.5   -3     1.085 0.13  0.38  0.73  0.69  135.214 0     
i1 3.2   0.5   -3     1.065 0.13  0.38  0.75  0.53  53.519  0.01  
i1 43.5  0.2   -3     0.604 0.05  0.15  0.09  0.92  22.345  0.01  
i1 134.4 0.5   -3     1.26  0.13  0.38  0.83  0.85  158.246 0     
i1 70    0.3   -3     0.625 0.08  0.23  0.22  0.56  119.943 0.01  
i1 127.2 0.4   -3     0.824 0.1   0.3   0.61  0.68  136.632 0.01  
i1 77.9  0.2   -3     1.228 0.05  0.15  0.59  0.08  21.572  0.01  
i1 16.5  0.3   -3     1.443 0.08  0.23  0.17  0.06  89.577  0.01  
i1 88.4  0.2   -3     1.034 0.05  0.15  0.59  0.4   145.736 0.01  
i1 84.6  0.4   -3     0.749 0.1   0.3   0.65  0.88  66.569  0     
i1 43.3  0.6   -3     1.432 0.15  0.45  0.46  0.95  33.552  0.01  
i1 30.9  0.4   -3     0.818 0.1   0.3   0.08  0.92  112.852 0.01  
i1 15.3  0.5   -3     0.962 0.13  0.38  0.68  0.53  100.02  0     
i1 148.4 0.5   -3     0.711 0.13  0.38  0.61  0.51  68.496  0.01  
i1 70.4  0.3   -3     0.665 0.08  0.23  0.52  0.13  109.83  0.01  
i1 57.4  0.5   -3     0.815 0.13  0.38  0.99  0.81  2.311   0.01  
i1 96    0.2   -3     1.181 0.05  0.15  0.55  0.45  83.067  0     
i1 66.4  0.3   -3     0.701 0.08  0.23  0.94  0.66  136.146 0.01  
i1 54.6  0.3   -3     0.596 0.08  0.23  0.64  0.23  142.234 0.01  
i1 36    0.5   -3     1.189 0.13  0.38  0.71  0.61  132.238 0.01  
i1 13.2  0.5   -3     1.003 0.13  0.38  0.53  0.27  48.821  0     
i1 149.3 0.2   -3     1.278 0.05  0.15  0.19  0.49  125.952 0     
i1 25.7  0.5   -3     1.186 0.13  0.38  0.05  0.76  119.034 0.01  
i1 176.8 0.4   -3     0.865 0.1   0.3   0.55  0.62  75.334  0     
i1 98.7  0.5   -3     0.753 0.13  0.38  0.58  0.46  52.522  0.01  
i1 77.5  0.3   -3     1.081 0.08  0.23  0.51  0.3   104.078 0     
i1 41.3  0.6   -3     0.935 0.15  0.45  0.86  0.43  153.543 0     
i1 54.3  0.4   -3     0.783 0.1   0.3   0.29  0.84  30.702  0     
i1 147.2 0.4   -3     0.821 0.1   0.3   0.61  0.3   34.398  0     
i1 151.9 0.5   -3     1.444 0.13  0.38  0.15  0.88  73.814  0     
i1 101   0.2   -3     1.433 0.05  0.15  0.01  0.87  110.418 0.01  
i1 84.2  0.5   -3     0.934 0.13  0.38  0.38  0.41  75.376  0     
i1 90    0.3   -3     0.734 0.08  0.23  0.91  0.15  37.914  0.01  
i1 161.9 0.3   -3     0.893 0.08  0.23  0.78  0.84  23.726  0.01  
i1 101.4 0.3   -3     1.001 0.08  0.23  0.34  0.23  160.266 0     
i1 123.5 0.4   -3     0.663 0.1   0.3   0.32  0.3   53.948  0     
i1 149.8 0.5   -3     0.782 0.13  0.38  0.94  0.43  12.837  0.01  
i1 90.6  0.3   -3     1.402 0.08  0.23  0.7   0.02  138.286 0.01  
i1 16.5  0.4   -3     0.621 0.1   0.3   0.13  0.56  96.556  0.01  
i1 127.4 0.3   -3     1.203 0.08  0.23  0.85  0.88  0.076   0.01  
i1 121.9 0.4   -3     1.158 0.1   0.3   0.94  0.6   32.167  0.01  
i1 21.2  0.3   -3     1.433 0.08  0.23  0.68  0.31  123.179 0     
i1 79.6  0.4   -3     0.633 0.1   0.3   0.02  0.49  75.304  0.01  
i1 164   0.2   -3     0.518 0.05  0.15  0.95  0.89  117.256 0     
i1 54.6  0.3   -3     0.528 0.08  0.23  0.44  0.07  9.778   0.01  
i1 61.9  0.5   -3     1.411 0.13  0.38  0.76  0.69  110.13  0.01  
i1 20.1  0.2   -3     1.49  0.05  0.15  0.48  0.31  126.563 0.01  
i1 39.3  0.3   -3     1.275 0.08  0.23  0.39  0.91  72.216  0.01  
i1 28.2  0.3   -3     1.421 0.08  0.23  0.58  0.79  34.424  0.01  
i1 169.1 0.4   -3     0.587 0.1   0.3   0.46  0.4   104.976 0.01  
i1 38.2  0.2   -3     1.452 0.05  0.15  0.78  0.93  25.36   0     
i1 86.2  0.5   -3     1.159 0.13  0.38  0.98  0.68  143.391 0.01  
i1 23.3  0.3   -3     0.683 0.08  0.23  0     0.36  128.434 0     
i1 79    0.3   -3     0.501 0.08  0.23  0.45  0.1   56.024  0     
i1 116.2 0.3   -3     1.16  0.08  0.23  0.84  0.42  119.451 0.01  
i1 61.1  0.2   -3     1.065 0.05  0.15  0.86  0.8   151.288 0.01  
i1 146.1 0.4   -3     1.474 0.1   0.3   0.49  0.54  69.211  0.01  
i1 85.9  0.4   -3     1.238 0.1   0.3   0.33  0.87  39.452  0.01  
i1 25.6  0.5   -3     0.551 0.13  0.38  0.02  0.9   111.118 0     
i1 149.8 0.4   -3     0.76  0.1   0.3   0.34  0.42  168.365 0.01  
i1 168.5 0.5   -3     0.964 0.13  0.38  0.66  0.87  64.158  0     
i1 173.5 0.3   -3     1.146 0.08  0.23  0.92  0.46  163.471 0     
i1 43.5  0.4   -3     1.096 0.1   0.3   0.42  0.53  1.333   0.01  
i1 171.6 0.4   -3     1.12  0.1   0.3   0.64  0.46  52.789  0.01  
i1 36.9  0.4   -3     0.559 0.1   0.3   0.9   0.01  28.008  0.01  
i1 123.8 0.5   -3     0.952 0.13  0.38  0.79  0.38  170.482 0     
i1 163.6 0.3   -3     1.314 0.08  0.23  0.42  0.05  49.837  0     
i1 135.2 0.4   -3     1.498 0.1   0.3   0.32  0.4   40.787  0     
i1 81.8  0.2   -3     1.168 0.05  0.15  0.37  0.14  175.052 0.01  
i1 80.5  0.6   -3     1.421 0.15  0.45  0.84  0.05  146.891 0     
i1 97.7  0.2   -3     1.132 0.05  0.15  0.36  0.43  21.28   0     
i1 154   0.2   -3     0.569 0.05  0.15  0.75  0.28  169.62  0     
i1 108.1 0.4   -3     0.748 0.1   0.3   0.79  0.38  29.413  0.01  
i1 143.7 0.4   -3     1.37  0.1   0.3   0.72  0.12  34.06   0     
i1 52    0.3   -3     1.016 0.08  0.23  0.65  0.35  161.694 0     
i1 168.8 0.2   -3     0.588 0.05  0.15  0.95  0.2   35.206  0.01  
i1 164.8 0.2   -3     1.002 0.05  0.15  0.03  0.69  30.18   0.01  
i1 116.6 0.2   -3     1.11  0.05  0.15  0.29  0.23  1.05    0.01  
i1 150.9 0.3   -3     1.084 0.08  0.23  0.51  0.82  161.549 0.01  
i1 163.2 0.2   -3     1.446 0.05  0.15  0.22  0.21  71.204  0.01  
i1 41.7  0.5   -3     0.874 0.13  0.38  0.75  0.33  135.753 0     
i1 28.4  0.5   -3     1.247 0.13  0.38  0.63  0.48  144.855 0.01  
i1 110.3 0.6   -3     1.364 0.15  0.45  0.43  0.5   91.436  0     
i1 116   0.3   -3     0.713 0.08  0.23  0.96  0.84  165.204 0.01  
i1 129.2 0.3   -3     0.809 0.08  0.23  0.61  0.78  152.784 0     
i1 1.2   0.3   -3     0.532 0.08  0.23  0.51  0.21  50.755  0.01  
i1 75.6  0.4   -3     1.226 0.1   0.3   0.11  0.36  132.377 0     
i1 173.2 0.4   -3     1.121 0.1   0.3   0.35  0.62  25.306  0.01  
i1 173.8 0.2   -3     1.401 0.05  0.15  0.79  0.44  77.659  0.01  
i1 8.7   0.5   -3     1.263 0.13  0.38  0.76  0.7   7.49    0     
i1 158.1 0.5   -3     1.057 0.13  0.38  0.6   0.92  26.761  0.01  
i1 161.1 0.6   -3     0.706 0.15  0.45  0.31  0.25  154.825 0.01  
i1 130.4 0.5   -3     1.427 0.13  0.38  0.02  0.13  131.409 0     
i1 152.3 0.5   -3     1.467 0.13  0.38  0.41  0.56  121.016 0.01  
i1 58    0.3   -3     0.859 0.08  0.23  0.33  0.48  171.182 0.01  
i1 54.7  0.4   -3     0.525 0.1   0.3   0.37  0.19  78.726  0     
i1 164.2 0.5   -3     1.07  0.13  0.38  0.67  0.9   71.067  0.01  
i1 30.1  0.6   -3     0.722 0.15  0.45  0.87  0.14  121.391 0.01  
i1 27    0.5   -3     1.346 0.13  0.38  0.14  0.75  159.456 0     
i1 112.5 0.3   -3     0.963 0.08  0.23  0.74  0.92  156.342 0.01  
i1 103.2 0.4   -3     1.331 0.1   0.3   0.44  0.64  111.902 0.01  
i1 144.3 0.4   -3     1.138 0.1   0.3   0.83  0.18  120.229 0.01  
i1 162.7 0.5   -3     0.949 0.13  0.38  0.21  0.81  46.338  0.01  
i1 72.7  0.4   -3     0.859 0.1   0.3   0.61  0.51  164.568 0     
i1 26.5  0.4   -3     1.195 0.1   0.3   0.39  0.74  161.022 0     
i1 78.9  0.2   -3     1.038 0.05  0.15  0.66  0.65  139.17  0     
i1 23.8  0.6   -3     1.244 0.15  0.45  0.22  0.02  120.516 0     
i1 51    0.2   -3     1.025 0.05  0.15  0.98  0.72  31.893  0     
i1 170.5 0.2   -3     0.523 0.05  0.15  0.39  0.99  139.917 0.01  
i1 172.1 0.4   -3     0.966 0.1   0.3   0.84  0.45  80.103  0.01  
i1 84.2  0.3   -3     1.299 0.08  0.23  0.68  0.05  2.657   0     
i1 6.3   0.3   -3     0.937 0.08  0.23  0.3   0.91  62.077  0     
i1 34.9  0.4   -3     0.732 0.1   0.3   0.1   0.73  40.728  0     
i1 162.6 0.3   -3     0.734 0.08  0.23  0     0.25  76.647  0.01  
i1 21.8  0.4   -3     1.087 0.1   0.3   0.74  0.23  81.905  0     
i1 50.8  0.6   -3     1.241 0.15  0.45  0.91  0.79  110.93  0     
i1 78.5  0.4   -3     0.585 0.1   0.3   0.69  0.87  68.648  0     
i1 51.8  0.5   -3     0.863 0.13  0.38  0.15  0.34  95.079  0.01  
i1 153.2 0.5   -3     1.145 0.13  0.38  0.12  0.97  1.685   0.01  
i1 99.9  0.3   -3     1.439 0.08  0.23  0.24  0.38  128.589 0     
i1 36.7  0.3   -3     1.482 0.08  0.23  0.09  0.28  176.685 0.01  
i1 44    0.5   -3     0.944 0.13  0.38  0.47  0.6   127.292 0.01  
i1 54.1  0.3   -3     1.216 0.08  0.23  0.97  0.6   164.431 0     
i1 131.1 0.3   -3     1.458 0.08  0.23  0.92  0.23  25.025  0.01  
i1 73.4  0.5   -3     1.213 0.13  0.38  0.65  0.06  123.732 0     
i1 12.3  0.6   -3     0.768 0.15  0.45  0.85  0.59  48.317  0     
i1 64.1  0.2   -3     0.965 0.05  0.15  0.76  0.06  70.978  0     
i1 23.5  0.6   -3     0.89  0.15  0.45  0.29  0.84  33.613  0.01  
i1 137   0.5   -3     1.429 0.13  0.38  0.87  0.71  128.7   0.01  
i1 123.1 0.2   -3     0.777 0.05  0.15  0.76  0.23  141.277 0.01  
i1 108.3 0.5   -3     0.998 0.13  0.38  0.56  0.03  123.615 0.01  
i1 140.2 0.5   -3     1.268 0.13  0.38  0.74  0.9   19.756  0.01  
i1 1.2   0.3   -3     1.162 0.08  0.23  0.71  0.84  164.462 0     
i1 140.5 0.5   -3     0.67  0.13  0.38  0.13  0.28  171.528 0.01  
i1 97.2  0.5   -3     0.922 0.13  0.38  0.55  0.3   10.123  0     
i1 77.1  0.5   -3     0.978 0.13  0.38  0.05  0.16  27.282  0.01  
i1 53.4  0.4   -3     1.007 0.1   0.3   0.95  0.23  56.817  0     
i1 89.1  0.4   -3     0.881 0.1   0.3   0.52  0.31  0.602   0     
i1 107.4 0.6   -3     1.275 0.15  0.45  0.93  0.4   99.049  0.01  
i1 160   0.3   -3     1.055 0.08  0.23  0.14  0.08  114.88  0     
i1 88.5  0.4   -3     0.903 0.1   0.3   0.25  0.88  51.478  0     
i1 87    0.5   -3     0.846 0.13  0.38  0.46  0.82  176.019 0.01  
i1 108.5 0.3   -3     0.748 0.08  0.23  0.35  0.86  85.719  0.01  
i1 170.2 0.3   -3     1.404 0.08  0.23  0.5   0.75  40.935  0.01  
i1 53.3  0.3   -3     1.075 0.08  0.23  0.37  0.05  74.364  0     
i1 96.5  0.4   -3     0.77  0.1   0.3   0.61  0.4   152.215 0.01  
i1 81.5  0.4   -3     1.24  0.1   0.3   0.05  0.6   55.993  0     
i1 13.6  0.4   -3     0.807 0.1   0.3   0.01  0.34  149.975 0.01  
i1 19.8  0.4   -3     0.993 0.1   0.3   0.66  0.03  74.66   0.01  
i1 59.2  0.3   -3     1.339 0.08  0.23  0.28  0.38  23.956  0     
i1 168.7 0.2   -3     0.915 0.05  0.15  0.18  0.5   88.453  0     
i1 143.4 0.5   -3     0.564 0.13  0.38  0.35  0.09  21.444  0.01  
i1 56.8  0.4   -3     0.647 0.1   0.3   0.76  0.06  109.428 0     
i1 54.6  0.4   -3     0.93  0.1   0.3   0.4   0.58  140.024 0.01  
i1 4.9   0.3   -3     1.001 0.08  0.23  0.2   0.48  66.377  0.01  
i1 79.1  0.4   -3     1.236 0.1   0.3   0.81  0.15  4.151   0.01  
i1 142.5 0.5   -3     1.176 0.13  0.38  0.57  0.37  44.04   0     
i1 65.4  0.3   -3     1.071 0.08  0.23  0.07  0.31  80.761  0     
i1 53.8  0.4   -3     1.484 0.1   0.3   0.27  0.16  9.828   0.01  
i1 106.1 0.3   -3     0.501 0.08  0.23  0.41  0.29  122.846 0     
i1 98.9  0.3   -3     1.088 0.08  0.23  0.23  0.52  0.548   0.01  
i1 31.5  0.2   -3     0.854 0.05  0.15  0.91  0.3   164.682 0.01  
i1 13.1  0.4   -3     0.644 0.1   0.3   0.42  0.1   100.675 0     
i1 140.8 0.5   -3     0.526 0.13  0.38  0.68  0.54  7.064   0.01  
i1 173.1 0.3   -3     0.874 0.08  0.23  0.77  0.62  126.347 0.01  
i1 112.5 0.3   -3     0.52  0.08  0.23  0.79  0.86  70.422  0     
i1 40.9  0.6   -3     0.519 0.15  0.45  0.62  0.42  7.828   0.01  
i1 17.4  0.3   -3     0.625 0.08  0.23  0.32  0.93  128.513 0.01  
i1 174.3 0.4   -3     0.921 0.1   0.3   0.81  0.94  150.722 0.01  
i1 147   0.3   -3     1.216 0.08  0.23  0.27  0.58  80.935  0.01  
i1 34.1  0.5   -3     0.655 0.13  0.38  0.57  0.35  174.4   0.01  
i1 57.4  0.5   -3     0.836 0.13  0.38  0.86  0.7   10.685  0     
i1 25    0.4   -3     1.025 0.1   0.3   0.99  0.98  176.614 0     
i1 143   0.3   -3     0.965 0.08  0.23  0.92  0.58  109.589 0     
i1 129.8 0.6   -3     1.448 0.15  0.45  0.34  0.79  133.622 0.01  
i1 93.4  0.2   -3     0.577 0.05  0.15  0.63  0.18  115.934 0.01  
i1 36.1  0.2   -3     0.501 0.05  0.15  0.38  0.62  134.251 0     
i1 84.6  0.5   -3     1.134 0.13  0.38  0.6   0.12  56.235  0.01  
i1 42.4  0.2   -3     1.458 0.05  0.15  0.04  0.45  31.939  0.01  
i1 61.5  0.4   -3     1.254 0.1   0.3   0.85  0.62  96.538  0     
i1 88.4  0.4   -3     1.336 0.1   0.3   0.25  0.32  146.74  0     
i1 96.9  0.5   -3     1.485 0.13  0.38  0.65  0.85  101.992 0     
i1 64.6  0.4   -3     0.96  0.1   0.3   0.92  0.93  176.908 0     
i1 2.8   0.3   -3     0.801 0.08  0.23  0.91  0.2   47.92   0     
i1 153.8 0.2   -3     1.492 0.05  0.15  0.31  0.07  21.162  0     
i1 2.4   0.3   -3     1.486 0.08  0.23  0.76  0.98  123.567 0.01  
i1 143.8 0.6   -3     0.57  0.15  0.45  0.28  0.29  76.88   0     
i1 170.8 0.3   -3     0.886 0.08  0.23  0.09  0.27  120.311 0     
i1 6.2   0.5   -3     1.279 0.13  0.38  0.66  0.13  35.334  0     
i1 164.3 0.5   -3     1.067 0.13  0.38  0.22  0.03  47.583  0     
i1 158.7 0.3   -3     1.276 0.08  0.23  0.18  1     27.498  0.01  
i1 176.1 0.5   -3     1.139 0.13  0.38  0.85  0.15  145.294 0.01  
i1 117.2 0.4   -3     1.463 0.1   0.3   0.45  0.46  81.799  0.01  
i1 97.2  0.5   -3     1.46  0.13  0.38  0.27  0.65  88.292  0     
i1 69.9  0.3   -3     1.419 0.08  0.23  1     0.6   166.918 0     
i1 7.3   0.4   -3     1.136 0.1   0.3   0.07  0.95  129.159 0     
i1 46.3  0.3   -3     1.281 0.08  0.23  0.65  0.82  137.069 0.01  
i1 23.2  0.6   -3     1.5   0.15  0.45  0.08  0.63  6.629   0.01  
i1 153.2 0.6   -3     0.949 0.15  0.45  0.13  0.77  108.376 0     
i1 157   0.2   -3     0.92  0.05  0.15  0.83  0.4   33.834  0.01  
i1 89.3  0.4   -3     1.258 0.1   0.3   0.82  0.02  126.023 0.01  
i1 90    0.4   -3     1.485 0.1   0.3   0.16  0.41  36.085  0     
i1 176   0.5   -3     0.714 0.13  0.38  0.26  0.46  115.185 0     
i1 102.1 0.4   -3     1.362 0.1   0.3   0.94  0.2   24.53   0.01  
i1 20.4  0.6   -3     0.53  0.15  0.45  0.69  0.66  47.965  0     
i1 156.5 0.3   -3     0.991 0.08  0.23  0.42  0.35  160.631 0     
i1 12.1  0.6   -3     0.873 0.15  0.45  0.41  0.77  92.548  0     
i1 123.3 0.5   -3     1.069 0.13  0.38  0.42  0.49  163.408 0     
i1 2.9   0.2   -3     0.857 0.05  0.15  0.59  0.81  88.132  0     
i1 43.7  0.3   -3     0.944 0.08  0.23  0.21  0.41  176.887 0.01  
i1 3.3   0.5   -3     0.588 0.13  0.38  0.18  0.82  57.913  0     
i1 160.6 0.3   -3     0.72  0.08  0.23  0.51  0.84  139.912 0     
i1 30.2  0.6   -3     1.025 0.15  0.45  0.32  0.21  61.382  0     
i1 86.2  0.5   -3     1.365 0.13  0.38  0.77  0.81  126.991 0     
i1 143.5 0.3   -3     0.958 0.08  0.23  0.15  0.91  87.893  0.01  
i1 58.7  0.3   -3     0.959 0.08  0.23  0.5   0.27  83.203  0     
i1 150.2 0.5   -3     1.305 0.13  0.38  0.07  0.43  145.888 0.01  
i1 150.8 0.4   -3     1.209 0.1   0.3   0.14  0.04  22.55   0.01  
i1 30    0.3   -3     1.154 0.08  0.23  0.99  0.58  150.293 0.01  
i1 159.3 0.4   -3     1.221 0.1   0.3   0.39  0.59  70.647  0.01  
i1 80.9  0.6   -3     0.841 0.15  0.45  0.43  0.9   106.522 0     
i1 27.1  0.3   -3     1.396 0.08  0.23  0.79  0.22  59.995  0.01  
i1 71.2  0.3   -3     1.271 0.08  0.23  0.92  0.97  153.332 0.01  
i1 38    0.3   -3     0.734 0.08  0.23  0.05  0.31  108.287 0.01  
i1 54.9  0.3   -3     1.179 0.08  0.23  0.17  0.84  63.301  0.01  
i1 46.2  0.4   -3     0.582 0.1   0.3   0.79  0.49  2.603   0.01  
i1 123.7 0.2   -3     1.499 0.05  0.15  0.21  0.86  113.624 0     
i1 92.4  0.2   -3     0.873 0.05  0.15  0.39  0.9   16.932  0.01  
i1 48.1  0.3   -3     0.598 0.08  0.23  0.78  0.81  110.078 0     
i1 30.5  0.2   -3     1.419 0.05  0.15  0.87  0.57  164.477 0     
i1 52    0.4   -3     0.582 0.1   0.3   0.01  0.65  161.7   0.01  
i1 4.6   0.6   -3     0.666 0.15  0.45  0.82  0.92  159.867 0     
i1 134.4 0.4   -3     1.331 0.1   0.3   0.32  0.34  105.368 0.01  
i1 112.5 0.5   -3     0.678 0.13  0.38  0.05  0.19  85.925  0.01  
i1 111.4 0.6   -3     1.422 0.15  0.45  0.33  0.3   133.556 0     
i1 66.9  0.4   -3     0.518 0.1   0.3   0.79  0.96  59.071  0.01  
i1 135.8 0.6   -3     1.03  0.15  0.45  0.26  0.6   38.096  0.01  
i1 136.8 0.5   -3     0.947 0.13  0.38  0.5   0.28  6.583   0     
i1 102.9 0.3   -3     0.603 0.08  0.23  0.48  0.99  166.726 0.01  
i1 112.6 0.2   -3     1.5   0.05  0.15  0.99  0.91  71.766  0.01  
i1 58.2  0.6   -3     1.039 0.15  0.45  0.4   0.29  108.701 0     
i1 106.9 0.4   -3     1.162 0.1   0.3   0.74  0.18  35.53   0.01  
i1 42.1  0.2   -3     1.198 0.05  0.15  0.33  0.41  39.729  0.01  
i1 15.5  0.3   -3     0.924 0.08  0.23  0.62  0.31  44.53   0.01  
i1 57    0.2   -3     1.033 0.05  0.15  0.63  0.81  149.743 0     
i1 33.9  0.5   -3     0.906 0.13  0.38  0.73  0.86  18.5    0     
i1 138.2 0.4   -3     1.416 0.1   0.3   0.62  0.44  2.376   0     
i1 90.3  0.4   -3     1.268 0.1   0.3   0.01  0.84  36.689  0     
i1 160.9 0.5   -3     0.817 0.13  0.38  0.42  0.84  58.278  0     
i1 28.2  0.5   -3     1.381 0.13  0.38  0.16  0.44  17.517  0     
i1 160.4 0.5   -3     0.932 0.13  0.38  0.86  0.9   20.21   0     
i1 114.1 0.6   -3     0.618 0.15  0.45  0.52  0.53  149.423 0.01  
i1 18.1  0.4   -3     1.201 0.1   0.3   0.04  0.67  171.624 0.01  
i1 48.3  0.6   -3     0.708 0.15  0.45  0.06  0.93  13.079  0.01  
i1 36    0.4   -3     1.05  0.1   0.3   0.42  0.14  114.71  0     
i1 166.3 0.3   -3     0.502 0.08  0.23  0.01  0.27  39.401  0.01  
i1 175.5 0.6   -3     0.632 0.15  0.45  0.35  0.46  69.464  0.01  
i1 17.8  0.6   -3     1.231 0.15  0.45  0.31  0.64  83.402  0.01  
i1 145.4 0.3   -3     1.069 0.08  0.23  0.41  0.79  88.408  0.01  
i1 2     0.3   -3     0.677 0.08  0.23  0.63  0.12  22.397  0     
i1 83.8  0.2   -3     0.634 0.05  0.15  0.78  0.03  40.013  0     
i1 82    0.5   -3     0.523 0.13  0.38  0.46  0.27  100.707 0     
i1 43.5  0.4   -3     0.532 0.1   0.3   0.08  0.07  121.569 0.01  
i1 69    0.2   -3     0.754 0.05  0.15  0.18  0.8   51.3    0     
i1 24.4  0.3   -3     0.681 0.08  0.23  0.99  0.98  118.51  0     
i1 72.2  0.2   -3     1.061 0.05  0.15  0.48  0.14  9.978   0     
i1 44.2  0.6   -3     0.592 0.15  0.45  0.61  0.87  169.754 0.01  
i1 18.5  0.5   -3     1.322 0.13  0.38  0.43  0.81  102.892 0     
i1 76.1  0.3   -3     1.324 0.08  0.23  0.35  0.52  152.181 0.01  
i1 79.8  0.3   -3     1.318 0.08  0.23  0.35  0.75  65.432  0.01  
i1 142.5 0.2   -3     0.762 0.05  0.15  0.38  0.1   99.033  0.01  
i1 117.5 0.3   -3     0.835 0.08  0.23  0.68  0.04  173.16  0     
i1 57.9  0.4   -3     1.356 0.1   0.3   0.54  0.68  15.802  0     
i1 7.2   0.3   -3     1.084 0.08  0.23  0.49  0.35  134.722 0.01  
i1 68.9  0.5   -3     1.05  0.13  0.38  0.2   0.55  167.901 0.01  
i1 20.9  0.4   -3     1.405 0.1   0.3   0.01  0.25  104.403 0     
i1 56.3  0.5   -3     1.347 0.13  0.38  0.79  0.5   62.756  0     
i1 95.7  0.5   -3     0.974 0.13  0.38  0.08  0.23  174.93  0     
i1 16.1  0.4   -3     1.054 0.1   0.3   0.02  0.92  5.65    0     
i1 77.9  0.3   -3     1.28  0.08  0.23  0.41  0.86  125.012 0.01  
i1 65.8  0.3   -3     0.994 0.08  0.23  0.24  0.7   37.983  0     
i1 90.7  0.2   -3     1.088 0.05  0.15  0.45  0.34  35.776  0.01  
i1 95.7  0.4   -3     0.851 0.1   0.3   0.22  0.77  81.395  0.01  
i1 168.6 0.5   -3     1.061 0.13  0.38  0.74  0.99  132.238 0.01  
i1 164.6 0.4   -3     0.993 0.1   0.3   0.07  0.58  6.476   0     
i1 48.8  0.3   -3     0.508 0.08  0.23  0.31  0.75  120.644 0.01  

e 
</CsScore>
</CsoundSynthesizer>