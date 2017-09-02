//Maya ASCII 2015 scene
//Name: segmented_surface_basic.ma
//Last modified: Fri, Sep 01, 2017 09:05:06 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6551293154861186 143.73616636954802 17.427129531842624 ;
	setAttr ".r" -type "double3" -83.738352729446291 -354.19999999983708 7.9923016227963342e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 147.321545026211;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.0410979204155311 100.1 -1.237641495681399 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 77.984175079814165;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 58.020398495479206;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 29.50339483297336;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
	setAttr ".v" no;
createNode transform -n "polySurface2" -p "group1";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.42187503 0.84375
		 0.4609375 0.84375 0.46617088 0.86328125 0.421875 0.88885546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -8 0 0 -4 0 0 -3.46410155 0 -2 -8 0 -4.61880207;
	setAttr -s 4 ".ed[0:3]"  0 3 0 0 1 0 1 2 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 2 -4 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface6" -p "group1";
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44361812 0.74609375
		 0.48046875 0.80992091 0.46617088 0.82421875 0.421875 0.79864448 0.421875 0.74609375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  -8 0 10 -8 0 4.61880207 -5.77350283 0 10
		 -2 0 3.46410155 -3.46410155 0 2;
	setAttr -s 5 ".ed[0:4]"  2 0 0 0 1 0 1 4 0 3 2 0 3 4 0;
	setAttr -ch 5 ".fc[0]" -type "polyFaces" 
		f 5 -4 4 -3 -2 -1
		mu 0 5 0 1 2 3 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4" -p "group1";
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.421875 0.79864448
		 0.46617088 0.82421875 0.4609375 0.84375 0.42187503 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -8 0 0 -8 0 4.61880207 -3.46410155 0 2 -4 0 0;
	setAttr -s 4 ".ed[0:3]"  1 0 0 0 3 0 1 2 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 3 -2 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface8" -p "group1";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.5 0.74609375 0.5
		 0.8046875 0.48046875 0.80992091 0.44361812 0.74609375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -5.77350283 0 10 -4.4408921e-016 0 10 -4.4408921e-016 0 4
		 -2 0 3.46410155;
	setAttr -s 4 ".ed[0:3]"  1 0 0 3 0 0 2 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 3 1 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface10" -p "group1";
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.55638188 0.74609375
		 0.51953125 0.80992091 0.5 0.8046875 0.5 0.74609375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  4.4408921e-016 0 10 5.77350283 0 10 2 0 3.46410155
		 4.4408921e-016 0 4;
	setAttr -s 4 ".ed[0:3]"  1 0 0 3 0 0 2 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 3 1 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface12" -p "group1";
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.578125 0.79864448
		 0.53382909 0.82421875 0.51953125 0.80992091 0.55638188 0.74609375 0.578125 0.74609375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  8 0 10 5.77350283 0 10 8 0 4.61880207 3.46410155 0 2
		 2 0 3.46410155;
	setAttr -s 5 ".ed[0:4]"  0 1 0 2 0 0 4 1 0 3 2 0 3 4 0;
	setAttr -ch 5 ".fc[0]" -type "polyFaces" 
		f 5 -4 4 2 -1 -2
		mu 0 5 0 1 2 3 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface14" -p "group1";
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.578125 0.84375
		 0.5390625 0.84375 0.53382909 0.82421875 0.578125 0.79864448;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  8 0 4.61880207 8 0 0 4 0 0 3.46410155 0 2;
	setAttr -s 4 ".ed[0:3]"  1 0 0 3 0 0 2 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 3 1 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface16" -p "group1";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.578125 0.88885546
		 0.53382909 0.86328125 0.5390625 0.84375 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  8 0 0 8 0 -4.61880207 3.46410155 0 -2 4 0 0;
	setAttr -s 4 ".ed[0:3]"  1 0 0 3 0 0 2 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 3 1 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface17" -p "group1";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.55638188 0.94140631
		 0.51953125 0.87757909 0.53382909 0.86328125 0.578125 0.88885546 0.578125 0.94140625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  8 0 -10 8 0 -4.61880207 5.77350283 0 -10
		 2 0 -3.46410155 3.46410155 0 -2;
	setAttr -s 5 ".ed[0:4]"  0 1 0 2 0 0 4 1 0 2 3 0 3 4 0;
	setAttr -ch 5 ".fc[0]" -type "polyFaces" 
		f 5 3 4 2 -1 -2
		mu 0 5 0 1 2 3 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface19" -p "group1";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.5 0.94140625 0.5
		 0.8828125 0.51953125 0.87757909 0.55638188 0.94140631;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  5.77350283 0 -10 4.4408921e-016 0 -10 4.4408921e-016 0 -4
		 2 0 -3.46410155;
	setAttr -s 4 ".ed[0:3]"  1 0 0 0 3 0 1 2 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 3 -2 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface22" -p "group1";
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.44361812 0.94140631
		 0.48046875 0.87757909 0.5 0.8828125 0.5 0.94140625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -4.4408921e-016 0 -10 -5.77350283 0 -10 -2 0 -3.46410155
		 -4.4408921e-016 0 -4;
	setAttr -s 4 ".ed[0:3]"  1 0 0 0 3 0 1 2 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 3 -2 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface24" -p "group1";
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.421875 0.88885546
		 0.46617088 0.86328125 0.48046875 0.87757909 0.44361812 0.94140631 0.421875 0.94140625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  -8 0 -4.61880207 -8 0 -10 -5.77350283 0 -10
		 -3.46410155 0 -2 -2 0 -3.46410155;
	setAttr -s 5 ".ed[0:4]"  0 1 0 1 2 0 2 4 0 0 3 0 3 4 0;
	setAttr -ch 5 ".fc[0]" -type "polyFaces" 
		f 5 3 4 -3 -2 -1
		mu 0 5 0 1 2 3 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface26" -p "group1";
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.48046875 0.87757909
		 0.46617088 0.86328125 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -3.46410155 0 -2 0 0 0 -2 0 -3.46410155;
	setAttr -s 3 ".ed[0:2]"  0 2 0 0 1 0 2 1 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 1 -3
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface28" -p "group1";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.5 0.8828125 0.48046875
		 0.87757909 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -2 0 -3.46410155 1.110223e-016 0 0 1.110223e-016 0 -4;
	setAttr -s 3 ".ed[0:2]"  0 2 0 0 1 0 2 1 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 1 -3
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface30" -p "group1";
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.51953125 0.87757909
		 0.5 0.8828125 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -1.110223e-016 0 -4 -1.110223e-016 0 0 2 0 -3.46410155;
	setAttr -s 3 ".ed[0:2]"  0 2 0 0 1 0 2 1 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 1 -3
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface31" -p "group1";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.53382909 0.86328125
		 0.51953125 0.87757909 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  2 0 -3.46410155 0 0 0 3.46410155 0 -2;
	setAttr -s 3 ".ed[0:2]"  0 2 0 0 1 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface33" -p "group1";
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.5390625 0.84375
		 0.53382909 0.86328125 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  3.46410155 0 -2 0 0 1.110223e-016 4 0 1.110223e-016;
	setAttr -s 3 ".ed[0:2]"  1 0 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -2 -1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface35" -p "group1";
