# occupied-volume

## Notes to the user
OccupiedVolume is a Mathematica function which takes Gaussian log files or Cartesian coordinates as input and returns the % of a sphere of a set radius which is occupied via the Van der Waals radii of the surrounding atoms. The center atom can be specified as a unique element, a numerically labeled atom, or the row of the corresponding Cartesian coordinate matrix.

This function is still under development and the code only supports .log files which contain Gaussian freq output at the moment. Once I have time I will add more general functions for handling computational input and output.

## Options

| Option | Input Type | Description | Preset Value | 
| ------------- | ------------- | ------------- | ------------- |
| setRadius | integer | set the sphere radius | 3.0 Å |
| meshCount | natural number | set the mesh count for the numerical integration grid | 10 |
| occupiedVolumeInput | "log" | gaussian .log file input | ".log" |
|  | "array" | input type is a Cartesian coordinate matrix |  |
| selectMatrixPosition | Boolean | specify central atom as a row of coordinate matrix | False |

## Usage

### Example 1: Gaussian output files with labeled atoms

Load the script.
```
<<(NotebookDirectory[]<>"\\occupied_volume.wls")
```
Extract optimized coordinates from a Gaussian .log file.
```
ExtractCoordinates[NotebookDirectory[]<>"\\example_data\\direct_arylation_imidazole_26123.log"];
coordinateList//TableForm
```
```
C	-1.129366	1.181040	-0.238242
C	-2.521710	1.120002	-0.228290
N	-3.225597	0.002602	-0.008540
C	-2.521603	-1.112560	0.221983
C	-1.129382	-1.169323	0.253418
C	-0.411766	0.006808	0.011249
N1	1.000435	0.006099	0.016847
C2	1.829210	-1.028986	-0.367061
H	1.435009	-1.963715	-0.740923
N3	3.096931	-0.714050	-0.271442
C4	3.112778	0.582822	0.203036
H	4.043645	1.099241	0.394208
C5	1.840187	1.052989	0.379309
H6	1.453449	1.985029	0.760746
H	-0.619919	2.113230	-0.457239
H	-3.101754	2.021382	-0.417923
H	-3.101510	-2.015264	0.405430
H	-0.621380	-2.099204	0.485244
```
In this calculation the atoms were labeled numerically. Compute the % occupied volume for the atom labeled 1.
```
OccupiedVolume[NotebookDirectory[]<>"\\example_data\\direct_arylation_imidazole_26123.log",1]
```
```
0.658431
```
Compute the % occupied volume for all labeled atoms.
```
OccupiedVolume[NotebookDirectory[]<>"\\example_data\\direct_arylation_imidazole_26123.log",#]&/@Range[6];
```
```
{0.658431, 0.51859, 0.447829, 0.456944, 0.526265, 0.390261}
```
Generate a graphical representation of the % occupied volume for atom 6.
```
OccupiedVolume[NotebookDirectory[]<>"\\example_data\\direct_arylation_imidazole_26123.log",6]

atomStyle[atom_]:=Which[
	StringContainsQ[atom,"C"],
	Black,
	StringContainsQ[atom,"H"],
	White,
	StringContainsQ[atom,"N"],
	Blue,
	StringContainsQ[atom,"O"],
	Red,
	True,
	ColorData[68,2]
];

g1=Graphics3D[{atomStyle[atomLabels[[#]]],Specularity[White,10],Sphere[allCoordinatesPlot[[#]],radiiPlot[[#]]]}&/@Range[allCoordinatesPlot//Count[_]]];

Quiet@Show[
	g1,
	Graphics3D[
		{
			Opacity[0.6],
			ColorData[97,1],
			Glow[ColorData[97,1]],
			Sphere[atomPositionPlot,setRadius]
		}
	],
	Boxed->False,
	ViewPoint->Top
]
```
```
0.390261
```
![alt text](https://raw.githubusercontent.com/b-shields/occupied-volume/example_data/img1.png)

### Example 2: Gaussian output files with unlabeled atoms
Load the script.
```
<<(NotebookDirectory[]<>"\\occupied_volume.wls")
```
Extract optimized coordinates from a Gaussian .log file.
```
ExtractCoordinates[NotebookDirectory[]<>"\\example_data\\Ni_Ar_I_ligand_27123.log"];
coordinateList//TableForm
```
In this calculation the atoms were not labeled numerically. Compute the % occupied volume for the unique atom Ni.
```
OccupiedVolume[NotebookDirectory[]<>"\\example_data\\Ni_Ar_I_ligand_27123.log","Ni"]
```
If the atom is not uniquely identified you will get an error.
```
OccupiedVolume[NotebookDirectory[]<>"\\example_data\\Ni_Ar_I_ligand_27123.log","N"]

-Unique atom N not found.
```
For unlabeled data you can select the atom by its position in the Cartesian matrix via the selectMatrixPosition option.
```
ExtractCoordinates[NotebookDirectory[]<>"\\example_data\\Ni_Ar_I_ligand_27123.log"];

nitrogenPositions=Position[coordinateList[[All,1]],"N"]//Flatten;

selectMatrixPosition=True;
OccupiedVolume[NotebookDirectory[]<>"\\example_data\\Ni_Ar_I_ligand_27123.log",#]&/@nitrogenPositions
```
Generate a graphical representation of the % occupied volume around Ni.
```
(*Reset to the default settings*)
OccupiedVolumePresets;

OccupiedVolume[NotebookDirectory[]<>"\\example_data\\Ni_Ar_I_ligand_27123.log.log","Ni"]

atomStyle[atom_]:=Which[
	StringContainsQ[atom,"Ni"],
	Purple,
	StringContainsQ[atom,"C"],
	Black,
	StringContainsQ[atom,"H"],
	White,
	StringContainsQ[atom,"N"],
	Blue,
	StringContainsQ[atom,"O"],
	Red,
	True,
	ColorData[68,2]
];

g2=Graphics3D[{atomStyle[atomLabels[[#]]],Specularity[White,10],Sphere[allCoordinatesPlot[[#]],radiiPlot[[#]]]}&/@Range[allCoordinatesPlot//Count[_]]];

Quiet@Show[
	g2,
	Graphics3D[
		{
			Opacity[0.6],
			ColorData[97,1],
			Glow[ColorData[97,1]],
			Sphere[atomPositionPlot,setRadius]
		}
	],
	Boxed->False,
	ViewPoint->Top
]
```
