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
~~**Singularity.dsi_mrtrix3_ants** cannot be built on Singularity Hub due to 2 hr time restriction~~  
Recipe with Ants is added

2019/6/24  
Recipe with FLS is added

2020/6/22  
NVIDIA driver installation and EoD libraries are removed  

2020/9/15  
Recipe for DSI Studio, MRTrix3, ~~ANTs,~~ FSL, and fMRIPrep is added (with NVIDIA CUDA)  
(This recipe is based on dsi_mrtrix3 recipe. All other packages will be installed with this recipe.)  
**Singularity.dsi_mrtrix3_ants** cannot be built on Singularity Hub due to 2 hr time restriction

2020/9/29  
Missing ANTs is now added to the recipe (Singularity.dsi_mrtrix3_ants_fsl_fmriprep)

2020/10/12  
Nodejs is upgraded to 12.19.0

2020/10/13  
File downloads are now done silently (wget and curl)  
Bids-validator is upgraded to 1.5.6

2020/10/18  
Freesurfer Qt plugin and library files are replaced  
UDUNITS is added (May not be essential)

2020/10/19  
Minor updates (include fixing errors)  
**"Singularity.dsi_mrtrix3_ants_fsl_fmriprep" requires 64GB+ memory**

2020/10/20  
Singularity.dsi_mrtrix3 (dependencies for FreeSurfer installation):
- ANN-devel, Armadillo-devel, OpenCV-devel, PETSc-devel, Tix-devel, Tk-devel, and Tkinter are added  
- GTS-0.7.6 and VTK-9.0.1 are added

2020/10/25  
Singularity.dsi_mrtrix3_ants_fsl_fmriprep:  
- Devtoolset is unloaded (FreeSurfer requires GCC 4.8)
- FreeSufer installation is done manually (Changed from RPM installation)
