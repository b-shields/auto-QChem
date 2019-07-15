#!/usr/bin/env wolframscript
(* ::Package:: *)

(*
OccupiedVolume: Atom Specific %Burried Volume Calculator
Ben Shields
7/15/19
*)


(*#################################################################################################### Coordinate extraction from output files*)
(***************************************************************************************************** *)
ExtractCoordinates[logFilePath_]:=Module[
{},
	coordinates="";
	If[
(***************************************************************************************************** Run control*)
		FileExistsQ[logFilePath],
		(
		
(***************************************************************************************************** Find which output sections are present*)		
			logFileText=Import[logFilePath,"Text"];
			
			rootSections=StringCases[
				logFileText,
				Shortest["#"~~p1__~~EndOfLine~~p2__~~EndOfLine~~p3__~~EndOfLine],
				Overlaps->True
				];
			
			possibleSectionKeywords={
				{"opt","o"~~Whitespace...~~"p"~~Whitespace...~~"t"},
				{"freq","f"~~Whitespace...~~"r"~~Whitespace...~~"e"~~Whitespace...~~"q"},
				{"td","t"~~Whitespace...~~"d"~~Whitespace...~~"("}
			};
			
			outputSections={};
			
			For[
				i=1,
				i<Count[possibleSectionKeywords,x_]+1,
				i++,
				(
					If[
						Count[StringContainsQ[rootSections,possibleSectionKeywords[[i]][[2]],IgnoreCase->True],True]==2,
						outputSections=Append[outputSections,possibleSectionKeywords[[i]][[1]]]						
					](*If*)
				)
			];
(***************************************************************************************************** Extract atom labels from first input section*)
			With[
				{
				outputText=StringCases[
					logFileText,
					Shortest[rootSections[[1]]~~__~~"Normal termination"],
					Overlaps->True						
				][[1]](*StringCases*)
				},
				atomLabels=Transpose[
					Partition[
						StringSplit[
							StringReplace[
								StringCases[outputText,__~~Shortest["Multiplicity = "~~NumberString..~~p1__~~"\n\n"]~~__->p1][[1]],
								LetterCharacter..~~WhitespaceCharacter..~~LetterCharacter..~~__->""
							]
						],
						4
					]
				][[1]];	
			];(*With*)

(***************************************************************************************************** Extract optimized coordinates from prefered output sections*)

			elements=Transpose[{{"H","1"},{"He","2"},{"Li","3"},{"Be","4"},{"B","5"},{"C","6"},{"N","7"},{"O","8"},{"F","9"},{"Ne","10"},{"Na","11"},{"Mg","12"},{"Al","13"},{"Si","14"},{"P","15"},{"S","16"},{"Cl","17"},{"Ar","18"},{"K","19"},{"Ca","20"},
				{"Sc","21"},{"Ti","22"},{"V","23"},{"Cr","24"},{"Mn","25"},{"Fe","26"},{"Co","27"},{"Ni","28"},{"Cu","29"},{"Zn","30"},{"Ga","31"},{"Ge","32"},{"As","33"},{"Se","34"},{"Br","35"},{"Kr","36"},{"Rb","37"},{"Sr","38"},{"Y","39"},{"Zr","40"},
				{"Nb","41"},{"Mo","42"},{"Tc","43"},{"Ru","44"},{"Rh","45"},{"Pd","46"},{"Ag","47"},{"Cd","48"},{"In","49"},{"Sn","50"},{"Sb","51"},{"Te","52"},{"I","53"},{"Xe","54"},{"Cs","55"},{"Ba","56"},{"La","57"},{"Ce","58"},{"Pr","59"},{"Nd","60"},
				{"Pm","61"},{"Sm","62"},{"Eu","63"},{"Gd","64"},{"Tb","65"},{"Dy","66"},{"Ho","67"},{"Er","68"},{"Tm","69"},{"Yb","70"},{"Lu","71"},{"Hf","72"},{"Ta","73"},{"W","74"},{"Re","75"},{"Os","76"},{"Ir","77"},{"Pt","78"},{"Au","79"},{"Hg","80"},
				{"Tl","81"},{"Pb","82"},{"Bi","83"},{"Po","84"},{"At","85"},{"Rn","86"},{"Fr","87"},{"Ra","88"},{"Ac","89"},{"Th","90"},{"Pa","91"},{"U","92"},{"Np","93"},{"Pu","94"},{"Am","95"},{"Cm","96"},{"Bk","97"},{"Cf","98"},{"Es","99"},{"Fm","100"},
				{"Md","101"},{"No","102"},{"Lr","103"},{"Rf","104"},{"Db","105"},{"Sg","106"},{"Bh","107"},{"Hs","108"},{"Mt","109"},{"Ds","110"},{"Rg","111"},{"Cn","112"},{"Uut","113"},{"Fl","114"},{"Uup","115"},{"Lv","116"},{"Uus","117"},{"Uuo","118"}}
			];

			Which[
(***************************************************************************************************** *)
(***************************************************************************************************** If a freq calculation was carried out*)
(***************************************************************************************************** *)
				MemberQ[outputSections,"freq"],
				Catch[
					outputText=StringCases[
						logFileText,
						Shortest[
							rootSections[[
								Flatten[
									Position[
										StringContainsQ[rootSections,"f"~~Whitespace...~~"r"~~Whitespace...~~"e"~~Whitespace...~~"q",IgnoreCase->True],
									True]
								][[-2]]
							]]~~
							x__~~"Normal termination"
						],
						Overlaps->True						
					][[1]];(*StringCases*)
					
(***************************************************************************************************** First pass *)					
					templist=StringCases[
						outputText,
						Shortest["Standard orientation:"~~p1__~~"Rotational constants"]->p1
					];

					templist=If[
						Count[templist,_]>0,
						StringCases[
							templist[[-1]],
							NumberString~~Whitespace..~~
							p1:NumberString~~Whitespace..~~
							NumberString~~Whitespace..~~
							p2:NumberString~~Whitespace..~~
							p3:NumberString~~Whitespace..~~
							p4:NumberString~~Whitespace..
							->{p1,p2,p3,p4}
						](*StringCases*)
					];(*If*)

					coordinateList={};
					If[
						Count[templist[[1]],_]==4,
						For[
							i=1,
							i<Count[templist,_]+1,
							i++,
							coordinateList=Append[coordinateList,Join[elements[[1]][[Flatten[Position[elements[[2]],templist[[i]][[1]]]]]],templist[[i]][[2;;]]]]
						](*For*)
					];(*If*)

					coordinates="%chk=blank.chk\n# hf/3-21g\n\nTitle Card Required\n\n "<>
								ToString[DeleteDuplicates[IntegerPart[ToExpression[Flatten[StringCases[outputText,"Charge"~~Whitespace...~~"="~~Whitespace...~~p1:NumberString->p1]]]]][[1]]]<>
								" "<>
								ToString[DeleteDuplicates[IntegerPart[ToExpression[Flatten[StringCases[outputText,"Multiplicity"~~Whitespace...~~"="~~Whitespace...~~p1:NumberString->p1]]]]][[1]]]<>
								"\n";

(***************************************************************************************************** Second pass *)
					If[
						Count[DeleteDuplicates[Table[Count[coordinateList[[n]],_],{n,1,Count[coordinateList,_],1}]],_]>1,
						(
							templist=Flatten[
								StringCases[
									outputText,
									Shortest[
										"Charge"~~Whitespace...~~"="~~Whitespace...~~p1:NumberString..~~Whitespace...~~
										"Multiplicity"~~Whitespace...~~"="~~Whitespace...~~p2:NumberString..~~
										p3__~~"Grad"
									](*Shortest*)
									->{p1,p2,p3},
									Overlaps->True
								](*StringCases*)
							];(*Flatten*)
						
							coordinateList=If[
								Count[templist,_]==3,
								StringCases[
									templist[[3]],
									p1:WordCharacter~~Whitespace...~~","~~Whitespace...~~
									NumberString~~Whitespace...~~","~~Whitespace...~~
									p2:NumberString~~Whitespace...~~","~~Whitespace...~~
									p3:NumberString~~Whitespace...~~","~~Whitespace...~~
									p4:NumberString~~Whitespace...
									->{p1,p2,p3,p4}
								](*StringCases*)
							];(*If*)	
							
							coordinates="%chk=blank.chk\n# hf/3-21g\n\nTitle Card Required\n\n "<>templist[[1]]<>" "<>templist[[2]]<>"\n";
							
						)
					];(*If*)

(***************************************************************************************************** Add atom labels from the input section *)
					coordinateList=Transpose[Prepend[Transpose[coordinateList][[2;;]],atomLabels]];
					
(***************************************************************************************************** Collect *)
					If[
						Count[DeleteDuplicates[Table[Count[coordinateList[[n]],_],{n,1,Count[coordinateList,_],1}]],_]==1,
						For[
							i=1,
							i<Count[coordinateList,x_]+1,
							i++,
							coordinates=coordinates<>"  "<>coordinateList[[i]][[1]]<>"\t\t"<>coordinateList[[i]][[2]]<>"\t\t"<>coordinateList[[i]][[3]]<>"\t\t"<>coordinateList[[i]][[4]]<>"\n"
						],(*For*)
						coordinates="Error in coordinate extraction. Check .log file."
					];(*If*)	
						
				](*Catch*),

(***************************************************************************************************** *)				
(***************************************************************************************************** If a td calculation was carried out*)
(***************************************************************************************************** *)
				MemberQ[outputSections,"td"],
				(
					outputText=StringCases[
						logFileText,
						Shortest[
							rootSections[[
								Flatten[
									Position[
										StringContainsQ[rootSections,"t"~~Whitespace...~~"d"~~Whitespace...~~"(",IgnoreCase->True],
									True]
								][[-2]]
							]]~~
							x__~~"Normal termination"
						],
						Overlaps->True						
					][[1]];(*StringCases*)
					
(***************************************************************************************************** Temporary measure *)
					Print["Error: unsupported calculation type."];
(***************************************************************************************************** Temporary measure*)
										
				),

(***************************************************************************************************** *)				
(***************************************************************************************************** If an opt calculation was carried out*)
(***************************************************************************************************** *)
				MemberQ[outputSections,"opt"],
				(
					outputText=StringCases[
						logFileText,
						Shortest[
							rootSections[[
								Flatten[
									Position[
										StringContainsQ[rootSections,"o"~~Whitespace...~~"p"~~Whitespace...~~"t",IgnoreCase->True],
									True]
								][[-2]]
							]]~~
							x__~~"Normal termination"
						],
						Overlaps->True						
					][[1]];(*StringCases*)
					
(***************************************************************************************************** Temporary measure *)
					Print["Error: unsupported calculation type."];
(***************************************************************************************************** Temporary measure*)

				),
				True,
				Print["Error: calculation type not recognized."]
			];(*If*)			
			
		)
	];(*If*)
	
	coordinates
];(*Module*)


(*#################################################################################################### %Buried Volume Calculator*)
(***************************************************************************************************** Function presets*)
OccupiedVolumePresets:={
	setRadius=3.0,(*Angstroms*)
	meshCount="automatic",
	occupiedVolumeInput="log",
	selectMatrixPosition=False
};
OccupiedVolumePresets;

(***************************************************************************************************** Function*)
OccupiedVolume[input_,atom_]:=Module[
	{allCoordinates,atomPosition,radii,distances,selectedAtoms,mesh,gridSpacing,occupiedMesh},

(***************************************************************************************************** Van der Waals radii*)
	vanDerWaals={{"H",1.2`},{"Li",2.2`},{"Be",1.9`},{"B",1.8`},{"C",1.7`},{"N",1.6`},{"O",1.55`},{"F",1.5`},{"Na",2.4`},{"Mg",2.2`},
		{"Al ",2.1`},{"Si",2.1`},{"P",1.95`},{"S",1.8`},{"Cl",1.8`},{"K",2.8`},{"Ca",2.4`},{"Sc",2.3`},{"Ti",2.15`},{"V",2.05`},
		{"Cr",2.05`},{"Mn",2.05`},{"Fe",2.05`},{"Co",2.`},{"Ni",2.`},{"Cu",2.`},{"Zn",2.1`},{"Ga",2.1`},{"Ge",2.1`},{"As",2.05`},
		{"Se",1.9`},{"Br",1.9`},{"Rb",2.9`},{"Sr",2.55`},{"Y",2.4`},{"Zr",2.3`},{"Nb",2.15`},{"Mo",2.1`},{"Tc",2.05`},{"Ru",2.05`},
		{"Rh",2.`},{"Pd",2.05`},{"Ag",2.1`},{"Cd",2.2`},{"In",2.2`},{"Sn",2.25`},{"Sb",2.25`},{"Te",2.2`},{"I",2.1`},{"Cs",2.1`},
		{"Ba",2.1`},{"La",2.5`},{"Hf",2.25`},{"Ta",2.2`},{"W",2.1`},{"Re",2.05`},{"Os",2.2`},{"Ir",2.`},{"Pt",2.05`},{"Au",2.1`},
		{"Hg",2.05`},{"Tl",2.2`},{"Pb",2.3`},{"Bi",2.3`},{"Th",2.4`},{"U",2.3`}};
		
(***************************************************************************************************** Input type*)
	Which[
		occupiedVolumeInput=="log",
		(
			ExtractCoordinates[input];
			allCoordinates=ToExpression[Map[Rest,coordinateList]];
		),
		occupiedVolumeInput=="array",
		(
			coordinateList=input;
			allCoordinates=ToExpression[Map[Rest,coordinateList]];
		)
	];

(***************************************************************************************************** Find central atom*)
	Which[
		selectMatrixPosition==False,
		atomPosition=Flatten[Position[StringContainsQ[Transpose[coordinateList][[1]],ToString[atom]],True]],
		selectMatrixPosition==True,
		atomPosition={atom},
		True,
		atomPosition={}
	];

(***************************************************************************************************** If a unique atom is found carry out the calculation*)
	If[
		Count[atomPosition,_]==1,
		(

(***************************************************************************************************** Coordinate data for central atom and molecule*)
			atomPosition=allCoordinates[[atomPosition[[1]]]];

			radii=Transpose[vanDerWaals][[2]][[
				Flatten[
					Table[
						Position[Transpose[vanDerWaals][[1]],StringReplace[Transpose[coordinateList][[1]][[n]],NumberString..->""]],
						{n,1,Count[coordinateList,_],1}
					]
				]
			]];
			
(***************************************************************************************************** Temporary data for generating pretty plots*)			
			atomPositionPlot=atomPosition;
			radiiPlot=radii;
			allCoordinatesPlot=allCoordinates;

(***************************************************************************************************** Remove atoms which are not within the sphere from calculation*)
			(*compute distances from the central atom to each other atom*)
			distances=Table[
				{n,radii[[n]],Sqrt[SquaredEuclideanDistance[atomPosition,allCoordinates[[n]]]]*1.},
				{n,1,Count[allCoordinates,_],1}
			];
			
			(*find all atoms to include in the calculation*)
			selectedAtoms=Transpose[Select[distances,#[[3]]<=#[[2]]+setRadius&]][[1]];
			
			(*set coordinates and radii*)
			allCoordinates=allCoordinates[[selectedAtoms]];
			radii=radii[[selectedAtoms]];

(***************************************************************************************************** Define a region and an integration grid*)
			(*set integration mesh if not specified*)
			If[meshCount=="automatic",gridSpacing=setRadius/10,gridSpacing=setRadius/meshCount];

			(*integration grid is a cube of points around the central atom of spacing gridSpacing*)
			mesh=Flatten[
				Table[
					{x,y,z},
					{x,atomPosition[[1]]-setRadius,atomPosition[[1]]+setRadius,gridSpacing},
					{y,atomPosition[[2]]-setRadius,atomPosition[[2]]+setRadius,gridSpacing},
					{z,atomPosition[[3]]-setRadius,atomPosition[[3]]+setRadius,gridSpacing}
				],
			2];

(***************************************************************************************************** Prune the grid to define the sphere*)
			(*compute distances from the central atom to each integration cube*)
			distances=Table[
				{n,Sqrt[SquaredEuclideanDistance[atomPosition,mesh[[n]]]]*1.},
				{n,1,Count[mesh,_],1}
			];
		
			(*redefine the mesh by the cubes inside the sphere*)
			mesh=mesh[[Transpose[Select[distances,#[[2]]<=setRadius&]][[1]]]];
			
(***************************************************************************************************** Find all cubes within the Van der Waals radii of each atom*)
			occupiedMesh={};
			For[
				i=1,
				i<Count[allCoordinates,_]+1,
				i++,
				(
					distances=Table[{n,Sqrt[SquaredEuclideanDistance[allCoordinates[[i]],mesh[[n]]]]},{n,1,Count[mesh,_],1}];
					output=Select[distances,#[[2]]<=radii[[i]]&];
					If[
						Count[output,_]>0,
						occupiedMesh=DeleteDuplicates[Join[occupiedMesh,Transpose[output][[1]]]]
					];
				)
			];

(***************************************************************************************************** Compute occupied volume*)
			volume=(gridSpacing^3*Count[occupiedMesh,_]);(*volume*)
			
			(gridSpacing^3*Count[occupiedMesh,_])/(gridSpacing^3*Count[mesh,_])
			
		),
		Print["Unique atom "<>ToString[atom]<>" not found."]
	]

];
