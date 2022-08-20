# XuLin-F

This is the upgraded version of XuLin-F which is implemented on the more advanced and powerful platform Xilinx Alveo U280 FPGA.

## Introduction

XuLin is a data-centric accelerator for high-performance hypergraph processing. 
We implement XuLin on a Xilinx Alveo U280 FPGA accelerator card. 
The FPGA version is referred to as XuLin-F.
To our best knowledge and experiments, this is the fastest hypergraph graph processing accelerator.

## Prerequisites

### Hardware

This project works on [Xilinx Alveo U280 Data Center Accelerator Card](https://www.xilinx.com/products/boards-and-kits/alveo/u280.html).

### Operating System

Ubuntu 18.04 LTS

### Software

[Vitis Core Development Kit 2019.2](https://www.xilinx.com/products/design-tools/vitis/vitis-platform.html)

[Alveo U280 Package File on Vitis 2019.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/alveo/u280.html)

and

[Vitis Core Development Kit 2021.2](https://www.xilinx.com/products/design-tools/vitis/vitis-platform.html)

[Alveo U280 Package File on Vitis 2021.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/alveo/u280.html)

## Run the code

1. Install the software development environment according to [Xilinx documentation](https://www.xilinx.com/support/documentation/boards_and_kits/accelerator-cards/1_9/ug1301-getting-started-guide-alveo-accelerator-cards.pdf). After installation, you can use commands

```
sudo /opt/xilinx/xrt/bin/xbmgmt flash --scan
/opt/xilinx/xrt/bin/xbutil validate
```

to make sure that the runtime environment and the alveo card is ready.

2. Add the xrt and deployment environment to your PATH. Typically you can run

``` sh
source /opt/xilinx/xrt/setup.sh
```

3. You can clone and run the pre-build binary file as follows. The pre-build binary file is compiled by Vitis 2019.2.

``` sh
$ git clone https://github.com/CGCL-codes/XuLin-F.git
$ cd XuLin-F/bin/
$ ./XuLin-F-PR ./XuLin-F-PR.xclbin <hypergraph dataset>
```

## Datasets

The datasets come from the following sources:

* [Stanford Large Network Dataset Collection (SNAP)](http://snap.stanford.edu/data/index.html)
* [Koblenz Network Collection (KONECT)](http://konect.cc/networks/)

Files can be downloaded directly from [SNAP](http://snap.stanford.edu/data/index.html) and [KONECT](http://konect.cc/networks/).

Here are the links to the corresponding files in SNAP or KONECT format:

* trec-wt(TW): [KONECT](http://konect.cc/networks/gottron-trec/)
* com-Orkut(OK): [SNAP](http://snap.stanford.edu/data/com-Orkut.html)
* LiveJournal(LJ): [KONECT](http://konect.cc/networks/livejournal-groupmemberships/)
* delicious-ut(DU): [KONECT](http://konect.cc/networks/delicious-ut/)
* Orkut-group(OG): [KONECT](http://konect.cc/networks/orkut-groupmemberships/)

## Evaluation
Table1: Hypergraph Datasets
| Datasets | Vertex | Hyperedge | Bipedge | Size |
| :----: | :----: | :----: | :----: | :----: |
| trec-wt(TW) | 0.55M | 1.17M | 83.63M | 1.1GB |
| com-Orkut(OK) | 2.32M | 15.30M | 107.08M | 1.8GB |
| LiveJournal(LJ) | 3.20M | 7.49M | 112.31M | 1.5GB |
| delicious-ut(DU) | 0.83M | 4.51M | 301.19M | 3.3GB |
| Orkut-group(OG) | 2.78M | 8.73M | 327.03M | 4.6GB |


Table2: Performance comparison on PageRank(One Iteration) between [Hygra](https://github.com/jshun/ppopp20-ae) and XuLin-F (16-threads/16-PEs configuration)
| Datasets | Hygra on CPU(s) | XuLin-F on U280(s) | SpeedUp |
| :----: | :----: | :----: | :----: |
| trec-wt(TW) | 0.053 | 0.0235 | 2.26 |
| com-Orkut(OK) | 0.159 | 0.0247 | 6.44 |
| LiveJournal(LJ) | 0.595 | 0.0296 | 20.10 |
| delicious-ut(DU) | 1.08 | 0.0951 | 11.36 |
| Orkut-group(OG) | 0.505 | 0.0759 | 6.65 |

## Publications
If you want to know more detailed information, please refer to this paper:

**\[MICRO'22\]** Qinggang Wang, Long Zheng, Ao Hu, Yu Huang, Pengcheng Yao, Chuangyi Gui, Xiaofei Liao, Hai Jin, Jingling Xue, "A Data-Centric Accelerator for High-Performance Hypergraph Processing", in MICRO-55: 55th Annual IEEE/ACM International Symposium on Microarchitecture (MICRO'22), 2022.

## Authors and Copyright
XuLin-F is developed in National Engineering Research Center for Big Data Technology and System, Cluster and Grid Computing Lab, Services Computing Technology and System Lab, School of Computer Science and Technology, Huazhong University of Science and Technology, Wuhan, China by Qinggang Wang (qgwang@hust.edu.cn), Ao Hu (ahu@hust.edu.cn), Long Zheng (longzh@hust.edu.cn).

Copyright (C) 2022, [STCS & CGCL](http://grid.hust.edu.cn/) and [Huazhong University of Science and Technology](http://www.hust.edu.cn).

