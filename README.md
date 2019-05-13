# qt5_aci
Singularity recipe for Qt5 on Centos 7 For ICS  

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

2019/5/13  
Updated dsistudio_mrtrix3_install.sh due to Qt version issue  
(Requires Qt 5.12.2 or above: https://github.com/frankyeh/DSI-Studio/issues/34)