createNode mesh -n "polySurfaceShape35" -p "polySurface35";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.53382909 0.82421875
		 0.5390625 0.84375 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  4 0 -1.110223e-016 0 0 -1.110223e-016 3.46410155 0 2;
	setAttr -s 3 ".ed[0:2]"  1 0 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -2 -1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface37" -p "group1";
createNode mesh -n "polySurfaceShape37" -p "polySurface37";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.51953125 0.80992091
		 0.53382909 0.82421875 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  3.46410155 0 2 0 0 0 2 0 3.46410155;
	setAttr -s 3 ".ed[0:2]"  1 0 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -2 -1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface40" -p "group1";
createNode mesh -n "polySurfaceShape40" -p "polySurface40";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.5 0.8046875 0.51953125
		 0.80992091 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  2 0 3.46410155 -1.110223e-016 0 0 -1.110223e-016 0 4;
	setAttr -s 3 ".ed[0:2]"  1 0 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -2 -1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface42" -p "group1";
createNode mesh -n "polySurfaceShape42" -p "polySurface42";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.48046875 0.80992091
		 0.5 0.8046875 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  1.110223e-016 0 4 1.110223e-016 0 0 -2 0 3.46410155;
	setAttr -s 3 ".ed[0:2]"  1 0 0 0 2 0 1 2 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -2 -1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface44" -p "group1";
createNode mesh -n "polySurfaceShape44" -p "polySurface44";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.46617088 0.82421875
		 0.48046875 0.80992091 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -2 0 3.46410155 0 0 0 -3.46410155 0 2;
	setAttr -s 3 ".ed[0:2]"  0 2 0 1 0 0 2 1 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 -2 -3
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface46" -p "group1";
createNode mesh -n "polySurfaceShape46" -p "polySurface46";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.4609375 0.84375
		 0.46617088 0.82421875 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  -3.46410155 0 2 0 0 -1.110223e-016 -4 0 -1.110223e-016;
	setAttr -s 3 ".ed[0:2]"  0 2 0 0 1 0 2 1 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 1 -3
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface45" -p "group1";
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.46617088 0.86328125
		 0.4609375 0.84375 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  0 0 1.110223e-016 -3.46410155 0 -2 -4 0 1.110223e-016;
	setAttr -s 3 ".ed[0:2]"  2 1 0 1 0 0 2 0 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 2 -2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group3";
	setAttr ".v" no;
