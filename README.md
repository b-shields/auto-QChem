# auto-QChem

The auto-QChem repository consists of a series of functions for the automated generation, submission, and analysis of large batches of quantum chemistry calculations. The goal of this project is to develop tools for the automated computation of chemical, thermochemical, and steric features of molecules for use in machine learning and data science applications in chemistry. I created this repository to share code while developing tools for my work. All functions are still under development and most are incomplete.

## Dependencies
```
Mathematica 11.1.1
Open-Babel 2.4.1
Gaussian 09 or Gaussian 16
Python 3.6.4
Paramiko 2.4.1
```
I am a Gaussian user so functions are written to work in conjunction with G16 and my local computer cluster which runs Slurm as a job handler. If there is interest, I (we) can extend support to additional programs.

All functions are currently written in the Wolfram language. Down the line, my goal is to translate the code to Python.

## Functions

| Function | Description | Status |
| ------------- | ------------- | ------------- |
| OpenBabel | Generate Cartesian coordinates for molecules/conformers from ChemDraw structures or smiles strings. | Coming soon | 
| GenerateGaussianBatch | Generate input files and cluster submission scripts for a batch of molecules defined by chemdraw structures or smiles strings | Coming soon |
| SubmitBatch | Transfer and submit batches of jobs to a cluster using Paramiko; easily integrated with Wolfram's scheduling functions for automation | Coming soon |
| SharedVibrations | Compare the molecular vibrations for a set of compounds; similar vibrations are identified via correlated movements and frequencies | Coming soon |
| OccupiedVolume | Compute the volume of a sphere occupied by the Van der Waals radii of surrounding atoms in a molecule | Standalone |
| ExtractDescriptors | Extract computed global and atom specific descriptors from computational chemistry output files | Coming soon |










