# Setting Up NVIDIA on Kali Linux

This guide provides a step-by-step walkthrough on setting up NVIDIA on Kali Linux. By the end of this guide, you should have a properly configured NVIDIA GPU on your Kali Linux system.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Updating System Repositories](#updating-system-repositories)
3. [Verifying Packages](#verifying-packages)
4. [Detecting NVIDIA Card](#detecting-nvidia-card)
5. [Verifying Installation](#verifying-installation)
6. [Additional Testing and Verification](#additional-testing-and-verification)

---

## Prerequisites

Ensure that the necessary repositories are added to your sources list:

```bash
grep "contrib non-free" /etc/apt/sources.list
```

The output should resemble:

    
    deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware


## Updating System Repositories

To ensure you have the latest packages and dependencies, update your system:


    sudo apt update    
    sudo apt -y full-upgrade -y
    sudo reboot
    

## Verifying Packages

After rebooting, verify that the packages are correctly set up:
    
    nano http://kali.org/kali kali-rolling main contrib non-free free-firmware


Check your VGA compatible controller:

    
    lspci | grep -i vga


The output should be similar to:
    
    42:00.0 VGA compatible controller: NVIDIA Corporation GA104 [GeForce RTX 3070] (rev a1)


Take note of the unique PCI bus address from the `lspci` command. You'll need this for further verification:


    lspci -s 42:00.0 -v


## Detecting NVIDIA Card

For the system to recognize the NVIDIA card, you may need to install additional software:

```bash
sudo apt install -y nvidia-detect
```

Run the `nvidia-detect` command:

```bash
nvidia-detect
```

The output should provide details about the detected NVIDIA GPUs.

## Verifying Installation

To ensure that the NVIDIA drivers are correctly installed and functioning:

```bash
nvidia-smi
```

This command provides a detailed overview of the NVIDIA GPU's status, including temperature, memory usage, and more.

## Additional Testing and Verification

For further testing and to verify the GPU's capabilities, you can use tools like `hashcat`:

```bash
hashcat -I
```

This command provides details about the CUDA and OpenCL capabilities of the GPU.

Additionally, you can install and use `clinfo` to get more details about OpenCL platforms and devices:

```bash
sudo apt install -y clinfo    
clinfo
```

---

With these steps, you should have a fully functional NVIDIA setup on your Kali Linux system. Ensure to regularly update your drivers and tools to get the best performance and security updates.











Prereqs.
  
     grep "contrib non-free" /etc/apt/sources.list
    deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware
    kali@kali:~$
  
    sudo apt update    
  
    sudo apt -y full-upgrade -y
  
    sudo reboot

Verifying the packages are correct
  
    nano http://kali.org/kali kali-rolling main contrib non-free free-firmware
   

    ┌──(root㉿testcomputer)-[~]
    └─# lspci | grep -i vga
    42:00.0 VGA compatible controller: NVIDIA Corporation GA104 [GeForce RTX 3070] (rev a1)

Take note, the lspci command contains a unique PCI bus address. Be sure to include the correct address lspci -s XX.XX.X -v

     ┌──(root㉿testcomputer)-[~]
    └─# lspci -s 42:00.0 -v
    42:00.0 VGA compatible controller: NVIDIA Corporation GA104 [GeForce RTX 3070] (rev a1) (prog-if 00 [VGA controller])
    	Subsystem: Micro-Star International Co., Ltd. [MSI] GA104 [GeForce RTX 3070]
    	Flags: bus master, fast devsel, latency 0, IRQ 284, NUMA node 2, IOMMU group 53
    	Memory at 86000000 (32-bit, non-prefetchable) [size=16M]
    	Memory at 63a00000000 (64-bit, prefetchable) [size=8G]
    	Memory at 63c00000000 (64-bit, prefetchable) [size=32M]
    	I/O ports at 8000 [size=128]
    	Expansion ROM at 87000000 [virtual] [disabled] [size=512K]
    	Capabilities: [60] Power Management version 3
    	Capabilities: [68] MSI: Enable+ Count=1/1 Maskable- 64bit+
    	Capabilities: [78] Express Legacy Endpoint, MSI 00
    	Capabilities: [b4] Vendor Specific Information: Len=14 <?>
    	Capabilities: [100] Virtual Channel
    	Capabilities: [258] L1 PM Substates
    	Capabilities: [128] Power Budgeting <?>
    	Capabilities: [420] Advanced Error Reporting
    	Capabilities: [600] Vendor Specific Information: ID=0001 Rev=1 Len=024 <?>
    	Capabilities: [900] Secondary PCI Express
    	Capabilities: [bb0] Physical Resizable BAR
    	Capabilities: [c1c] Physical Layer 16.0 GT/s <?>
    	Capabilities: [d00] Lane Margining at the Receiver <?>
    	Capabilities: [e00] Data Link Feature <?>
    	Kernel driver in use: nvidia
    	Kernel modules: nvidia
  
    ┌──(root㉿testcomputer)-[~]
    └─# 

You may need to install additional software. To detect the NVIDIA card, we need to install nvidia-detect:
  
     kali@kali:~$ sudo apt install -y nvidia-detect


    kali@kali:~$ nvidia-detect
    Detected NVIDIA GPUs:
    01:00.0 3D controller [0302]: NVIDIA Corporation GM108M [GeForce 940MX] [10de:134d] (rev a2)
    
    Checking card:  NVIDIA Corporation GM108M [GeForce 940MX] (rev a2)
    Uh oh. Failed to identify your Debian suite.
    
    kali@kali:~$        

Verify successfully install

    ┌──(root㉿testcomputer)-[~]
    └─# nvidia-smi
    Thu Sep 14 19:15:27 2023       
    +-----------------------------------------------------------------------------+
    | NVIDIA-SMI 525.125.06   Driver Version: 525.125.06   CUDA Version: 12.0     |
    |-------------------------------+----------------------+----------------------+
    | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
    | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
    |                               |                      |               MIG M. |
    |===============================+======================+======================|
    |   0  NVIDIA GeForce ...  Off  | 00000000:42:00.0  On |                  N/A |
    |  0%   53C    P8    21W / 220W |   1268MiB /  8192MiB |     21%      Default |
    |                               |                      |                  N/A |
    +-------------------------------+----------------------+----------------------+
                                                                                   
    +-----------------------------------------------------------------------------+
    | Processes:                                                                  |
    |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
    |        ID   ID                                                   Usage      |
    |=============================================================================|
    |    0   N/A  N/A      1772      G   /usr/lib/xorg/Xorg                870MiB |
    |    0   N/A  N/A      2408      G   xfwm4                               4MiB |
    |    0   N/A  N/A     44930      G   ...b/firefox-esr/firefox-esr      314MiB |
    |    0   N/A  N/A    176362      G   ...RendererForSitePerProcess       47MiB |
    +-----------------------------------------------------------------------------+
                                                                                              
    ┌──(root㉿testcomputer)-[~]
    └─# 


          
    ┌──(root㉿testcomputer)-[~]
    └─# lspci | grep -i vga
    42:00.0 VGA compatible controller: NVIDIA Corporation GA104 [GeForce RTX 3070] (rev a1)
                                                                                              
    ┌──(root㉿testcomputer)-[~]
    └─# 

Additional testing/verifying

    ┌──(root㉿testcomputer)-[~]
    └─# hashcat -I
    hashcat (v6.2.6) starting in backend information mode
    
    CUDA Info:
    ==========
    
    CUDA.Version.: 12.0
    
    Backend Device ID #1 (Alias: #2)
      Name...........: NVIDIA GeForce RTX 3070
      Processor(s)...: 46
      Clock..........: 1755
      Memory.Total...: 7957 MB
      Memory.Free....: 6540 MB
      Local.Memory...: 99 KB
      PCI.Addr.BDFe..: 0000:42:00.0
    
    OpenCL Info:
    ============
    
    OpenCL Platform ID #1
      Vendor..: NVIDIA Corporation
      Name....: NVIDIA CUDA
      Version.: OpenCL 3.0 CUDA 12.0.151
    
      Backend Device ID #2 (Alias: #1)
        Type...........: GPU
        Vendor.ID......: 32
        Vendor.........: NVIDIA Corporation
        Name...........: NVIDIA GeForce RTX 3070
        Version........: OpenCL 3.0 CUDA
        Processor(s)...: 46
        Clock..........: 1755
        Memory.Total...: 7957 MB (limited to 1989 MB allocatable in one block)
        Memory.Free....: 6464 MB
        Local.Memory...: 48 KB
        OpenCL.Version.: OpenCL C 1.2 
        Driver.Version.: 525.125.06
        PCI.Addr.BDF...: 42:00.0
    
    OpenCL Platform ID #2
      Vendor..: The pocl project
      Name....: Portable Computing Language
      Version.: OpenCL 3.0 PoCL 4.0+debian  Linux, None+Asserts, RELOC, SPIR, LLVM 15.0.7, SLEEF, DISTRO, POCL_DEBUG
    
      Backend Device ID #3
        Type...........: CPU
        Vendor.ID......: 1
        Vendor.........: AuthenticAMD
        Name...........: cpu-haswell-AMD Ryzen Threadripper 2970WX 24-Core Processor
        Version........: OpenCL 3.0 PoCL HSTR: cpu-x86_64-pc-linux-gnu-haswell
        Processor(s)...: 48
        Clock..........: 3000
        Memory.Total...: 126711 MB (limited to 16384 MB allocatable in one block)
        Memory.Free....: 63323 MB
        Local.Memory...: 512 KB
        OpenCL.Version.: OpenCL C 1.2 PoCL
        Driver.Version.: 4.0+debian
    
                                                                                              
    ┌──(root㉿testcomputer)-[~]
    └─# 
  
    
      kali@kali:~$ sudo apt install -y clinfo    



    kali@kali:~$ clinfo
    Number of platforms                               1
      Platform Name                                   NVIDIA CUDA
      Platform Vendor                                 NVIDIA Corporation
      Platform Version                                OpenCL 1.2 CUDA 10.1.120
      Platform Profile                                FULL_PROFILE
      Platform Extensions                             cl_khr_global_int32_base_atomics cl_khr_global_int32_extended_atomics cl_khr_local_int32_base_atomics cl_khr_local_int32_extended_atomics cl_khr_fp64 cl_khr_byte_addressable_store cl_khr_icd cl_khr_gl_sharing cl_nv_compiler_options cl_nv_device_attribute_query cl_nv_pragma_unroll cl_nv_copy_opts cl_nv_create_buffer
      Platform Extensions function suffix             NV
    
      Platform Name                                   NVIDIA CUDA
    [...]
    kali@kali:~$