createNode mesh -n "group3Shape" -p "group3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.42187503 0.84375
		 0.4609375 0.84375 0.46617088 0.86328125 0.421875 0.88885546 0.44361812 0.74609375
		 0.48046875 0.80992091 0.46617088 0.82421875 0.421875 0.79864448 0.421875 0.74609375
		 0.421875 0.79864448 0.46617088 0.82421875 0.4609375 0.84375 0.42187503 0.84375 0.5
		 0.74609375 0.5 0.8046875 0.48046875 0.80992091 0.44361812 0.74609375 0.55638188 0.74609375
		 0.51953125 0.80992091 0.5 0.8046875 0.5 0.74609375 0.578125 0.79864448 0.53382909
		 0.82421875 0.51953125 0.80992091 0.55638188 0.74609375 0.578125 0.74609375 0.578125
		 0.84375 0.5390625 0.84375 0.53382909 0.82421875 0.578125 0.79864448 0.578125 0.88885546
		 0.53382909 0.86328125 0.5390625 0.84375 0.578125 0.84375 0.55638188 0.94140631 0.51953125
		 0.87757909 0.53382909 0.86328125 0.578125 0.88885546 0.578125 0.94140625 0.5 0.94140625
		 0.5 0.8828125 0.51953125 0.87757909 0.55638188 0.94140631 0.44361812 0.94140631 0.48046875
		 0.87757909 0.5 0.8828125 0.5 0.94140625 0.421875 0.88885546 0.46617088 0.86328125
		 0.48046875 0.87757909 0.44361812 0.94140631 0.421875 0.94140625 0.48046875 0.87757909
		 0.46617088 0.86328125 0.5 0.83749992 0.5 0.8828125 0.48046875 0.87757909 0.5 0.83749992
		 0.51953125 0.87757909 0.5 0.8828125 0.5 0.83749992 0.53382909 0.86328125 0.51953125
		 0.87757909 0.5 0.83749992 0.5390625 0.84375 0.53382909 0.86328125 0.5 0.83749992
		 0.53382909 0.82421875 0.5390625 0.84375 0.5 0.83749992 0.51953125 0.80992091 0.53382909
		 0.82421875 0.5 0.83749992 0.5 0.8046875 0.51953125 0.80992091 0.5 0.83749992 0.48046875
		 0.80992091 0.5 0.8046875 0.5 0.83749992 0.46617088 0.82421875 0.48046875 0.80992091
		 0.5 0.83749992 0.4609375 0.84375 0.46617088 0.82421875 0.5 0.83749992 0.46617088
		 0.86328125 0.4609375 0.84375 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".vt[0:87]"  -8 0 0 -4 0 0 -3.46410155 0 -2 -8 0 -4.61880207
		 -8 0 10 -8 0 4.61880207 -5.77350283 0 10 -2 0 3.46410155 -3.46410155 0 2 -8 0 0 -8 0 4.61880207
		 -3.46410155 0 2 -4 0 0 -5.77350283 0 10 -4.4408921e-016 0 10 -4.4408921e-016 0 4
		 -2 0 3.46410155 4.4408921e-016 0 10 5.77350283 0 10 2 0 3.46410155 4.4408921e-016 0 4
		 8 0 10 5.77350283 0 10 8 0 4.61880207 3.46410155 0 2 2 0 3.46410155 8 0 4.61880207
		 8 0 0 4 0 0 3.46410155 0 2 8 0 0 8 0 -4.61880207 3.46410155 0 -2 4 0 0 8 0 -10 8 0 -4.61880207
		 5.77350283 0 -10 2 0 -3.46410155 3.46410155 0 -2 5.77350283 0 -10 4.4408921e-016 0 -10
		 4.4408921e-016 0 -4 2 0 -3.46410155 -4.4408921e-016 0 -10 -5.77350283 0 -10 -2 0 -3.46410155
		 -4.4408921e-016 0 -4 -8 0 -4.61880207 -8 0 -10 -5.77350283 0 -10 -3.46410155 0 -2
		 -2 0 -3.46410155 -3.46410155 0 -2 0 0 0 -2 0 -3.46410155 -2 0 -3.46410155 1.110223e-016 0 0
		 1.110223e-016 0 -4 -1.110223e-016 0 -4 -1.110223e-016 0 0 2 0 -3.46410155 2 0 -3.46410155
		 0 0 0 3.46410155 0 -2 3.46410155 0 -2 0 0 1.110223e-016 4 0 1.110223e-016 4 0 -1.110223e-016
		 0 0 -1.110223e-016 3.46410155 0 2 3.46410155 0 2 0 0 0 2 0 3.46410155 2 0 3.46410155
		 -1.110223e-016 0 0 -1.110223e-016 0 4 1.110223e-016 0 4 1.110223e-016 0 0 -2 0 3.46410155
		 -2 0 3.46410155 0 0 0 -3.46410155 0 2 -3.46410155 0 2 0 0 -1.110223e-016 -4 0 -1.110223e-016
		 0 0 1.110223e-016 -3.46410155 0 -2 -4 0 1.110223e-016;
	setAttr -s 88 ".ed[0:87]"  0 3 0 0 1 0 1 2 0 3 2 0 6 4 0 4 5 0 5 8 0
		 7 6 0 7 8 0 10 9 0 9 12 0 10 11 0 11 12 0 14 13 0 16 13 0 15 14 0 15 16 0 18 17 0
		 20 17 0 19 18 0 19 20 0 21 22 0 23 21 0 25 22 0 24 23 0 24 25 0 27 26 0 29 26 0 28 27 0
		 28 29 0 31 30 0 33 30 0 32 31 0 32 33 0 34 35 0 36 34 0 38 35 0 36 37 0 37 38 0 40 39 0
		 39 42 0 40 41 0 41 42 0 44 43 0 43 46 0 44 45 0 45 46 0 47 48 0 48 49 0 49 51 0 47 50 0
		 50 51 0 52 54 0 52 53 0 54 53 0 55 57 0 55 56 0 57 56 0 58 60 0 58 59 0 60 59 0 61 63 0
		 61 62 0 62 63 0 65 64 0 64 66 0 65 66 0 68 67 0 67 69 0 68 69 0 71 70 0 70 72 0 71 72 0
		 74 73 0 73 75 0 74 75 0 77 76 0 76 78 0 77 78 0 79 81 0 80 79 0 81 80 0 82 84 0 82 83 0
		 84 83 0 87 86 0 86 85 0 87 85 0;
	setAttr -s 24 -ch 88 ".fc[0:23]" -type "polyFaces" 
		f 4 1 2 -4 -1
		mu 0 4 0 1 2 3
		f 5 -8 8 -7 -6 -5
		mu 0 5 4 5 6 7 8
		f 4 11 12 -11 -10
		mu 0 4 9 10 11 12
		f 4 -16 16 14 -14
		mu 0 4 13 14 15 16
		f 4 -20 20 18 -18
		mu 0 4 17 18 19 20
		f 5 -25 25 23 -22 -23
		mu 0 5 21 22 23 24 25
		f 4 -29 29 27 -27
		mu 0 4 26 27 28 29
		f 4 -33 33 31 -31
		mu 0 4 30 31 32 33
		f 5 37 38 36 -35 -36
		mu 0 5 34 35 36 37 38
		f 4 41 42 -41 -40
		mu 0 4 39 40 41 42
		f 4 45 46 -45 -44
		mu 0 4 43 44 45 46
		f 5 50 51 -50 -49 -48
		mu 0 5 47 48 49 50 51
		f 3 -53 53 -55
		mu 0 3 52 53 54
		f 3 -56 56 -58
		mu 0 3 55 56 57
		f 3 -59 59 -61
		mu 0 3 58 59 60
		f 3 -62 62 63
		mu 0 3 61 62 63
		f 3 -66 -65 66
		mu 0 3 64 65 66
		f 3 -69 -68 69
		mu 0 3 67 68 69
		f 3 -72 -71 72
		mu 0 3 70 71 72
		f 3 -75 -74 75
		mu 0 3 73 74 75
		f 3 -78 -77 78
		mu 0 3 76 77 78
		f 3 -80 -81 -82
		mu 0 3 79 80 81
		f 3 -83 83 -85
		mu 0 3 82 83 84
		f 3 -86 87 -87
		mu 0 3 85 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4";
	setAttr ".v" no;
