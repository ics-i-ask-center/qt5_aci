# qt5_aci
Singularity recipe for Qt5 on Centos 7 and Ubuntu 16.04 For ICS  

**NOTE: DO NOT rebuild "Singularity.dsi_mrtrix3" image.**  
(Last successful build was Mar 12 2019)

Singularity recipe for DSI Studio and MRtrix3 is updated on **dsistudio_mrtrix3** folder  

If you want to install DSI Studio and MRtrix3 on Basic Qt5 Container,  
downlaod "dsistudio_mrtrix3_install.sh" to preferred location 
and follow commands inside Singularity environment:  
```
> chmod +x dsistudio_mrtrix3_install.sh  
> ./dsistudio_mrtrix3_install.sh
```

2019/2/21  
Unable to use **GCC 8.2.1** due to build failure => Going back to **GCC 7.3.1**  
(Failed to resolve the issue at this moment)

~~2019/5/13  
Updated dsistudio_mrtrix3_install.sh due to Qt version issue  
(Requires Qt 5.12.2 or above: https://github.com/frankyeh/DSI-Studio/issues/34)~~

2019/5/24  
Reverted changes made on 2019/5/13

2019/6/24  
~~Newer version qt5 installation recipe added (in progress)~~

2019/7/22  
Qt is updated to 5.12 with Qt Charts (for DSI Studio)

2019/7/24  
Qt SVG is added (for MRtrix 3)  
32-bit EoD graphics libraries are disable (to aviod warnings)

2019/7/29  
NVIDIA driver is added to DSI Studio MRtrix3 container

2019/11/10  
Qt version 5.12.5 is used

2020/4/24  
Ubuntu 16.04 version added with Qt 5.14.2

2020/6/20  
Qt5 container is updated to have nvidia driver

2020/7/27  
Ubuntu container is updated to have NVIDIA driver (Ubuntu 16.04 based)

2020/9/28  
Qt5 container is updated to use CUDA 9.1 version (for FSL with CUDA)  
(Reference: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/GPU)

2020/10/20  
Qt5X11Extras is added to the Qt5 recipe  
(Ubuntu container will not be updated unless necessary)
