# auto-QChem

I created this repo to share code while developing tools for the automated parameterization of molecules via computational chemistry. All functions are still under development and most are incomplete.

## Notes to the user
auto-QChem currently consists of Mathematica functions which generate


Gaussian log files or Cartesian coordinates as input and returns the % of a sphere of a set radius which is occupied via the Van der Waals radii of the surrounding atoms. The center atom can be specified as a unique element, a numerically labeled atom, or the row of the corresponding Cartesian coordinate matrix. The function is currently incomplete and only supports the use of Gaussian .log files with freq calculation output.

## Availible functions

| Function | Description | Status |
| ------------- | ------------- | ------------- |
| OpenBabel | generate Cartesian coordinates for molecules/conformers from chemdraw structures or smiles strings using Open-Babel | coming soon | 
| GenerateGaussianBatch | get Cartesian coordinates from Gaussian input and output | coming soon |
| SubmitBatch |
| SharedVibrations |
| OccupiedVolume |
| ExtractDescriptors |


OpenBabel	
ExtractCoordinates	
GenerateGaussianBatch	generate Gaussian input files and submission scripts for a batch of molecules defined by chemdraw structures of smiles strings
SubmitBatch	transfer and submit batch of jobs to a cluster using Paramiko

SharedVibrations	compare the vibrations of a set molecules with labeled atoms; similar vibrations identified via correlated movements and frequencies
OccupiedVolume		compute the volume of a sphere occupied by the Van der Waals radii of surrounding atoms in a molecule
ExtractDescriptors	extract computed global and atom specific descriptors from Gaussian .log files