createNode mesh -n "group4Shape" -p "group4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51953125 0.87757909297943115 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape47" -p "group4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.509765625 0.80730420351028442 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.42187503 0.84375
		 0.4609375 0.84375 0.46617088 0.86328125 0.421875 0.88885546 0.44361812 0.74609375
		 0.48046875 0.80992091 0.46617088 0.82421875 0.421875 0.79864448 0.421875 0.74609375
		 0.421875 0.79864448 0.46617088 0.82421875 0.4609375 0.84375 0.42187503 0.84375 0.5
		 0.74609375 0.5 0.8046875 0.48046875 0.80992091 0.44361812 0.74609375 0.55638188 0.74609375
		 0.51953125 0.80992091 0.5 0.8046875 0.5 0.74609375 0.578125 0.79864448 0.53382909
		 0.82421875 0.51953125 0.80992091 0.55638188 0.74609375 0.578125 0.74609375 0.578125
		 0.84375 0.5390625 0.84375 0.53382909 0.82421875 0.578125 0.79864448 0.578125 0.88885546
		 0.53382909 0.86328125 0.5390625 0.84375 0.578125 0.84375 0.55638188 0.94140631 0.51953125
		 0.87757909 0.53382909 0.86328125 0.578125 0.88885546 0.578125 0.94140625 0.5 0.94140625
		 0.5 0.8828125 0.51953125 0.87757909 0.55638188 0.94140631 0.44361812 0.94140631 0.48046875
		 0.87757909 0.5 0.8828125 0.5 0.94140625 0.421875 0.88885546 0.46617088 0.86328125
		 0.48046875 0.87757909 0.44361812 0.94140631 0.421875 0.94140625 0.48046875 0.87757909
		 0.46617088 0.86328125 0.5 0.83749992 0.5 0.8828125 0.48046875 0.87757909 0.5 0.83749992
		 0.51953125 0.87757909 0.5 0.8828125 0.5 0.83749992 0.53382909 0.86328125 0.51953125
		 0.87757909 0.5 0.83749992 0.5390625 0.84375 0.53382909 0.86328125 0.5 0.83749992
		 0.53382909 0.82421875 0.5390625 0.84375 0.5 0.83749992 0.51953125 0.80992091 0.53382909
		 0.82421875 0.5 0.83749992 0.5 0.8046875 0.51953125 0.80992091 0.5 0.83749992 0.48046875
		 0.80992091 0.5 0.8046875 0.5 0.83749992 0.46617088 0.82421875 0.48046875 0.80992091
		 0.5 0.83749992 0.4609375 0.84375 0.46617088 0.82421875 0.5 0.83749992 0.46617088
		 0.86328125 0.4609375 0.84375 0.5 0.83749992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".pt[0:87]" -type "float3"  -8.0000038 0 0 -4.0000019 
		0 0 -3.4641016 0 -2.000001 -8.0000038 0 -4.6188021 -8.0000038 0 9.9999981 -8.0000038 
		0 4.6188021 -5.7735028 0 9.9999981 -2.000001 0 3.4641016 -3.4641016 0 2.000001 -8.0000038 
		0 0 -8.0000038 0 4.6188021 -3.4641016 0 2.000001 -4.0000019 0 0 -5.7735028 0 9.9999981 
		-4.4408942e-016 0 9.9999981 -4.4408942e-016 0 4.0000019 -2.000001 0 3.4641016 4.4408942e-016 
		0 9.9999981 5.7735028 0 9.9999981 2.000001 0 3.4641016 4.4408942e-016 0 4.0000019 
		8.0000038 0 9.9999981 5.7735028 0 9.9999981 8.0000038 0 4.6188021 3.4641016 0 2.000001 
		2.000001 0 3.4641016 8.0000038 0 4.6188021 8.0000038 0 0 4.0000019 0 0 3.4641016 
		0 2.000001 8.0000038 0 0 8.0000038 0 -4.6188021 4.8872042 0 -2.1588082 5.4231052 
		0 -0.15880738 8.0000038 0 -9.9999981 8.0000038 0 -4.6188021 5.7735028 0 -9.9999981 
		2.000001 0 -3.4641016 3.4641016 0 -2.000001 5.7735028 0 -9.9999981 4.4408942e-016 
		0 -9.9999981 4.4408942e-016 0 -4.0000019 2.000001 0 -3.4641016 -4.4408942e-016 0 
		-9.9999981 -5.7735028 0 -9.9999981 -2.000001 0 -3.4641016 -4.4408942e-016 0 -4.0000019 
		-8.0000038 0 -4.6188021 -8.0000038 0 -9.9999981 -5.7735028 0 -9.9999981 -3.4641016 
		0 -2.000001 -2.000001 0 -3.4641016 -3.4641016 0 -2.000001 0 0 0 -2.000001 0 -3.4641016 
		-2.000001 0 -3.4641016 1.1102236e-016 0 0 1.1102236e-016 0 -4.0000019 -1.1102236e-016 
		0 -4.0000019 -1.1102236e-016 0 0 2.000001 0 -3.4641016 1.8226404 0 -2.5895357 0 0 
		0 3.2867413 0 -1.1254351 3.4641016 0 -2.000001 0 0 1.1102236e-016 4.0000019 0 1.1102236e-016 
		3.6218486 0 0.16888618 0 0 -1.1102236e-016 3.085948 0 2.1688871 3.1209419 0 1.04408 
		0 0 0 1.656841 0 2.5081804 2.000001 0 3.4641016 -1.1102236e-016 0 0 0 0 4.0000019 
		1.1102236e-016 0 4.0000019 1.1102236e-016 0 0 -2.000001 0 3.4641016 -2.000001 0 3.4641016 
		0 0 0 -3.4641016 0 2.000001 -3.4641016 0 2.000001 0 0 -1.1102236e-016 -4.0000019 
		0 -1.1102236e-016 0 0 1.1102236e-016 -3.4641016 0 -2.000001 -4.0000019 0 1.1102236e-016;
	setAttr -s 88 ".vt[0:87]"  -8 0 0 -4 0 0 -3.46410155 0 -2 -8 0 -4.61880207
		 -8 0 10 -8 0 4.61880207 -5.77350283 0 10 -2 0 3.46410155 -3.46410155 0 2 -8 0 0 -8 0 4.61880207
		 -3.46410155 0 2 -4 0 0 -5.77350283 0 10 -4.4408921e-016 0 10 -4.4408921e-016 0 4
		 -2 0 3.46410155 4.4408921e-016 0 10 5.77350283 0 10 2 0 3.46410155 4.4408921e-016 0 4
		 8 0 10 5.77350283 0 10 8 0 4.61880207 3.46410155 0 2 2 0 3.46410155 8 0 4.61880207
		 8 0 0 4 0 0 3.46410155 0 2 8 0 0 8 0 -4.61880207 3.46410155 0 -2 4 0 0 8 0 -10 8 0 -4.61880207
		 5.77350283 0 -10 2 0 -3.46410155 3.46410155 0 -2 5.77350283 0 -10 4.4408921e-016 0 -10
		 4.4408921e-016 0 -4 2 0 -3.46410155 -4.4408921e-016 0 -10 -5.77350283 0 -10 -2 0 -3.46410155
		 -4.4408921e-016 0 -4 -8 0 -4.61880207 -8 0 -10 -5.77350283 0 -10 -3.46410155 0 -2
		 -2 0 -3.46410155 -3.46410155 0 -2 0 0 0 -2 0 -3.46410155 -2 0 -3.46410155 1.110223e-016 0 0
		 1.110223e-016 0 -4 -1.110223e-016 0 -4 -1.110223e-016 0 0 2 0 -3.46410155 2 0 -3.46410155
		 0 0 0 3.46410155 0 -2 3.46410155 0 -2 0 0 1.110223e-016 4 0 1.110223e-016 4 0 -1.110223e-016
		 0 0 -1.110223e-016 3.46410155 0 2 3.46410155 0 2 0 0 0 2 0 3.46410155 2 0 3.46410155
		 -1.110223e-016 0 0 -1.110223e-016 0 4 1.110223e-016 0 4 1.110223e-016 0 0 -2 0 3.46410155
		 -2 0 3.46410155 0 0 0 -3.46410155 0 2 -3.46410155 0 2 0 0 -1.110223e-016 -4 0 -1.110223e-016
		 0 0 1.110223e-016 -3.46410155 0 -2 -4 0 1.110223e-016;
	setAttr -s 88 ".ed[0:87]"  0 3 0 0 1 0 1 2 0 3 2 0 6 4 0 4 5 0 5 8 0
		 7 6 0 7 8 0 10 9 0 9 12 0 10 11 0 11 12 0 14 13 0 16 13 0 15 14 0 15 16 0 18 17 0
		 20 17 0 19 18 0 19 20 0 21 22 0 23 21 0 25 22 0 24 23 0 24 25 0 27 26 0 29 26 0 28 27 0
		 28 29 0 31 30 0 33 30 0 32 31 0 32 33 0 34 35 0 36 34 0 38 35 0 36 37 0 37 38 0 40 39 0
		 39 42 0 40 41 0 41 42 0 44 43 0 43 46 0 44 45 0 45 46 0 47 48 0 48 49 0 49 51 0 47 50 0
		 50 51 0 52 54 0 52 53 0 54 53 0 55 57 0 55 56 0 57 56 0 58 60 0 58 59 0 60 59 0 61 63 0
		 61 62 0 62 63 0 65 64 0 64 66 0 65 66 0 68 67 0 67 69 0 68 69 0 71 70 0 70 72 0 71 72 0
		 74 73 0 73 75 0 74 75 0 77 76 0 76 78 0 77 78 0 79 81 0 80 79 0 81 80 0 82 84 0 82 83 0
		 84 83 0 87 86 0 86 85 0 87 85 0;
	setAttr -s 24 -ch 88 ".fc[0:23]" -type "polyFaces" 
		f 4 1 2 -4 -1
		mu 0 4 0 1 2 3
		f 5 -8 8 -7 -6 -5
		mu 0 5 4 5 6 7 8
		f 4 11 12 -11 -10
		mu 0 4 9 10 11 12
		f 4 -16 16 14 -14
		mu 0 4 13 14 15 16
		f 4 -20 20 18 -18
		mu 0 4 17 18 19 20
		f 5 -25 25 23 -22 -23
		mu 0 5 21 22 23 24 25
		f 4 -29 29 27 -27
		mu 0 4 26 27 28 29
		f 4 -33 33 31 -31
		mu 0 4 30 31 32 33
		f 5 37 38 36 -35 -36
		mu 0 5 34 35 36 37 38
		f 4 41 42 -41 -40
		mu 0 4 39 40 41 42
		f 4 45 46 -45 -44
		mu 0 4 43 44 45 46
		f 5 50 51 -50 -49 -48
		mu 0 5 47 48 49 50 51
		f 3 -53 53 -55
		mu 0 3 52 53 54
		f 3 -56 56 -58
		mu 0 3 55 56 57
		f 3 -59 59 -61
		mu 0 3 58 59 60
		f 3 -62 62 63
		mu 0 3 61 62 63
		f 3 -66 -65 66
		mu 0 3 64 65 66
		f 3 -69 -68 69
		mu 0 3 67 68 69
		f 3 -72 -71 72
		mu 0 3 70 71 72
		f 3 -75 -74 75
		mu 0 3 73 74 75
		f 3 -78 -77 78
		mu 0 3 76 77 78
		f 3 -80 -81 -82
		mu 0 3 79 80 81
		f 3 -83 83 -85
		mu 0 3 82 83 84
		f 3 -86 87 -87
		mu 0 3 85 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.543452814697266 -0.5 0.056313 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37087222933769226 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0.5
		 0.375 0.75 0.625 0.75 0.375 0.875 0.625 0.875 0.375 1 0.625 1 0.125 0 0.25 1.2502074e-005
		 0.125 0.25 0.375 0.25 0.625 0 0.75 1.2502074e-005 0.875 0 0.875 0.25 0.375 0.5 0.625
		 0.25 0.375 0.37087223 0.25412777 0.25 0.25 0.25 0.375 0.375 0.24587224 0.25 0.375
		 0.37912777 0.625 0.37912777 0.75412774 0.25 0.75 0.25 0.625 0.375 0.74587226 0.25
		 0.625 0.37087223;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[10]" -type "float3" 0 0 3.0277963 ;
	setAttr ".pt[12]" -type "float3" 0 0 -3.0564141 ;
	setAttr ".pt[13]" -type "float3" 0 0 -3.0564141 ;
	setAttr ".pt[15]" -type "float3" 0 0 3.0277963 ;
	setAttr -s 16 ".vt[0:15]"  -8.61524963 -0.5 30.27975082 8.61524963 -0.5 30.27975082
		 -8.61524963 0.5 30.27975082 8.61524963 0.5 30.27975082 -8.61524963 0.5 -30.27975082
		 8.61524963 0.5 -30.27975082 -8.61524963 -0.5 -30.27975082 8.61524963 -0.5 -30.27975082
		 -8.61524963 -0.49994999 0 8.61524963 -0.49994999 0 -8.61524963 0.5 0.99989998 -8.61524963 0.5 0
		 -8.61524963 0.5 -0.99989998 8.61524963 0.5 -0.99989998 8.61524963 0.5 0 8.61524963 0.5 0.99989998;
	setAttr -s 30 ".ed[0:29]"  0 1 0 2 3 0 4 5 0 6 7 0 8 9 1 0 2 0 1 3 0
		 2 10 0 3 15 0 4 6 0 5 7 0 6 8 0 7 9 0 8 0 0 9 1 0 12 4 0 8 12 1 10 8 1 13 5 0 9 15 1
		 13 9 1 12 13 1 15 10 1 12 11 0 11 14 1 14 13 0 11 10 0 15 14 0 11 8 1 14 9 1;
	setAttr -s 16 -ch 60 ".fc[0:15]" -type "polyFaces" 
		f 4 0 6 -2 -6
		mu 0 4 0 12 17 11
		f 4 1 8 22 -8
		mu 0 4 11 17 29 18
		f 4 21 18 -3 -16
		mu 0 4 23 24 1 16
		f 4 2 10 -4 -10
		mu 0 4 16 1 3 2
		f 4 3 12 -5 -12
		mu 0 4 2 3 5 4
		f 4 4 14 -1 -14
		mu 0 4 4 5 7 6
		f 4 -13 -11 -19 20
		mu 0 4 13 14 15 25
		f 4 -15 19 -9 -7
		mu 0 4 12 13 28 17
		f 4 11 16 15 9
		mu 0 4 8 9 22 10
		f 4 13 5 7 17
		mu 0 4 9 0 11 19
		f 4 23 24 25 -22
		mu 0 4 23 21 27 24
		f 4 26 -23 27 -25
		mu 0 4 21 18 29 27
		f 3 -18 -27 28
		mu 0 3 9 19 20
		f 3 -29 -24 -17
		mu 0 3 9 20 22
		f 3 -21 -26 29
		mu 0 3 13 25 26
		f 3 -30 -28 -20
		mu 0 3 13 26 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.543452814697266 0.1486454046709671 0.056313 ;
	setAttr ".r" -type "double3" 0 -179.99999999999994 0 ;
	setAttr ".rp" -type "double3" -8.6152496337890625 0 0 ;
	setAttr ".sp" -type "double3" -8.6152496337890625 0 0 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0.5
		 0.375 0.75 0.625 0.75 0.375 0.875 0.625 0.875 0.375 1 0.625 1 0.125 0 0.25 1.2502074e-005
		 0.125 0.25 0.375 0.25 0.625 0 0.75 1.2502074e-005 0.875 0 0.875 0.25 0.375 0.5 0.625
		 0.25 0.25 0.25 0.375 0.375 0.75 0.25 0.625 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[1:11]" -type "float3"  10.196629 0 0 0 0 0 10.196629 
		0 0 0 0 0 10.196629 0 0 0 0 0 10.196629 0 0 0 0 0 10.196629 0 1.0297319e-014 0 0 
		0 10.196629 0 1.0297319e-014;
	setAttr -s 12 ".vt[0:11]"  -8.61524963 -0.5 30.27975082 8.61524963 -0.5 30.27975082
		 -8.61524963 0.5 30.27975082 8.61524963 0.5 30.27975082 -8.61524963 0.5 -30.27975082
		 8.61524963 0.5 -30.27975082 -8.61524963 -0.5 -30.27975082 8.61524963 -0.5 -30.27975082
		 -8.61524963 -0.49994999 0 8.61524963 -0.49994999 0 -8.61524963 0.5 0 8.61524963 0.5 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 8 9 1 0 2 0 1 3 0
		 4 6 0 5 7 0 6 8 0 7 9 0 8 0 0 9 1 0 4 10 0 10 11 1 11 5 0 10 2 0 3 11 0 10 8 1 11 9 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 6 -2 -6
		mu 0 4 0 12 17 11
		f 4 1 17 -15 16
		mu 0 4 11 17 21 19
		f 4 -3 13 14 15
		mu 0 4 1 16 19 21
		f 4 2 8 -4 -8
		mu 0 4 16 1 3 2
		f 4 3 10 -5 -10
		mu 0 4 2 3 5 4
		f 4 4 12 -1 -12
		mu 0 4 4 5 7 6
		f 4 -11 -9 -16 19
		mu 0 4 13 14 15 20
		f 4 -7 -13 -20 -18
		mu 0 4 17 12 13 20
		f 4 7 9 -19 -14
		mu 0 4 10 8 9 18
		f 4 11 5 -17 18
		mu 0 4 9 0 11 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.543452814697266 0.1486454046709671 0.056313 ;
	setAttr ".r" -type "double3" 0 -179.99999999999994 0 ;
	setAttr ".rp" -type "double3" -8.6152496337890625 0 0 ;
	setAttr ".sp" -type "double3" -8.6152496337890625 0 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0.5
		 0.375 0.75 0.625 0.75 0.375 0.875 0.625 0.875 0.375 1 0.625 1 0.125 0 0.25 1.2502074e-005
		 0.125 0.25 0.375 0.25 0.625 0 0.75 1.2502074e-005 0.875 0 0.875 0.25 0.375 0.5 0.625
		 0.25 0.25 0.25 0.375 0.375 0.75 0.25 0.625 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[1:11]" -type "float3"  10.196629 0 0 0 0 0 10.196629 
		0 0 0 0 0 10.196629 0 0 0 0 0 10.196629 0 0 0 0 0 10.196629 0 1.0297319e-014 0 0 
		0 10.196629 0 1.0297319e-014;
	setAttr -s 12 ".vt[0:11]"  -8.61524963 -0.5 30.27975082 8.61524963 -0.5 30.27975082
		 -8.61524963 0.5 30.27975082 8.61524963 0.5 30.27975082 -8.61524963 0.5 -30.27975082
		 8.61524963 0.5 -30.27975082 -8.61524963 -0.5 -30.27975082 8.61524963 -0.5 -30.27975082
		 -8.61524963 -0.49994999 0 8.61524963 -0.49994999 0 -8.61524963 0.5 0 8.61524963 0.5 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 8 9 1 0 2 0 1 3 0
		 4 6 0 5 7 0 6 8 0 7 9 0 8 0 0 9 1 0 4 10 0 10 11 1 11 5 0 10 2 0 3 11 0 10 8 1 11 9 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 6 -2 -6
		mu 0 4 0 12 17 11
		f 4 1 17 -15 16
		mu 0 4 11 17 21 19
		f 4 -3 13 14 15
		mu 0 4 1 16 19 21
		f 4 2 8 -4 -8
		mu 0 4 16 1 3 2
		f 4 3 10 -5 -10
		mu 0 4 2 3 5 4
		f 4 4 12 -1 -12
		mu 0 4 4 5 7 6
		f 4 -11 -9 -16 19
		mu 0 4 13 14 15 20
		f 4 -7 -13 -20 -18
		mu 0 4 17 12 13 20
		f 4 7 9 -19 -14
		mu 0 4 10 8 9 18
		f 4 11 5 -17 18
		mu 0 4 9 0 11 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 26 ".lnk";
	setAttr -s 26 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode phong -n "Global_0";
	setAttr ".c" -type "float3" 0.27450979 0 1.2205882 ;
	setAttr ".ambc" -type "float3" 0.21960784 0 0.97647059 ;
	setAttr ".sc" -type "float3" 0.21960784 0 0.97647059 ;
