# PsiFPOP
### Arnaud Liehrmann

> [Introduction](#intro)

> [Installation Notes](#instal)

<a id="intro"></a>

## Introduction

Psi-FPOP is an exact segmentation algorithm that extends functionnal pruning 
ideas from FPOP to a least squares criterion with a multiscale penalty.

* Details regarding the multiscale penalty can be found [here](https://arxiv.org/abs/2010.11470).
* Details regarding the FPOP algorithm can be found [here](https://doi.org/10.1007/s11222-016-9636-3).
* Details regarding the Psi-FPOP algorithm and some simulations can be found [here](doc/FpopPSD_doc.pdf) (english version available soon).

<a id="instal"></a>

## Installation Notes 

#### Step 1: Install the devtools package

```
install.packages("devtools")
```

#### Step 2: Install the `PsiFPOP` package from GitHub

```
library(devtools)
install_github("aLiehrmann/PsiFPOP")
```

#### Step 3: Load the package

```
library(PsiFPOP)
```