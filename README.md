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

```diff
+ this will be highlighted in green
- this will be highlighted in red
```

Load the script.
```
<<(NotebookDirectory[]<>"\\occupied_volume.wls")
```
Extract optimized coordinates from a Gaussian .log file.
```
ExtractCoordinates[NotebookDirectory[]<>"\\example_data\\direct_arylation_imidazole_26123.log"];
coordinateList//TableForm
```