createNode shadingEngine -n "Global_0SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "Global_0SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "Global_0SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "Global_0SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode shadingEngine -n "Global_0SG5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode shadingEngine -n "Global_0SG6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode shadingEngine -n "Global_0SG7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode shadingEngine -n "Global_0SG8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode shadingEngine -n "Global_0SG9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode shadingEngine -n "Global_0SG10";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode shadingEngine -n "Global_0SG11";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode shadingEngine -n "Global_0SG12";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode shadingEngine -n "Global_0SG13";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode shadingEngine -n "Global_0SG14";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
createNode shadingEngine -n "Global_0SG15";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
createNode shadingEngine -n "Global_0SG16";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
createNode shadingEngine -n "Global_0SG17";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
createNode shadingEngine -n "Global_0SG18";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
createNode shadingEngine -n "Global_0SG19";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
createNode shadingEngine -n "Global_0SG20";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
createNode shadingEngine -n "Global_0SG21";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
createNode shadingEngine -n "Global_0SG22";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
createNode shadingEngine -n "Global_0SG23";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
createNode shadingEngine -n "Global_0SG24";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
createNode displayLayer -n "APF0";
	setAttr ".c" 2;
	setAttr ".do" 1;
createNode displayLayer -n "Layer_1";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".c" 2;
	setAttr ".do" 2;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.5 -size 10 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 1 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 3 "vtx[19:20]" "vtx[73]" "vtx[75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 3 "vtx[24:25]" "vtx[70]" "vtx[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[70]" -type "float3" 0.34315968 0 0.95592093 ;
	setAttr ".tk[72]" -type "float3" 0.34315991 0 0.95592117 ;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 3 "vtx[28:29]" "vtx[67]" "vtx[69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[67]" -type "float3" 0.37815332 0 -0.16888618 ;
	setAttr ".tk[69]" -type "float3" 0.37815332 0 -0.16888618 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 3 "vtx[32:33]" "vtx[64]" "vtx[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[32:33]" -type "float3"  -1.42310286 0 0.15880728 -1.42310333
		 0 0.15880738;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 3 "vtx[37:38]" "vtx[61]" "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[61]" -type "float3" 0.17736053 0 -0.8745656 ;
	setAttr ".tk[63]" -type "float3" 0.17736006 0 -0.87456584 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 3 "vtx[15:16]" "vtx[66]" "vtx[68]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[1]" -type "float3" -0.88929081 0 -0.22898622 ;
	setAttr ".tk[2]" -type "float3" -0.88929081 0 -0.22898626 ;
	setAttr ".tk[45]" -type "float3" 0.48904324 0 -0.8002634 ;
	setAttr ".tk[46]" -type "float3" 0.48904315 0 -0.8002634 ;
	setAttr ".tk[52]" -type "float3" 1.029027 0 0.26421142 ;
	setAttr ".tk[54]" -type "float3" 1.0290267 0 0.26421165 ;
	setAttr ".tk[58]" -type "float3" -0.048802178 0 0.66179562 ;
	setAttr ".tk[60]" -type "float3" -0.048802137 0 0.66179562 ;
	setAttr ".tk[69]" -type "float3" 0.90036559 0 -0.54654455 ;
	setAttr ".tk[71]" -type "float3" 0.90036583 0 -0.54654455 ;
	setAttr ".tk[72]" -type "float3" 0.88857317 0 0.20397568 ;
	setAttr ".tk[74]" -type "float3" 0.88857317 0 0.2039756 ;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 3 "vtx[7:8]" "vtx[67]" "vtx[69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[67]" -type "float3" -0.90036559 0 0.54654455 ;
	setAttr ".tk[69]" -type "float3" -0.90036583 0 0.54654455 ;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 3 "vtx[11:12]" "vtx[68]" "vtx[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[68]" -type "float3" -0.88857317 0 -0.20397568 ;
	setAttr ".tk[70]" -type "float3" -0.88857317 0 -0.2039756 ;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[1:2]" "vtx[70:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[1:2]" -type "float3"  0.88929081 0 0.22898622 0.88929081
		 0 0.22898626;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[50:52]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[52]" -type "float3" -1.029027 0 -0.26421142 ;
	setAttr ".tk[54]" -type "float3" -1.0290267 0 -0.26421165 ;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 3 "vtx[45:46]" "vtx[53]" "vtx[55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[45:46]" -type "float3"  -0.48904324 0 0.8002634 -0.48904315
		 0 0.8002634;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 3 "vtx[41:42]" "vtx[54]" "vtx[56]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[54]" -type "float3" 0.048802178 0 -0.66179562 ;
	setAttr ".tk[56]" -type "float3" 0.048802137 0 -0.66179562 ;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 3 "vtx[40:41]" "vtx[43]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 64 ".tk[2:63]" -type "float3"  -1.36842012 0 1.019866228
		 0 0 0 0 0 0 0 0 0 0 0 0 -2.15114164 0 -0.37286806 0.35326195 0 1.44286251 0 0 0 0
		 0 0 0 0 0 -0.16418457 0 1.12541473 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.23884654
		 0 -0.13353968 0 0 0 0 0 0 0 0 0 0 0 0 1.39736986 0 -1.44560862 0 0 0 0 0 0 0 0 0
		 0.76133013 0 -1.088324547 0 0 0 0 0 0 0 0 0 0.11950779 0 -1.4478116 0 0 0 0 0 0 0
		 0 0 1.079521179 0 0.58416653 -0.57637596 0 -1.91479254 0 0 0 -8.8817863e-016 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1.67629004 0 -0.67398548 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 3 "vtx[36:37]" "vtx[39]" "vtx[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[37]" -type "float3"  -1.079521179 0 -0.58416653;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 3 "vtx[31:32]" "vtx[35]" "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[38]" -type "float3" 0.57637596 0 1.9147925 ;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 3 "vtx[27:28]" "vtx[30]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[33]" -type "float3" -0.11950779 0 1.4478116 ;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 3 "vtx[23:24]" "vtx[26]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[29]" -type "float3" -0.76133013 0 1.0883245 ;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 3 "vtx[18:19]" "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[25]" -type "float3" -1.3973699 0 1.4456086 ;
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 3 "vtx[14:15]" "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[17]" -type "float3" -8.8817863e-016 0 0 ;
	setAttr ".tk[20]" -type "float3" -1.2388465 0 0.13353968 ;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 3 "vtx[6:7]" "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[7]" -type "float3"  2.15114164 0 0.37286806;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 3 "vtx[5]" "vtx[8]" "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[8]" -type "float3" -0.35326195 0 -1.4428625 ;
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 2 "vtx[0:1]" "vtx[9:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[10]" -type "float3"  0.16418457 0 -1.12541473;
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 3 "vtx[2:3]" "vtx[27]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[2:3]" -type "float3"  1.36842012 0 -1.019866228
		 0 0 0;
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 2 "vtx[25:26]" "vtx[28:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[26]" -type "float3"  -1.67629004 0 0.67398548;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 34979;
	setAttr ".lt" -type "double3" 0 0 0.307855 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.000003814697266 0 -19.999998092651367 ;
	setAttr ".cbx" -type "double3" 16.000003814697266 0 19.999998092651367 ;
createNode polyCube -n "polyCube1";
	setAttr ".w" 32;
	setAttr ".d" 40;
	setAttr ".sw" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 26 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 26 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId77.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId75.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId76.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId74.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId73.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupId72.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId71.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId70.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId54.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId55.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupId69.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupId68.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupId67.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupId66.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId65.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId56.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId57.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId58.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupId59.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId64.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupId63.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupId62.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupId61.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId60.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupId78.id" "group3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "group3Shape.iog.og[0].gco";
connectAttr "polyExtrudeFace1.out" "group4Shape.i";
connectAttr "groupId79.id" "group4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "group4Shape.iog.og[0].gco";
connectAttr "polyCube1.out" "pCubeShape5.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG13.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG14.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG15.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG16.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG17.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG18.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG19.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG20.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG21.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG22.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG23.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Global_0SG24.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG13.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG14.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG15.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG16.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG17.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG18.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG19.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG20.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG21.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG22.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG23.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Global_0SG24.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Global_0.oc" "Global_0SG1.ss";
connectAttr "Global_0SG1.msg" "materialInfo1.sg";
connectAttr "Global_0.msg" "materialInfo1.m";
connectAttr "Global_0.oc" "Global_0SG2.ss";
connectAttr "Global_0SG2.msg" "materialInfo2.sg";
connectAttr "Global_0.msg" "materialInfo2.m";
connectAttr "Global_0.oc" "Global_0SG3.ss";
connectAttr "Global_0SG3.msg" "materialInfo3.sg";
connectAttr "Global_0.msg" "materialInfo3.m";
connectAttr "Global_0.oc" "Global_0SG4.ss";
connectAttr "Global_0SG4.msg" "materialInfo4.sg";
connectAttr "Global_0.msg" "materialInfo4.m";
connectAttr "Global_0.oc" "Global_0SG5.ss";
connectAttr "Global_0SG5.msg" "materialInfo5.sg";
connectAttr "Global_0.msg" "materialInfo5.m";
connectAttr "Global_0.oc" "Global_0SG6.ss";
connectAttr "Global_0SG6.msg" "materialInfo6.sg";
connectAttr "Global_0.msg" "materialInfo6.m";
connectAttr "Global_0.oc" "Global_0SG7.ss";
connectAttr "Global_0SG7.msg" "materialInfo7.sg";
connectAttr "Global_0.msg" "materialInfo7.m";
connectAttr "Global_0.oc" "Global_0SG8.ss";
connectAttr "Global_0SG8.msg" "materialInfo8.sg";
connectAttr "Global_0.msg" "materialInfo8.m";
connectAttr "Global_0.oc" "Global_0SG9.ss";
connectAttr "Global_0SG9.msg" "materialInfo9.sg";
connectAttr "Global_0.msg" "materialInfo9.m";
connectAttr "Global_0.oc" "Global_0SG10.ss";
connectAttr "Global_0SG10.msg" "materialInfo10.sg";
connectAttr "Global_0.msg" "materialInfo10.m";
connectAttr "Global_0.oc" "Global_0SG11.ss";
connectAttr "Global_0SG11.msg" "materialInfo11.sg";
connectAttr "Global_0.msg" "materialInfo11.m";
connectAttr "Global_0.oc" "Global_0SG12.ss";
connectAttr "Global_0SG12.msg" "materialInfo12.sg";
connectAttr "Global_0.msg" "materialInfo12.m";
connectAttr "Global_0.oc" "Global_0SG13.ss";
connectAttr "Global_0SG13.msg" "materialInfo13.sg";
connectAttr "Global_0.msg" "materialInfo13.m";
connectAttr "Global_0.oc" "Global_0SG14.ss";
connectAttr "Global_0SG14.msg" "materialInfo14.sg";
connectAttr "Global_0.msg" "materialInfo14.m";
connectAttr "Global_0.oc" "Global_0SG15.ss";
connectAttr "Global_0SG15.msg" "materialInfo15.sg";
connectAttr "Global_0.msg" "materialInfo15.m";
connectAttr "Global_0.oc" "Global_0SG16.ss";
connectAttr "Global_0SG16.msg" "materialInfo16.sg";
connectAttr "Global_0.msg" "materialInfo16.m";
connectAttr "Global_0.oc" "Global_0SG17.ss";
connectAttr "Global_0SG17.msg" "materialInfo17.sg";
connectAttr "Global_0.msg" "materialInfo17.m";
connectAttr "Global_0.oc" "Global_0SG18.ss";
connectAttr "Global_0SG18.msg" "materialInfo18.sg";
connectAttr "Global_0.msg" "materialInfo18.m";
connectAttr "Global_0.oc" "Global_0SG19.ss";
connectAttr "Global_0SG19.msg" "materialInfo19.sg";
connectAttr "Global_0.msg" "materialInfo19.m";
connectAttr "Global_0.oc" "Global_0SG20.ss";
connectAttr "Global_0SG20.msg" "materialInfo20.sg";
connectAttr "Global_0.msg" "materialInfo20.m";
connectAttr "Global_0.oc" "Global_0SG21.ss";
connectAttr "Global_0SG21.msg" "materialInfo21.sg";
connectAttr "Global_0.msg" "materialInfo21.m";
connectAttr "Global_0.oc" "Global_0SG22.ss";
connectAttr "Global_0SG22.msg" "materialInfo22.sg";
connectAttr "Global_0.msg" "materialInfo22.m";
connectAttr "Global_0.oc" "Global_0SG23.ss";
connectAttr "Global_0SG23.msg" "materialInfo23.sg";
connectAttr "Global_0.msg" "materialInfo23.m";
connectAttr "Global_0.oc" "Global_0SG24.ss";
connectAttr "Global_0SG24.msg" "materialInfo24.sg";
connectAttr "Global_0.msg" "materialInfo24.m";
connectAttr "layerManager.dli[1]" "APF0.id";
connectAttr "layerManager.dli[2]" "Layer_1.id";
connectAttr "groupParts1.og" "polyMergeVert1.ip";
connectAttr "group4Shape.wm" "polyMergeVert1.mp";
connectAttr "polySurfaceShape47.o" "groupParts1.ig";
connectAttr "groupId79.id" "groupParts1.gi";
connectAttr "polyTweak1.out" "polyMergeVert2.ip";
connectAttr "group4Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert3.ip";
connectAttr "group4Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyMergeVert4.ip";
connectAttr "group4Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert5.ip";
connectAttr "group4Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert6.ip";
connectAttr "group4Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert7.ip";
connectAttr "group4Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert8.ip";
connectAttr "group4Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert9.ip";
connectAttr "group4Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert10.ip";
connectAttr "group4Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert11.ip";
connectAttr "group4Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert10.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert12.ip";
connectAttr "group4Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert11.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert13.ip";
connectAttr "group4Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert12.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyMergeVert14.ip";
connectAttr "group4Shape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert13.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyMergeVert15.ip";
connectAttr "group4Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert14.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMergeVert16.ip";
connectAttr "group4Shape.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert15.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert17.ip";
connectAttr "group4Shape.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert16.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert18.ip";
connectAttr "group4Shape.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert17.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyMergeVert19.ip";
connectAttr "group4Shape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert18.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert20.ip";
connectAttr "group4Shape.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert19.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMergeVert21.ip";
connectAttr "group4Shape.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert20.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert22.ip";
connectAttr "group4Shape.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert21.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyMergeVert23.ip";
connectAttr "group4Shape.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert22.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert24.ip";
connectAttr "group4Shape.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert23.out" "polyTweak23.ip";
connectAttr "polyMergeVert24.out" "polyExtrudeFace1.ip";
connectAttr "group4Shape.wm" "polyExtrudeFace1.mp";
connectAttr "Global_0SG1.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG2.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG3.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG4.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG5.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG6.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG7.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG8.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG9.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG10.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG11.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG12.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG13.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG14.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG15.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG16.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG17.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG18.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG19.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG20.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG21.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG22.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG23.pa" ":renderPartition.st" -na;
connectAttr "Global_0SG24.pa" ":renderPartition.st" -na;
connectAttr "Global_0.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "group3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "group4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
// End of segmented_surface_basic.ma
