# Multes for Alveo with Vitis 100Gbps TCP Networking

This project ports an experimental multi-tenant key-value store, Multes, to the Alveo FPGAs with 100Gbps networking. This is achieved by expanding the [original 100Gbps TCP/IP stack repository](https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP) with a custom kernel. 

For the README of the entire project, including the TCP stack, etc., please see [the original README](https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP/blob/master/README.md).

## Background on Multes

[Multes](https://zistvan.github.io/doc/multes-fpl18.pdf) is the multi-tenant incarnation of [Caribou](https://zistvan.github.io/doc/vldb17-caribou.pdf). It implements **smart distributed storage** built with FPGAs that can efficiently be shared by a large number of tenants. Each node stores key-value pairs in main memory and exposes a simple interface over TCP/IP that software clients can connect to.

It is **smart** because it is possible to offload filtering into the storage nodes. The nodes can also perform scans on the data. In this design filtering is a combination of regular expression matching and predicate evaluation. Different types of processing can, however, easily be added to the processing pipeline.

It is **distributed** because it runs on multiple FPGAs that replicate the data using a [leader-based consensus protocol](https://zistvan.github.io/doc/nsdi16-istvan-rev1.pdf) that is both low latency and high throughput.

It is **storage** because it stores key-value pairs in a Cuckoo hash table and implements slab-based memory allocation. The current design uses DRAM (HBM, in the case of the Alveo boards) to store data but it should work well with emerging non-volatile memory technologies.

[1]Providing Multi-tenant Services with FPGAs: Case Study on a Key-Value Store. Zs. István, G. Alonso, A. Singla. 28th International Conference on Field Programmable Logic and Applications (FPL'18), Dublin, Ireland . https://zistvan.github.io/doc/multes-fpl18.pdf

[2] Caribou: Intelligent Distributed Storage. Zs. Istvan, D. Sidler, G. Alonso. In VLDB 2017, Munich, Germany. https://zistvan.github.io/doc/vldb17-caribou.pdf

[3] Consensus in a Box: Inexpensive Coordination in Hardware. Zs. Istvan, D. Sidler, G. Alonso, M. Vukolic. 13th USENIX Symposium on Networked Systems Design and Implementation (NSDI '16), March 2016. https://zistvan.github.io/doc/nsdi16-istvan-rev1.pdf

## Repository and Folder Structure

The files relevant to the project are organized as follows:
 
  - ```host/multes_krnl``` -- the host file of the project. It takes one important argument: the IP address to use for the FPGA.
  - ```kernel/user_krnl/multes_krnl/``` -- this is where the hardware design lives (as well as the testing client). In the src/ folder you'll find all the HDL sources and IP cores needed by the design. In the client/ folder you'll find the software client to Multes, written in Go.

## Integration with Alveo U250

Multes has two important types of I/O interfaces: to the network and to the memory/storage. These are connected to other modules in the ```config_sp_multes_krnl.txt```. 

The TCP/IP interface of Multes is connected to the TCP/IP stack (kernel).

Four other interfaces correspond to the hash table, value storage area and bitmap and pointer meta-data. These, in other deployments of Multes have been organized by using an AXI interconnect merging the bitmaps, pointers and values onto one interface and the hash table to an other. In this example, they have been separated to one HBM bank each -- hence the four streams.

## Building

To build the hardware, please follow the steps outlined in the parent repository: [https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP/blob/master/README.md](https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP/blob/master/README.md)
When you get to this command ```make all TARGET=hw DEVICE=/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm USER_KRNL=XXXXX USER_KRNL_MODE=rtl NETH=4``` replace XXXX with ```multes_krnl```

To build the software client, navigate to kernel/user_krnl/multes_krnl/client and set the GOPATH to that folder. After that you can build with ```go build multes```. We use golang version 1.10 but other versions should work as well.

## Extending Multes with Custom Processing

There is an option to extend Multes with arbitrary processing on values read out from the key-value store, by implementing the logic in the file ```ipcore_user_processing.v```. This file has now a dummy logic and we'll update it with an example processing module soon. In the meantime, please let us know if you'd be interested in using it.

## Testing Your Deployment

After you've compiled the project and the FPGA has been programmed, you should first test if you can ping the device at the expected IP address. If not, something has gone wrong. The FPGAs will have by default 8 different tenants meaning they will listen on ports 288[0..7].

After building the software client, you should be able to interact with the FPGA running, for instance: 
```./nukv_client -host "x.x.x.x:2880" -flush -populate -vallen 1024 -datasize 1024```
This will connect to the FPGA, flush its memory contents and then populate it with 1024 keys with 1KB values.

In case you have more than one FPGA and would like to use them in a replicated setup, you will have to configure them with consecutive IP addresses and use the ```initialize_replication.sh``` script to set them up (note that you will have to tailor this script to your setup).

## Questions?

This is an experimental system and you might run into unexpected issues. Please reach out to [Zsolt](mailto:zsis@itu.dk) with any questions!