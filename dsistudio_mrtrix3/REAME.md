**NOTE: DO NOT rebuild "Singularity.dsi_mrtrix3" image.**  
(Last successful build was Mar 12 2019)

Location for executables:  
1) **MRtrix3**:  
/opt/sw/mrtrix3/bin/  

2) **DSI Studio**:  
/opt/sw/dsistudio/build/  
or use  
`$ /opt/sw/dsistudio/build/dsi_studio`  

`PATH` to executables are updated. To run program, use commands like: `$ dsi_studio` or `$ mrview`

2019/2/15  
Packages added: mesa-libGLU-devel.i686 mesa-libGL-devel.i686

2019/3/11  
ACI-I graphics libraries updated:  
`> singularity shell --nv willgpaik-qt5_aci-master-dsi_mrtrix3.simg`

2019/6/17  
~~**Singularity.dsi_mrtrix3_ants** cannot be build on Singularity Hub due to 2 hr time restriction~~  
Recipe with Ants is added

2019/6/24  
Recipe with FLS is added

2020/6/22  
NVIDIA driver installation and EoD libraries are removed  
VirtualGL is added
