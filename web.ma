//Maya ASCII 2015 scene
//Name: web.ma
//Last modified: Wed, Oct 26, 2016 08:59:25 PM
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
	setAttr ".t" -type "double3" -3.1996586471532993 140.7219329228077 10.141689465026957 ;
	setAttr ".r" -type "double3" 626.0947336153821 176.59999999995586 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 141.37560891905008;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.6286172866821289 -0.32540507614612579 0.52996993064880371 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.632228611682777 100.10000000000001 -3.2158597033980021 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 161.38275515336801;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.10000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "web";
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "webShape" -p "web";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.55420082807540894 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 254 ".pt";
	setAttr ".pt[0:165]" -type "float3"  1.4901161e-008 -2.9802322e-008 0 -2.9802322e-008 
		-8.9406967e-008 0 2.9802322e-008 0 0 0 -2.9802322e-008 0 0 1.4901161e-008 0 0 -7.4505806e-009 
		0 0 9.3132257e-010 0 -1.8626451e-009 7.4505806e-009 0 0 -1.4901161e-008 0 0 2.9802322e-008 
		0 -3.7252903e-009 0 0 0 0 0 3.7252903e-009 2.9802322e-008 0 1.8626451e-009 -2.9802322e-008 
		0 -3.3760443e-009 -1.4901161e-008 0 1.1175871e-008 0 0 0 3.7252903e-009 0 0 0 0 -1.4901161e-008 
		1.4901161e-008 0 0 -2.9802322e-008 0 0 -5.9604645e-008 0 0 5.9604645e-008 0 -4.4703484e-008 
		-2.9802322e-008 0 -1.4901161e-008 -5.9604645e-008 0 0 -1.1920929e-007 0 -2.9802322e-008 
		1.1920929e-007 0 0 1.1920929e-007 0 -5.9604645e-008 0 0 -2.9802322e-008 -5.9604645e-008 
		0 -7.4505806e-009 0 0 -3.7252903e-009 -2.9802322e-008 0 -1.4901161e-008 -5.9604645e-008 
		0 -1.4901161e-008 0 0 -1.4901161e-008 -5.9604645e-008 0 0 5.9604645e-008 0 -2.9802322e-008 
		5.9604645e-008 0 -1.4901161e-008 5.9604645e-008 0 1.4901161e-008 0 0 -1.4901161e-008 
		0 0 7.4505806e-009 -5.9604645e-008 0 -3.7252903e-009 0 0 1.4901161e-008 0 0 2.9802322e-008 
		-5.9604645e-008 0 -2.9802322e-008 -5.9604645e-008 0 0 5.9604645e-008 0 5.9604645e-008 
		5.9604645e-008 0 2.9802322e-008 0 0 2.9802322e-008 5.9604645e-008 0 0 5.9604645e-008 
		0 4.4703484e-008 0 0 -2.9802322e-008 0 0 -2.9802322e-008 0 0 0 -1.1920929e-007 0 
		-3.7252903e-009 1.4901161e-008 0 0 0 0 0 -5.9604645e-008 0 -2.9802322e-008 0 0 2.9802322e-008 
		1.1920929e-007 0 -5.9604645e-008 1.7881393e-007 0 -5.9604645e-008 1.1920929e-007 
		0 5.9604645e-008 -5.9604645e-008 0 -2.9802322e-008 5.9604645e-008 0 0 -2.9802322e-008 
		0 -4.4703484e-008 5.9604645e-008 0 0 -7.4505806e-009 0 -9.3132257e-010 1.4901161e-008 
		0 0 -5.9604645e-008 0 0 -1.1920929e-007 0 0 0 0 -1.4901161e-008 0 0 -2.9802322e-008 
		-1.7881393e-007 0 -2.9802322e-008 0 0 -7.4505806e-009 0 0 1.4901161e-008 -8.9406967e-008 
		0 0 -5.9604645e-008 0 3.7252903e-009 -5.9604645e-008 0 0 0 0 -1.8626451e-009 -1.4901161e-008 
		0 7.4505806e-009 -7.4505806e-009 0 7.4505806e-009 -1.1175871e-008 0 1.4901161e-008 
		1.4901161e-008 0 1.4901161e-008 -1.4901161e-008 0 0 -1.4901161e-008 0 -1.4901161e-008 
		0 0 -2.9802322e-008 1.4901161e-008 0 2.9802322e-008 -1.4901161e-008 0 1.4901161e-008 
		0 0 -7.4505806e-009 -7.4505806e-009 0 7.4505806e-009 7.4505806e-009 0 3.7252903e-009 
		-1.4901161e-008 0 -2.7939677e-009 0 0 0 0 0 0 2.9802322e-008 0 7.4505806e-009 -5.9604645e-008 
		0 7.4505806e-009 0 0 -1.4901161e-008 -2.9802322e-008 0 7.4505806e-009 7.4505806e-009 
		0 5.9604645e-008 -1.1920929e-007 0 5.9604645e-008 0 0 2.9802322e-008 5.9604645e-008 
		0 0 -2.3841858e-007 0 -2.9802322e-008 0 0 5.9604645e-008 5.9604645e-008 0 -5.9604645e-008 
		0 0 -5.9604645e-008 1.1920929e-007 0 -2.9802322e-008 1.1920929e-007 0 0 0 0 -2.9802322e-008 
		-1.1920929e-007 0 0 0 0 2.9802322e-008 -5.9604645e-008 0 -5.9604645e-008 0 0 2.9802322e-008 
		5.9604645e-008 0 1.4901161e-008 0 0 0 0 0 -1.4901161e-008 1.8626451e-009 0 5.5879354e-009 
		0 0 0 5.9604645e-008 0 0 0 0 0 5.9604645e-008 0 1.4901161e-008 -5.9604645e-008 0 
		0 0 0 -1.4901161e-008 0 0 2.9802322e-008 5.9604645e-008 0 0 0 0 0 5.9604645e-008 
		0 -2.9802322e-008 5.9604645e-008 0 0 -5.9604645e-008 0 0 -1.4901161e-008 0 -1.4901161e-008 
		1.4901161e-008 0 2.9802322e-008 2.9802322e-008 0 -2.9802322e-008 8.9406967e-008 0 
		0 -2.9802322e-008 0 -5.9604645e-008 -5.9604645e-008 0 4.4703484e-008 2.9802322e-008 
		0 -1.4901161e-008 5.9604645e-008 0 0 -4.4703484e-008 0 -2.2351742e-008 0 0 -5.5879354e-009 
		-1.4901161e-008 0 0 0 0 1.4901161e-008 5.9604645e-008 0 0 5.9604645e-008 0 1.4901161e-008 
		-5.9604645e-008 0 1.4901161e-008 5.9604645e-008 0 1.4901161e-008 1.1920929e-007 0 
		-1.4901161e-008 -1.7881393e-007 0 0 5.9604645e-008 0 0 -5.9604645e-008 0 -7.4505806e-009 
		-5.9604645e-008 0 0 2.9802322e-008 0 0 -1.4901161e-008 0 7.4505806e-009 -1.8626451e-009 
		0 0 2.9802322e-008 0 1.4901161e-008 -2.9802322e-008 0 -2.9802322e-008 -8.9406967e-008 
		0 0 -5.9604645e-008 0 0 8.9406967e-008 0 0 2.9802322e-008 0 -1.4901161e-008 -2.9802322e-008 
		0 0 0 0 1.4901161e-008 0 0 0 0 0 0 1.4901161e-008 0 0 0 0 -7.4505806e-009 0 0 -7.4505806e-009 
		2.9802322e-008 0 0 -5.9604645e-008 0;
	setAttr ".pt[166:253]" -1.4901161e-008 0 0 1.4901161e-008 0 0 0 1.1920929e-007 
		0 -7.4505806e-009 5.9604645e-008 0 -7.4505806e-009 2.9802322e-008 0 0 5.9604645e-008 
		0 5.5879354e-009 0 0 -3.7252903e-009 -2.9802322e-008 0 0 0 0 0 7.4505806e-009 0 2.9802322e-008 
		-4.4703484e-008 0 4.4703484e-008 -1.4901161e-008 0 -1.4901161e-008 0 0 0 0 0 -4.4703484e-008 
		0 0 -7.4505806e-009 2.9802322e-008 0 -3.7252903e-009 5.9604645e-008 0 -5.1222742e-009 
		0 0 0 -2.9802322e-008 0 3.7252903e-009 0 0 9.3132257e-010 0 0 -3.7252903e-009 -1.4901161e-008 
		0 3.7252903e-009 0 0 0 0 0 -9.3132257e-010 -1.4901161e-008 0 1.8626451e-009 2.9802322e-008 
		0 1.2805685e-009 2.9802322e-008 0 -3.7252903e-009 1.4901161e-008 0 -9.3132257e-010 
		-2.9802322e-008 0 1.8626451e-009 -1.4901161e-008 0 7.4505806e-009 -4.4703484e-008 
		0 -3.7252903e-009 1.4901161e-008 0 3.7252903e-009 1.4901161e-008 0 -7.4505806e-009 
		-2.9802322e-008 0 -3.7252903e-009 7.4505806e-009 0 -1.1175871e-008 -7.4505806e-009 
		0 -3.7252903e-009 0 0 7.4505806e-009 -1.8626451e-009 0 -1.4901161e-008 0 0 3.7252903e-009 
		0 0 -7.4505806e-009 -3.7252903e-009 0 1.4901161e-008 0 0 -7.4505806e-009 0 0 0 -2.2351742e-008 
		0 0 3.7252903e-009 0 0 -7.4505806e-009 0 -1.4901161e-008 0 0 0 0 0 0 0 0 0 -2.9802322e-008 
		0 -7.4505806e-009 7.4505806e-009 0 -7.4505806e-009 0 0 0 -2.9802322e-008 0 -7.4505806e-009 
		-3.7252903e-009 0 7.4505806e-009 -3.7252903e-009 0 0 1.4901161e-008 0 0 3.7252903e-009 
		0 -7.4505806e-009 -3.7252903e-009 0 2.2351742e-008 0 0 -7.4505806e-009 -4.6566129e-010 
		0 -7.4505806e-009 0 0 1.4901161e-008 -4.6566129e-010 0 0 0 0 0 0 0 0 0 0 -3.7252903e-009 
		-2.9802322e-008 0 -7.4505806e-009 -7.4505806e-009 0 -3.7252903e-009 0 0 0 0 0 0 0 
		0 -3.7252903e-009 -4.4703484e-008 0 -3.7252903e-009 0 0 -3.7252903e-009 4.4703484e-008 
		0 3.7252903e-009 0 0 4.6566129e-010 1.4901161e-008 0 -3.7252903e-009 -1.4901161e-008 
		0 0 0 0 2.7939677e-009 0 0 -1.8626451e-009 1.4901161e-008 0 -1.1175871e-008 0 0 0 
		-5.9604645e-008 0 0 -1.4901161e-008 0 -3.7252903e-009 -2.9802322e-008 0 -1.8626451e-009 
		-2.9802322e-008 0 3.7252903e-009 0 0 -7.4505806e-009 2.9802322e-008 0 5.5879354e-009 
		-5.9604645e-008 0 -4.6566129e-010 1.4901161e-008 0;
	setAttr ".bw" 3;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
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
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 1 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".h" 0.21000000000000002;
	setAttr ".sa" 24;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[46:47]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 35067;
	setAttr ".lt" -type "double3" 0 0 4.594829 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.318506717681885 -2.0999999344348907 -5.1763761043548584 ;
	setAttr ".cbx" -type "double3" 20 2.0999999344348907 5.1763808727264404 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[42:43]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.6592569 0 16.730324 ;
	setAttr ".rs" 56312;
	setAttr ".lt" -type "double3" 0 0 4.5948287282050941 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.1763796806335449 -2.0999999344348907 14.142135381698608 ;
	setAttr ".cbx" -type "double3" 14.142134189605713 2.0999999344348907 19.318513870239258 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[38:39]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.6592569 0 16.730322 ;
	setAttr ".rs" 63591;
	setAttr ".lt" -type "double3" 0 0 4.5948287282050941 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.142132997512817 -2.0999999344348907 14.142131805419922 ;
	setAttr ".cbx" -type "double3" -5.1763802766799927 2.0999999344348907 19.318512678146362 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[34:35]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.659252 0 -8.9406967e-007 ;
	setAttr ".rs" 50030;
	setAttr ".lt" -type "double3" 0 0 4.5948287282050941 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.999994039535522 -2.0999999344348907 -5.1763802766799927 ;
	setAttr ".cbx" -type "double3" -19.318510293960571 2.0999999344348907 5.1763784885406494 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[30:31]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.6592541 0 -16.73032 ;
	setAttr ".rs" 63561;
	setAttr ".lt" -type "double3" 0 0 4.5948287282050941 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.142130613327026 -2.0999999344348907 -19.31850790977478 ;
	setAttr ".cbx" -type "double3" -5.1763767004013062 2.0999999344348907 -14.142131805419922 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[26:27]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.659255 0 -16.730314 ;
	setAttr ".rs" 33371;
	setAttr ".lt" -type "double3" 0 0 4.5948287282050941 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.1763802766799927 -2.0999999344348907 -19.318504333496094 ;
	setAttr ".cbx" -type "double3" 14.142130613327026 2.0999999344348907 -14.142125844955444 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 134 ".tk[3:133]" -type "float3"  0.0010451674 0 -0.0007571578
		 0 0 0 0 0 0 0 0 0 -0.0015009195 0 -0.00074991584 0 0 0 0 0 0 0 0 0 -0.00083467364
		 0 0 0 0 0 0 0 0 0 0 0 -0.00052158535 0 0.00083890557 0 0 0 0 0 0 0 0 0 0.00091327727
		 0 0.0010440648 0 0 0 0 0 0 0 0 0 0.0012423396 0 3.2884875e-026 0.24484456 0 0 0.069159567
		 0 -0.01938203 0.20597827 0 -0.14921415 0.26244932 0 -0.19012266 0.20597833 0 -0.14921415
		 0.006415634 0 -0.04046005 -0.29579338 0 -0.14778847 -0.37688819 0 -0.18830621 -0.29579347
		 0 -0.14778852 -0.071109593 0 -0.021294624 -0.16449887 0 0 -0.20959789 0 0 -0.16449887
		 0 0 -0.043300211 0 0.023821831 -0.13641787 0 0.16532755 -0.1880562 0 0.21065372 -0.13432005
		 0 0.16532749 0.0067762379 0 0.056730807 0.17998797 0 0.20576382 0.22933349 0 0.2621761
		 0.17998785 0 0.20576376 0.066385269 0 0.035635591 0.24484444 0 0 0.31197131 0 8.2578117e-024
		 0.24484456 0 0 0.069159567 0 -0.01938203 0.20597827 0 -0.14921415 0.26244932 0 -0.19012266
		 0.20597833 0 -0.14921415 0.006415634 0 -0.04046005 -0.29579338 0 -0.14778847 -0.37688819
		 0 -0.18830621 -0.29579347 0 -0.14778852 -0.071109593 0 -0.021294624 -0.16449887 -1.4901161e-008
		 0 -0.20959789 0 0 -0.16449887 -1.4901161e-008 0 -0.043300211 0 0.023821831 -0.13641787
		 0 0.16532755 -0.1880562 0 0.21065372 -0.13432005 0 0.16532749 0.0067762379 0 0.056730807
		 0.17998797 0 0.20576382 0.22933349 0 0.2621761 0.17998785 0 0.20576376 0.066385269
		 0 0.035635591 0.24484444 0 0 0.31197131 0 8.2578117e-024 0 0 0 0 0 0 0 0 0 0.0010451674
		 0 -0.0007571578 0 0 0 0 0 0 0 0 0 -0.0015009195 0 -0.00074991584 0 0 0 0 0 0 0 0
		 0 -0.00083467364 0 0 0 0 0 0 0 0 0 0 0 -0.00052158535 0 0.00083890557 0 0 0 0 0 0
		 0 0 0 0.00091327727 0 0.0010440648 0 0 0 0 0 0 0 0 0 0.0012423396 0 3.2884875e-026
		 0 0 0 0 0 0 0.29203606 0 0 1.038545251 0 0 1.038545251 0 0 0.29203606 0 0 0.29203618
		 0 0 0.29203618 0 0 0.21467903 0 0.24542296 0.76344579 0 0.87277806 0.76344579 0 0.87277806
		 0.21467903 0 0.24542296 0.214679 0 0.24542296 0.214679 0 0.24542296 -0.20456111 0
		 0.19719297 -0.83740497 0 0.7012614 -0.83740497 0 0.7012614 -0.20456111 0 0.19719297
		 -0.20139375 0 0.19719291 -0.20139375 0 0.19719291 -0.19620454 0 0 -0.69774652 0 0
		 -0.69774652 0 0 -0.19620454 0 0 -0.19620454 0 0 -0.19620454 0 0 -0.35280505 0 -0.17627335
		 -1.25465202 0 -0.62686682 -1.25465202 0 -0.62686682 -0.35280505 0 -0.17627335 -0.35280508
		 0 -0.17627335 -0.35280508 0 -0.17627335 0.24567872 0 -0.17797387 0.87368751 0 -0.63291407
		 0.87368751 0 -0.63291407 0.24567872 0 -0.17797387 0.24567881 0 -0.17797387 0.24567881
		 0 -0.17797387;
createNode polySplit -n "polySplit1";
	setAttr -s 25 ".e[0:24]"  0.32869601 0.32869601 0.32869601 0.32869601
		 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601
		 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601
		 0.32869601 0.32869601 0.32869601 0.32869601 0.32869601;
	setAttr -s 25 ".d[0:24]"  -2147483499 -2147483498 -2147483497 -2147483496 -2147483495 -2147483494 
		-2147483493 -2147483492 -2147483491 -2147483490 -2147483489 -2147483488 -2147483487 -2147483510 -2147483509 -2147483508 -2147483507 -2147483506 
		-2147483505 -2147483504 -2147483503 -2147483502 -2147483501 -2147483500 -2147483499;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 25 ".e[0:24]"  0.35779199 0.35779199 0.35779199 0.35779199
		 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199
		 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199
		 0.35779199 0.35779199 0.35779199 0.35779199 0.35779199;
	setAttr -s 25 ".d[0:24]"  -2147483338 -2147483339 -2147483340 -2147483341 -2147483342 -2147483343 
		-2147483344 -2147483345 -2147483346 -2147483347 -2147483348 -2147483349 -2147483350 -2147483351 -2147483352 -2147483353 -2147483354 -2147483355 
		-2147483356 -2147483357 -2147483358 -2147483359 -2147483360 -2147483337 -2147483338;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 25 ".e[0:24]"  0.54094201 0.54094201 0.54094201 0.54094201
		 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201
		 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201
		 0.54094201 0.54094201 0.54094201 0.54094201 0.54094201;
	setAttr -s 25 ".d[0:24]"  -2147483312 -2147483311 -2147483310 -2147483309 -2147483308 -2147483307 
		-2147483306 -2147483305 -2147483304 -2147483303 -2147483302 -2147483301 -2147483300 -2147483299 -2147483298 -2147483297 -2147483296 -2147483295 
		-2147483294 -2147483293 -2147483292 -2147483291 -2147483290 -2147483289 -2147483312;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[96:119]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38614;
	setAttr ".off" 7.141571044921875;
	setAttr ".d" 3;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.016690492630005 2.0999999344348907 -9.9999946355819702 ;
	setAttr ".cbx" -type "double3" 10.024846792221069 2.0999999344348907 9.9999982118606567 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 278 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 0 0.002513811 0 0 0.0058756024 0 0
		 0.0098490715 0 0 0.013350606 0 0 0.015520751 0 0 0.016198635 -7.5533986e-005 0 0.015453994
		 -0.0032174289 0 0.014059931 -0.0050694346 0 0.011119902 -0.0047261715 0 0.0068433285
		 -0.0022642016 0 0.0026007891 -6.300211e-005 0 0.00037217009 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00050878758 0 0 0 0 0 0.0017722249
		 0 0 0.0050948858 0 0 0.01026392 0 0 0.017550945 -0.00017526979 0 0.061479211 -0.033900797
		 0 0.037769556 -0.047247946 0 0.035387039 -0.060327888 0 0.033189893 -0.039510846
		 0 0.024429351 -0.016345739 0 0.0072608292 -0.001532197 0 5.793001e-005 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0017712116
		 0 0 0.0050930381 0 0 0.010261774 0 0 0.017549992 -0.00024287309 0 0.061485052 -0.033900797
		 0 0.037771225 -0.047247946 0 0.035388947 -0.060327888 0 0.033190966 -0.039510846
		 0 0.024060279 -0.016345739 0 0.0072608292 -0.0015666485 0 6.2308078e-005 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0025131255
		 0 0 0.0058748126 0 0 0.0098482668 0 0 0.01335004 0 0 0.015520543 0 0 0.016198784
		 -0.00066503882 0 0.015497178 -0.0032174289 0 0.013924032 -0.0050694346 0 0.010537326
		 -0.0045888424 0 0.0062475055 -0.0021992028 0 0.0022602975 -0.00013798475 0 0.0003390706
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00050833233
		 0 0 0.0022560558 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0016214848 0 0.00011706352 0 0 0 0
		 0 0 -0.0016214848 0 0.00011706352 0 0 0 0 0 0 0.11102915 0 0.27850783 -0.0022023916
		 0 -0.18982494 -0.0022023916 0 -0.18982494 0.11102915 0 0.2785095 -0.15591919 0 0.086319268
		 -0.15591919 0 0.086319268 0 0 0.0013904572 0 0 0 0 0 0 0 0 0.0013893843 0 0 0.01099658
		 0 0 0.010995269 -0.0039916635 0 0.00072708866 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003705591 0 0 0.0087978244 0 0 0.014348447
		 0 0 0.018456519 -0.00022067269 0 0.03686583 -0.023422867 0 0.032234609 -0.040624976
		 0 0.036363304 -0.04235673 0 0.0311203 -0.029101789 0 0.018192202 -0.01783818 0 0.0080522746
		 -0.019620955 0 0.013202548 -0.029834509 0 0.02438432 -0.027427614 0 0.028902769 -0.013519973
		 0 0.025414467 -6.6620298e-005 0 0.018879116 0 0 0.018346429 0 0 0.015415132 0 0 0.010362744
		 0 0 0.0049117506;
	setAttr ".tk[166:277]" 0 0 0.00038820505 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0031664968 0 0.00045646803 -0.012258351
		 0 0.0050645471 -0.010692 0 0.0086146593 -0.01521951 0 0.016123921 -0.012663305 0
		 0.019691765 -0.0050000101 0 0.01928103 0 0 0.017954886 0 0 0.017442167 0 0 0.014946938
		 0 0 0.010626316 0 0 0.0056596994 0 0 0.0014829934 0 0 2.2267874e-005 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0012860298 0 2.4562683e-005
		 -0.0063205957 0 0.0027733892 0 0 0.0029323623 0 0 0.0030422807 0 0 0.0028251335 0
		 0 0.0055427551 0 0 0.0047865808 0 0 0.0037078932 0 0 0.0022561888 0 0 0.0084311962
		 0 0 0.0066013336 0 0 0.0045641735 0 0 0.010951012 0 0 0.0081316382 0 0 0.0052178651
		 0 0 0.012608916 0 0 0.0091475993 0 0 0.0056481361 0 0 0.013170809 0 0 0.0095072091
		 0 0 0.0058080852 0 0 0.01255542 0 0 0.0091129988 0 0 0.0056320727 -0.00034485757
		 0 0.010826409 0 0 0.0080668926 0 0 0.005181402 -0.00082880259 0 0.0082287192 0 0
		 0.0063114315 0 0 0.0042640045 -0.00069075823 0 0.0052478462 0 0 0.0043435395 0 0
		 0.0032858104 -0.00012841821 0 0.0027074367 0 0 0.0026927441 0 0 0.002461236 0 0 0.00093562721
		 0 0 0.0013895768 0 0 0.0017582893 0 0 9.945035e-005 0 0 0.00053276122 0 0 0.0011982694
		 0 0 0 0 0 0.00010129809 0 0 0.00076761097 0 0 0 0 0 0 0 0 0.00048714131 0 0 0 0 0
		 0 0 0 0.00033540279 0 0 0 0 0 0 0 0 0.00026965141 0 0 0 0 0 0 0 0 0.00025996566 0
		 0 0 0 0 0 0 0 0.00025813282 0 0 0 0 0 0 0 0 0.00025369972 0 0 0 0 0 7.0184469e-006
		 0 0 0.0005402714 0 0 0 0 0 0.00018830597 0 0 0.00092793256 0 0 0.00016699731 0 0
		 0.00071790814 0 0 0.0014583655 0 0 0.0010907203 0 0 0.0016615869 0 0 0.0020807714;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 4 "vtx[30]" "vtx[54]" "vtx[121]" "vtx[124]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[129:130]" -type "float3"  -0.12761876 0 0.24756753 -0.12761876
		 0 0.24756789;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 3 "vtx[28]" "vtx[52]" "vtx[129:130]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[123:124]" -type "float3"  0.29246056 0 0.15762168 0.29246056
		 0 0.15762275;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 3 "vtx[32]" "vtx[56]" "vtx[123:124]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[115]" -type "float3" 0.24475753 0 0.037131071 ;
	setAttr ".tk[118]" -type "float3" 0.24475753 0 0.037131071 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 4 "vtx[34]" "vtx[58]" "vtx[115]" "vtx[118]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[117:118]" -type "float3"  0.25948167 0 -0.029987276
		 0.25948167 0 -0.029987276;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 3 "vtx[36]" "vtx[60]" "vtx[117:118]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[109]" -type "float3" 0.2080009 0 -0.21413171 ;
	setAttr ".tk[112]" -type "float3" 0.2080009 0 -0.21413171 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 4 "vtx[38]" "vtx[62]" "vtx[109]" "vtx[112]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[111:112]" -type "float3"  0.15499195 0 -0.24411881 0.15499195
		 0 -0.24411881;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 3 "vtx[40]" "vtx[64]" "vtx[111:112]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[103]" -type "float3" -0.12260926 0 -0.25191259 ;
	setAttr ".tk[106]" -type "float3" -0.12260926 0 -0.25191259 ;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 4 "vtx[42]" "vtx[66]" "vtx[103]" "vtx[106]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[105:106]" -type "float3"  -0.17454886 0 -0.2219255 -0.17454886
		 0 -0.2219255;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 3 "vtx[44]" "vtx[68]" "vtx[105:106]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[97]" -type "float3" -0.27496755 0 -0.029987365 ;
	setAttr ".tk[100]" -type "float3" -0.27496755 0 -0.029987365 ;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 4 "vtx[46]" "vtx[70]" "vtx[97]" "vtx[100]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[99:100]" -type "float3"  -0.27496755 0 0.029987723
		 -0.27496755 0 0.029987723;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 3 "vtx[24]" "vtx[48]" "vtx[99:100]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[107]" -type "float3" -0.17955822 0 0.21473038 ;
	setAttr ".tk[110]" -type "float3" -0.17955822 0 0.21472961 ;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 4 "vtx[26]" "vtx[50]" "vtx[107]" "vtx[110]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 254 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.020888746 -0.0021948367 0.010362163
		 0.027862877 -0.0036156923 -0.0031855404 0.030107439 -0.0045080185 -0.0012667775 0.032610476
		 -0.0045853704 -0.0024766624 0.033635125 -0.0037661195 -0.006131947 0.025554705 -0.0023828596
		 -0.0064358115 0.013508521 -0.00096012652 -0.0046837032 0.0012812316 -7.931143e-005
		 -0.0019249022 -0.0059827864 0 -5.2750111e-006 -0.0096847415 0 -1.4901161e-008 -0.012311935
		 0 0 -0.013242126 0 0 -0.012218207 0 0 -0.009452045 0 0 0.00038704276 0 0.0047493875
		 0.02781482 0 0.025871098 0.058000781 0 0.056042701 0.075959474 0 0.083202511 0.077336118
		 0 0.10063833 0.065991104 0 0.10643876 0.053906143 0 0.11002544 0.041009068 0 0.1060766
		 0.026169956 -4.5396388e-005 0.082895622 0.017970562 -0.00079746544 0.045178678 0.052027941
		 -0.0026373342 -0.021314681 0.088305831 -0.0084183887 -0.021554947 0.1431883 -0.012975633
		 -0.037457466 0.16263151 -0.032540686 0.023571014 0.13442335 -0.010128066 -0.042789936
		 0.072497129 -0.0054005161 -0.023306727 0.0085716844 0 -0.0051269531 -0.0013482571
		 0 0 -0.0073137283 0 0 -0.028483212 0 0.00024995208 -0.10932565 0 0.0020341575 -0.19692874
		 0 0.0030995226 -0.10209441 0 0.0018933117 -0.019638181 0 7.2717667e-005 -0.0048322678
		 0 0 0.0044803023 0 -6.7591667e-005 0.080960333 0 0.018057108 0.13845827 0 0.062653065
		 0.23109698 0 0.15997291 0.070296288 0 0.13652599 0.013136744 0 0.28581226 -0.0069605708
		 0 0.14921898 -0.028971791 0 0.10629854 0.0053784847 -5.8449805e-005 0.0139706 0.056898952
		 -0.0026373193 -0.024129421 0.10318804 -0.0084183738 -0.030456424 0.24799377 -0.012975611
		 -0.10014451 0.30821544 -0.032540679 -0.063506603 0.23922899 -0.010128066 -0.10547698
		 0.079222761 -0.0053993836 -0.027333736 0.011192739 0 -0.0066968203 -0.0015698671
		 0 0 -0.007314682 0 0 -0.028432906 0 0.0002489686 -0.10932314 0 0.0020341277 -0.19693792
		 0 0.0030997461 -0.1020931 0 0.0018933117 -0.019638062 0 7.2717667e-005 -0.0048322082
		 0 0 0.0046344399 0 -6.8306923e-005 0.080960333 0 0.018057108 0.13845827 0 0.062653065
		 0.23109698 0 0.15997291 0.070296288 0 0.13652599 0.013136744 0 0.28581226 -0.0069605708
		 0 0.14921898 -0.025594234 0 0.10427836 0.012942672 -6.67274e-005 0.0099880453 0.058759272
		 -0.0021948069 -0.012380809 0.067076564 -0.0036156625 -0.026643708 0.072458476 -0.0045079961
		 -0.026598126 0.073872179 -0.0045853481 -0.027156472 0.070637465 -0.0037660971 -0.028264105
		 0.062134665 -0.0023822784 -0.028317392 0.047973976 -0.0009227097 -0.025445819 0.029638469
		 -7.006526e-005 -0.018934786 0.012196213 0 -0.010867238 -0.0020880103 0 -0.0045364797
		 -0.010616362 0 -0.0010108501 -0.013243496 0 0 -0.012217045 0 0 -0.0094482005 0 0
		 0.00055509806 0 0.0048357248 0.028123558 0 0.026016861 0.057997867 0 0.056040436
		 0.075959474 0 0.083202511 0.077336118 0 0.10063833 0.065991104 0 0.10643876 0.055586636
		 0 0.11127293 0.047573358 0 0.10276151 0.04486376 -4.9822032e-005 0.071885735 0.050037622
		 -0.00081216544 0.026440458 -4.9304312e-005 0 7.2256429e-005 0 0 0 0 0 0 -0.0032333136
		 0 -0.0030899048 -0.0032333136 0 -0.0030899048 0 0 0 0 0 0 -0.60365951 0 0.014357646
		 -0.6036607 0 0.014357676 0 0 0 0 0 0 0.013880849 -0.0020101443 -0.00083744526 0.021299243
		 -0.0020101592 -0.0052745342 -0.078842998 0 0.0011779168 -0.04618448 0 0.00061358511
		 -0.015842259 0 0 -0.006999135 0 7.7843666e-005 0.024626672 0 0.0079456568 0.097940177
		 0 0.043115854 0.13082087 0 0.086914957 0.13996378 0 0.14207339 0.087493718 0 0.15512246
		 0.056282878 0 0.1930002 0.019374669 0 0.15704653 -0.00041288137 0 0.12831815 0.026578546
		 -0.00076129287 0.040988218 0.067203939 -0.0037981644 -0.019991264 0.10301793 -0.0075992569
		 -0.033396631 0.23826277 -0.0098141506 -0.10606474 0.24352098 -0.011522464 -0.1028657
		 0.23731339 -0.0095057189 -0.10664231 0.07774993 -0.0048915744 -0.028338611 0.027467757
		 -3.8966537e-005 -0.016536951 -0.0010355711 0 -0.0023233294 -0.01156503 0 -2.2649765e-006
		 -0.018716395 0 3.5822392e-005 -0.050447583 0 0.00071555376 -0.014661014 0 -0.00041663647
		 -0.0074058771 0 -0.0021682382 0.0090364218 0 -0.0085063577 0.038807899 -0.00037905574
		 -0.02218318 0.074911959 -0.0042191744 -0.029138207 0.1541236 -0.008148171 -0.061925828
		 0.14133275 -0.009332113 -0.049878478 0.14863455 -0.0088755488 -0.055941403 0.082951725
		 -0.0064672679 -0.025598347 0.068698227 -0.0036909729 -0.01469709 0.040918767 -0.0010943338
		 0.047358077 0.022677481 -9.3951821e-006 0.1213751 0.035447299 0 0.15109289 0.049558282
		 0 0.13877296 0.069953144 0 0.11701053 0.10092714 0 0.10928404 0.11773339 0 0.096590221
		 0.092220351 0 0.056568384 0.034258336 0 0.018139064 -0.0048180223 0 0.0011208653
		 -0.01418823 0 0 -0.022645175 0 7.6308846e-005 -0.030828416 0 0.00024661422 -0.024014473
		 0 0.00010387599 -0.0086853504 0 -0.0023139417 0.0027039349 0 -0.0068561733 0.021353871
		 0 -0.015187442 0.046072662 -0.00075914711 -0.025060654 0.0693257 -0.0032790527 -0.029288232
		 0.081291884 -0.0059343949 -0.026584446 0.085108995 -0.0071499348 -0.024353445 0.083844393
		 -0.0067942441 -0.02491799 0.076414585 -0.0050055757 -0.027116507;
	setAttr ".tk[166:253]" 0.065855622 -0.0030494332 -0.014073655 0.049907565 -0.001084201
		 0.035214141 0.039533615 -4.8525631e-005 0.099895298 0.045547187 0 0.13089961 0.060216635
		 0 0.13732964 0.07695061 0 0.12572813 0.096648946 0 0.11721796 0.097764656 0 0.094898045
		 0.076764002 0 0.061132312 0.034512073 0 0.02534467 -0.0011878312 0 0.0034560561 -0.011896253
		 0 0 -0.016187668 0 0 -0.017629445 0 0 -0.016387403 0 -1.7285347e-006 0.048753738
		 -0.0013138577 -0.011852257 0.036912531 -0.00056479126 -0.013133138 0.025493175 -9.483844e-005
		 -0.013268419 0.054391921 -0.0021423027 -0.024177685 0.040673092 -0.00093029439 -0.020514786
		 0.027643569 -0.00017654896 -0.015833452 0.015326582 0 -0.0091213174 0.059212267 -0.0026676506
		 -0.025509655 0.044153124 -0.0011633709 -0.022088781 0.029427402 -0.00023052841 -0.016745202
		 0.060624704 -0.0027103499 -0.026195914 0.045226917 -0.0011814907 -0.022663742 0.03000921
		 -0.00023467094 -0.017077804 0.058281645 -0.0022240654 -0.026600361 0.04389371 -0.00096741319
		 -0.022661343 0.029521681 -0.00018725544 -0.016962275 0.051781479 -0.0014158264 -0.02571395
		 0.039878488 -0.00061024725 -0.021591008 0.027712129 -0.00010243803 -0.016230077 0.041517504
		 -0.0005883351 -0.02288571 0.033180393 -0.00021082908 -0.019301847 0.024318418 -1.3642013e-005
		 -0.014669761 0.028583273 -6.0252845e-005 -0.018031061 0.025505483 -1.0579824e-005
		 -0.015995622 0.020258136 0 -0.012503229 0.015943348 0 -0.012040466 0.017721325 0
		 -0.012081504 0.016534187 0 -0.01051338 0.0045709312 0 -0.0066657215 0.0099976659
		 0 -0.0082093924 0.01257056 0 -0.0084014535 -0.0039004385 0 -0.0026459098 0.0036927462
		 0 -0.0049850568 0.0092301518 0 -0.0065853558 -0.0078072548 0 -0.00070374459 -0.00080880523
		 0 -0.0024955943 0.0067920685 0 -0.0051915087 -0.0082852542 0 -1.4230609e-005 -0.0026636422
		 0 -0.0011793822 0.0051761568 0 -0.0041592121 -0.0065123737 0 2.2947788e-006 -0.002793476
		 0 -0.00043618679 0.0043643117 0 -0.0032494217 0.0012722313 0 0.005072087 0.0015168339
		 0 0.0036463886 0.0054325536 0 -0.001090534 0.018655762 0 0.020553082 0.0099636689
		 0 0.012523919 0.007752616 0 0.0020689666 0.037284594 0 0.041510612 0.019083239 0
		 0.023822963 0.010273676 0 0.0057567507 0.049902819 0 0.061338663 0.026362013 0 0.034466118
		 0.0131949 0 0.0088956803 0.053138621 0 0.07429722 0.030076012 0 0.040927976 0.015919708
		 0 0.010160729 0.048402816 0 0.077161878 0.030448809 0 0.041047081 0.017703913 0 0.009286955
		 0.045199901 0 0.076902121 0.031380102 0 0.038650662 0.019502215 0 0.007418938 0.042494565
		 0 0.06618306 0.032059982 0 0.030296177 0.021284506 0 0.0033949912 0.041595638 -4.4889748e-005
		 0.042593874 0.032799602 -1.8432736e-005 0.016260266 0.022764817 0 -0.0023854114 0.044181406
		 -0.00051406771 0.013343139 0.034034908 -0.00022106618 -0.00054206699 0.023819178
		 -2.8043985e-005 -0.0087835118;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:287]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.6286163330078125 -0.32540678977966309 0.52997016906738281 ;
	setAttr ".ps" -type "double2" 180 4.8508138656616211 ;
	setAttr ".r" 95.910079956054687;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:287]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.6286163330078125 -0.32540512084960938 0.52997016906738281 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 95.910079956054687 76.258998870849609 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:539]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 1080 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.083555728 -1.073864937 0.090193897
		 -1.099270821 0.0032893121 -1.15596938 -0.033675343 -1.10564744 0.10212117 -1.11824346
		 -0.0017744601 -1.22387028 0.1175684 -1.13338184 0.018490225 -1.24983048 0.13619855
		 -1.1432271 0.068824321 -1.27276707 0.15743616 -1.14646411 0.14922109 -1.24593997
		 0.17929798 -1.14295864 0.25096455 -1.26124549 0.20053065 -1.13313544 0.30433887 -1.24917603
		 0.21770236 -1.1177516 0.32674533 -1.21085858 0.23049501 -1.098464012 0.31664127 -1.14770341
		 0.23823592 -1.075861096 0.35540688 -1.099701047 0.24080023 -1.05115366 0.37888008
		 -1.050612688 0.2378718 -1.026085615 0.35176533 -1.0005774498 0.22972897 -1.0026586056
		 0.30487633 -0.94944924 0.21593544 -0.9816187 0.29242557 -0.88173848 0.19578403 -0.96191585
		 0.26697227 -0.84207302 0.17241377 -0.94651359 0.20960426 -0.82794988 0.14965025 -0.93792742
		 0.13894966 -0.83376366 0.12944832 -0.93785 0.057906181 -0.79252434 0.11243254 -0.94622409
		 0.037868053 -0.80552781 0.098444879 -0.96116668 0.022328526 -0.8183583 0.088163406
		 -0.98205113 0.018433124 -0.91817957 0.08273986 -1.0099816322 -0.021163732 -0.98029476
		 0.081182897 -1.042350292 -0.042101771 -1.048511982 -1.54393744 -0.25068802 -1.44175231
		 -0.36528152 -0.01796332 -1.23604894 -0.070539981 -1.38090873 -0.071686 -1.38177085
		 -1.7242167 -0.60659546 0.65478551 -0.37086827 0.2505596 -1.26155019 0.45034879 -1.41644859
		 0.45034879 -1.41644859 0.64583176 -0.50657779 0.4821806 -0.23729116 0.3554067 -1.099701047
		 0.55205512 -1.04843688 0.55205536 -1.04843688 0.27960819 -0.22269887 0.066308469
		 0.030448962 0.29242557 -0.88173848 0.38555831 -0.70842814 0.38555831 -0.70842814
		 -0.31230882 0.010348506 -0.55769265 0.18662447 0.057906181 -0.79252434 -0.050867945
		 -0.67570782 -0.050867945 -0.67570782 -0.96513104 0.023297124 -1.12038994 0.072663017
		 -0.02168563 -0.9806872 -0.18868546 -1.05122602 -0.18868546 -1.05122602 -1.4440155
		 -0.22516584 -1.50948191 -0.28397965 -1.43014574 -0.0083989203 -1.35787416 0.040726431
		 -1.62914431 -0.36995029 -1.53242958 -0.068473607 -1.7021277 -0.40975201 -1.60520434
		 -0.10012034 -1.75082898 -0.42429185 -1.6666832 -0.11652066 0.65552783 -0.38724804
		 -1.69359124 -0.10187997 0.6582576 -0.39679587 0.682531 -0.10408272 0.62127101 -0.37728918
		 0.6350956 -0.085526109 0.54846269 -0.33602858 0.56246102 -0.050532341 0.44343007
		 -0.27174902 0.41535795 -0.15061797 0.37817973 -0.21762335 0.3890754 0.045834661 0.34352165
		 -0.0064500016 0.29783815 0.093234912 0.17357099 -0.10631561 0.18623364 0.14164177
		 0.03286925 -0.049424902 0.058667719 0.18957654 -0.08363235 0.020898715 -0.058627874
		 0.24473676 -0.21905272 0.065843388 -0.19297552 0.28427362 -0.3839263 0.088909268
		 -0.34594271 0.30785003 -0.55563557 0.088744462 -0.50256699 0.31246221 -0.72689044
		 0.12198146 -0.65325373 0.32624748 -0.86494678 0.11353135 -0.78732693 0.31606016 -0.98755807
		 0.078614533 -0.90943289 0.28541002 -1.091651559 -0.0061572669 -1.019990325 0.23053852
		 -1.2299155 -0.072823241 -1.14827752 0.17345414 -1.35096359 -0.15244989 -1.26334786
		 0.10547078 0.16139108 -1.05077374 -1.21102667 -0.33907866 -1.35842538 0.42075145
		 -1.080603123 -0.41597342 -1.45394421 0.41278231 -1.54838073 0.40727174 -1.64142501
		 0.40392852 0.66681421 0.40286076 0.57543051 0.40453327 0.48314214 0.40846264 0.38949704
		 0.414258 0.29522556 0.4225899 0.19892702 0.43197393 0.10044721 0.4413687 -0.00022757053
		 0.45070606 -0.1030632 0.45995569 -0.20809358 0.4683283 -0.31437498 0.47479975 -0.4217222
		 0.47922862 -0.53015852 0.48134536 -0.63865066 0.48036462 -0.74579769 0.4767046 -0.85184902
		 0.47069049 -0.95709932 0.46174037 -1.060457706 0.45110363 -1.16169715 0.44051135
		 -1.35368967 -0.28845483 -0.84415269 0.040618293 -0.13489401 -0.0087180212 0.41622257
		 -0.29024512 0.7156291 -0.5583064 -1.7006712 -0.58202821 0.38773406 -0.034163229 0.52572691
		 0.079859957 0.59903514 0.051386211 0.65856147 0.035257202 -1.69212818 0.034019019
		 -1.63518548 0.034301307 -1.56861019 0.047642257 -1.49170852 0.073607236 -1.40436149
		 0.11100005 -1.32188749 0.15221694 -1.22579598 0.20541656 -1.11639881 0.26303068 -0.99781036
		 0.31089732 -0.88570881 0.35394719 -0.7655201 0.3790158 -0.63731533 0.38932899 -0.4980734
		 0.38109231 -0.35554501 0.37252086 -0.21430612 0.34997138 -0.083212525 0.31673816
		 0.035026312 0.27595383 0.15340051 0.23683165 0.26022595 0.19618176 0.35476017 0.15624593
		 0.36428082 0.22793311 0.4448328 0.20023948 0.51952851 0.17797585 0.58971334 0.16377744
		 0.65963614 0.15874012 -1.66912258 0.16304441 -1.59516168 0.17566721 -1.51624262 0.19593319
		 -1.43168998 0.22203737 -1.34037161 0.25652295 -1.24236476 0.30011803 -1.13747406
		 0.3458429 -1.027622938 0.38556701 -0.91272444 0.41495758 -0.79349071 0.43480295 -0.67051947
		 0.44610798 -0.54324675 0.44600344 -0.41251567 0.43441159 -0.28103071 0.41365731 -0.15379679
		 0.38704294 -0.035141319 0.35861635 0.075852156 0.32698983 0.17982176 0.29313928 0.27597696
		 0.25943857 -1.40736437 0.18833992 -1.26414919 0.3713088 -1.38282299 0.29859507 -1.23754394
		 0.48866403 -1.49570537 0.16799098 -1.47478998 0.28430235 -1.57985437 0.15258165 -1.56409883
		 0.27381039 -1.66017151 0.14314716 -1.65079665 0.26745272 0.66179502 0.14011438 0.6642772
		 0.2654705 0.58456194 0.14411001 0.57994151 0.26832986 0.50659239 0.15469174 0.49460506
		 0.27554333 0.42537576 0.17144367 0.40704077 0.28679752 0.34039879 0.19285518 0.3174426
		 0.30170608 0.24999374 0.21736893 0.22423264 0.31874359 0.15360346 0.24311104 0.1270881
		 0.3365103 0.050881326 0.26877007 0.025558114 0.35408628 -0.057434052 0.29287401 -0.079890102
		 0.37079287 -0.17170626 0.31493583 -0.1895172 0.38614309 -0.29158711 0.33492973 -0.30230528
		 0.39927953 -0.41458252 0.35017255 -0.41717306 0.40885556 -0.53781319 0.35878357 -0.53290427
		 0.41400027 -0.65911973 0.35876599 -0.64795661 0.41333091 -0.7772817 0.34982315 -0.76099652
		 0.40680027 -0.89277488 0.33381316 -0.87210947 0.39540297 -1.0048834085 0.31023088
		 -0.98102689 0.37887567;
	setAttr ".uvtk[250:499]" -1.11265659 0.27991709 -1.086686254 0.35861802 -1.21607685
		 0.24683577 -1.18889415 0.33709395 -1.1116972 0.44051135 -1.1116972 -0.3290199 -1.16169715
		 -0.3290199 -1.26102662 -0.33907866 -1.26102662 0.43045259 -1.21102667 0.43045259
		 -1.13889408 0.33709395 -1.13889408 0.50896895 -1.18889415 0.50896895 -1.28754401
		 0.48866403 -1.28754401 0.31678903 -1.23754394 0.31678903 -1.1660769 0.24683574 -1.1660769
		 0.4030858 -1.21607685 0.4030858 -1.31414914 0.3713088 -1.31414914 0.21505871 -1.26414919
		 0.21505874 -0.93060303 -0.41597342 -0.88060308 -0.41597342 -0.73060304 -0.41597342
		 -0.68060303 -0.41597342 -0.53060305 -0.41597342 -0.48060304 -0.41597342 -0.33060306
		 -0.41597342 -0.28060305 -0.41597342 -0.13060305 -0.41597342 -0.080603063 -0.41597342
		 0.069397002 -0.41597342 0.1193969 -0.41597342 0.26939696 -0.41597342 0.31939697 -0.41597342
		 0.46939695 -0.41597342 0.51939696 -0.41500008 0.669397 -0.41500008 -1.68060303 -0.41597342
		 -1.53060305 -0.41597342 -1.48060298 -0.41597342 -1.33060312 -0.41597342 -1.28060305
		 -0.41597342 -1.13060308 -0.41597342 -1.010457754 0.45110363 -1.010457754 -0.31842762
		 -1.060457706 -0.31842762 -1.036686182 0.35861802 -1.036686182 0.53049302 -1.086686254
		 0.53049302 -1.062656641 0.27991709 -1.062656641 0.43616715 -1.11265659 0.43616715
		 -1.24236476 0.15636802 -1.19236469 0.15636802 -1.19236469 0.30011803 -0.90709937
		 0.46174037 -0.90709937 -0.30779088 -0.95709932 -0.30779088 -0.93102694 0.37887567
		 -0.93102694 0.55075061 -0.98102689 0.55075061 -0.95488346 0.31023088 -0.95488346
		 0.46648094 -1.0048834085 0.46648094 -1.13747406 0.20209286 -1.087474108 0.20209286
		 -1.087474108 0.3458429 -0.80184901 0.47069049 -0.80184901 -0.29884076 -0.85184902
		 -0.29884076 -0.82210946 0.39540297 -0.82210946 0.56727791 -0.87210947 0.56727791
		 -0.84277487 0.33381316 -0.84277487 0.49006322 -0.89277488 0.49006322 -1.027622938
		 0.24181697 -0.97762299 0.24181697 -0.97762299 0.38556701 -0.69579768 0.4767046 -0.69579768
		 -0.29282665 -0.74579769 -0.29282665 -0.71099651 0.40680027 -0.71099651 0.57867527
		 -0.76099652 0.57867527 -0.72728169 0.34982315 -0.72728169 0.50607324 -0.7772817 0.50607324
		 -0.91272444 0.27120754 -0.86272442 0.27120754 -0.86272442 0.41495758 -0.58865064
		 0.48036462 -0.58865064 -0.28916663 -0.63865066 -0.28916663 -0.5979566 0.41333091
		 -0.5979566 0.58520591 -0.64795661 0.58520591 -0.60911971 0.35876599 -0.60911971 0.51501608
		 -0.65911973 0.51501608 -0.79349071 0.29105291 -0.7434907 0.29105291 -0.7434907 0.43480295
		 -0.48015851 0.48134536 -0.48015851 -0.28818589 -0.53015852 -0.28818589 -0.48290426
		 0.41400027 -0.48290426 0.58587527 -0.53290427 0.58587527 -0.48781317 0.35878357 -0.48781317
		 0.51503366 -0.53781319 0.51503366 -0.67051947 0.30235794 -0.62051946 0.30235794 -0.62051946
		 0.44610798 -0.37172219 0.47922862 -0.37172219 -0.29030263 -0.4217222 -0.29030263
		 -0.36717305 0.40885556 -0.36717305 0.58073056 -0.41717306 0.58073056 -0.36458251
		 0.35017255 -0.36458251 0.50642264 -0.41458252 0.50642264 -0.54324675 0.3022534 -0.49324673
		 0.3022534 -0.49324673 0.44600344 -0.26437497 0.47479975 -0.26437497 -0.2947315 -0.31437498
		 -0.2947315 -0.25230527 0.39927953 -0.25230527 0.57115448 -0.30230528 0.57115448 -0.2415871
		 0.33492973 -0.2415871 0.49117979 -0.29158711 0.49117979 -0.41251567 0.29066154 -0.36251566
		 0.29066154 -0.36251566 0.43441159 -0.1580936 0.4683283 -0.1580936 -0.30120295 -0.20809358
		 -0.30120295 -0.13951722 0.38614309 -0.13951722 0.55801809 -0.1895172 0.55801809 -0.12170628
		 0.31493583 -0.12170628 0.47118589 -0.17170626 0.47118589 -0.28103071 0.26990727 -0.2310307
		 0.26990727 -0.2310307 0.41365731 -0.053063214 0.45995569 -0.053063214 -0.30957556
		 -0.1030632 -0.30957556 -0.02989012 0.37079287 -0.02989012 0.54266787 -0.079890102
		 0.54266787 -0.0074340701 0.29287401 -0.0074340701 0.44912407 -0.057434052 0.44912407
		 -0.15379679 0.2432929 -0.10379681 0.2432929 -0.10379681 0.38704294 0.049772471 0.45070606
		 0.049772471 -0.31882519 -0.00022757053 -0.31882519 0.075558156 0.35408628 0.075558156
		 0.52596128 0.025558114 0.52596128 0.10088131 0.26877007 0.10088131 0.42502013 0.050881326
		 0.42502013 -0.035141319 0.21486634 0.014858663 0.21486634 0.014858663 0.35861635
		 0.15044716 0.4413687 0.15044716 -0.32816255 0.10044721 -0.32816255 0.17708805 0.3365103
		 0.17708805 0.5083853 0.1270881 0.5083853 0.20360342 0.24311107 0.20360342 0.3993611
		 0.15360346 0.3993611 0.075852156 0.18323979 0.1258522 0.18323982 0.1258522 0.32698983
		 0.248927 0.43197393 0.248927 -0.33755732 0.19892702 -0.33755732 0.27423263 0.31874359
		 0.27423263 0.49061856 0.22423264 0.49061856 0.29999375 0.21736893 0.29999375 0.37361896
		 0.24999374 0.37361896 0.17982176 0.14938924 0.22982171 0.14938924 0.22982171 0.29313928
		 0.34522557 0.4225899 0.34522557 -0.34694135 0.29522556 -0.34694135 0.36744261 0.30170608
		 0.36744261 0.47358114 0.3174426 0.47358114 0.3903988 0.19285521 0.3903988 0.34910521
		 0.34039879 0.34910521 0.27597696 0.11568853 0.32597697 0.11568853 0.32597697 0.25943857
		 0.43949705 0.414258 0.43949705 -0.35527325 0.38949704 -0.35527325 0.45704079 0.28679752
		 0.45704079 0.45867258 0.40704077 0.45867258 0.47537577 0.17144363 0.47537577 0.32769367
		 0.42537576 0.32769367 0.36428082 0.084183082 0.41428083 0.084183097 0.41428083 0.22793311
		 0.53314209 0.40846264 0.53314209 -0.36106861 0.48314214 -0.36106861 0.54460502 0.27554333
		 0.54460502 0.44741839 0.49460506 0.44741839 0.55659235 0.15469174 0.55659235 0.31094182
		 0.50659239 0.31094182 0.4448328 0.056489438 0.49483281 0.056489438 0.49483281 0.20023949
		 0.62543046 0.40453327 0.62543046 -0.36499798 0.57543051 -0.36499798 0.62994146 0.26832986
		 0.62994146 0.44020492 0.57994151 0.44020492 0.6345619 0.14411004 0.6345619 0.30036008
		 0.58456194 0.30036008 0.51952851 0.034225825 0.56952846 0.034225825 0.56952846 0.1787571
		 -1.68318582 0.40286076;
	setAttr ".uvtk[500:749]" -1.68318582 -0.36667049 0.66681421 -0.36667049 -1.68572283
		 0.2654705 -1.68572283 0.43734556 0.6642772 0.43734556 -1.688205 0.14011435 -1.688205
		 0.29636443 0.66179502 0.29636443 0.58971334 0.020027401 0.63971329 0.020027416 0.63971329
		 0.16377743 -1.59142494 0.40392852 -1.59142494 -0.36560273 -1.64142501 -0.36560273
		 -1.60079658 0.26745272 -1.60079658 0.43932778 -1.65079665 0.43932778 -1.61017144
		 0.14314719 -1.61017144 0.29939723 -1.66017151 0.29939723 0.65963614 0.014990116 -1.69036388
		 0.014990078 -1.69036388 0.15874012 -1.49838066 0.40727174 -1.49838066 -0.36225951
		 -1.54838073 -0.36225951 -1.51409888 0.27381039 -1.51409888 0.44568545 -1.56409883
		 0.44568545 -1.5298543 0.15258163 -1.5298543 0.30883169 -1.57985437 0.30883169 -1.66912258
		 0.019294383 -1.61912251 0.019294383 -1.61912251 0.16304438 -1.40394425 0.41278231
		 -1.40394425 -0.35674894 -1.45394421 -0.35674894 -1.42479002 0.28430235 -1.42479002
		 0.45617741 -1.47478998 0.45617741 -1.44570541 0.16799101 -1.44570541 0.32424101 -1.49570537
		 0.32424101 -1.59516168 0.031917203 -1.54516172 0.031917218 -1.54516172 0.17566726
		 -1.30842543 0.42075145 -1.30842543 -0.3487798 -1.35842538 -0.3487798 -1.33282292
		 0.29859507 -1.33282292 0.47047013 -1.38282299 0.47047013 -1.3573643 0.1883399 -1.3573643
		 0.34458992 -1.40736437 0.34458992 -1.51624262 0.052183121 -1.46624267 0.052183121
		 -1.46624267 0.19593316 -1.43168998 0.078287333 -1.38169003 0.078287378 -1.38169003
		 0.22203736 -1.34037161 0.11277296 -1.29037154 0.11277296 -1.29037154 0.25652298 0.30476016
		 0.15624596 0.30476016 0.0039021829 0.35476017 0.0039021829 0.43773407 -0.034163229
		 0.43773407 0.1181805 0.38773406 0.11818053 0.21022603 0.19618176 0.21022603 0.043838024
		 0.26022595 0.043838024 0.10340047 0.23683168 0.10340047 0.08448793 0.15340051 0.08448793
		 -0.01497367 0.27595386 -0.01497367 0.12361009 0.035026312 0.12361009 -0.13321251
		 0.31673816 -0.13321251 0.16439441 -0.083212525 0.16439441 -0.26430613 0.34997135
		 -0.26430613 0.19762763 -0.21430612 0.19762763 -0.40554503 0.37252086 -0.40554503
		 0.22017714 -0.35554501 0.22017714 -0.54807341 0.38109234 -0.54807341 0.22874859 -0.4980734
		 0.22874859 -0.68731534 0.38932896 -0.68731534 0.23698524 -0.63731533 0.23698524 -0.81552011
		 0.37901583 -0.81552011 0.22667208 -0.7655201 0.22667208 -0.93570882 0.35394719 -0.93570882
		 0.20160344 -0.88570881 0.20160344 -1.047810316 0.31089729 -1.047810316 0.15855357
		 -0.99781036 0.15855357 -1.16639876 0.26303065 -1.16639876 0.11068691 -1.11639881
		 0.11068691 -1.27579594 0.20541659 -1.27579594 0.05307281 -1.22579598 0.05307281 -1.37188745
		 0.1522169 -1.37188745 -0.00012685265 -1.32188749 -0.00012685265 -1.45436144 0.11100009
		 -1.45436144 -0.041343689 -1.40436149 -0.041343689 -1.54170847 0.073607206 -1.54170847
		 -0.078736544 -1.49170852 -0.078736544 -1.61861014 0.047642227 -1.61861014 -0.10470152
		 -1.56861019 -0.10470152 -1.68518555 0.034301307 -1.68518555 -0.11804248 -1.63518548
		 -0.11804248 0.65787184 0.034018997 0.65787184 -0.11832477 -1.69212818 -0.11832477
		 0.60856164 0.035257194 0.60856164 -0.11708654 0.65856147 -0.11708654 0.54903519 0.051386226
		 0.54903519 -0.10095751 0.59903514 -0.10095751 0.4757269 0.079859957 0.4757269 -0.072483778
		 0.52572691 -0.072483778 0.33907539 0.045834668 0.33907539 -0.10494675 0.3890754 -0.10494675
		 0.46535796 -0.15061797 0.46535796 0.00016343035 0.41535795 0.00016343221 0.2478382
		 0.093234882 0.2478382 -0.057546508 0.29783815 -0.057546508 0.13623363 0.1416418 0.13623363
		 -0.0091395834 0.18623364 -0.0091395834 0.0086677372 0.18957657 0.0086677372 0.038795166
		 0.058667719 0.038795166 -0.10862786 0.24473676 -0.10862786 0.093955383 -0.058627874
		 0.093955383 -0.24297552 0.28427362 -0.24297552 0.13349222 -0.19297552 0.13349222
		 -0.39594272 0.30785006 -0.39594272 0.15706867 -0.34594271 0.15706867 -0.55256701
		 0.31246218 -0.55256701 0.16168082 -0.50256699 0.16168082 -0.70325375 0.32624748 -0.70325375
		 0.17546612 -0.65325373 0.17546611 -0.83732694 0.31606016 -0.83732694 0.16527879 -0.78732693
		 0.16527879 -0.9594329 0.28541002 -0.9594329 0.13462865 -0.90943289 0.13462865 -1.069990277
		 0.23053855 -1.069990277 0.079757154 -1.019990325 0.079757154 -1.19827759 0.17345414
		 -1.19827759 0.022672765 -1.14827752 0.022672765 -1.31334794 0.10547078 -1.31334794
		 -0.045310631 -1.26334786 -0.045310631 -1.40787411 0.040726431 -1.40787411 -0.11005497
		 -1.35787416 -0.11005498 -1.48014569 -0.0083989203 -1.48014569 -0.1591803 -1.43014574
		 -0.15918028 -1.58242953 -0.068473607 -1.58242953 -0.21925497 -1.53242958 -0.21925497
		 -1.65520442 -0.10012032 -1.65520442 -0.2509017 -1.60520434 -0.2509017 -1.71668327
		 -0.11652066 -1.71668327 -0.26730204 -1.6666832 -0.26730204 0.65640879 -0.10187997
		 0.65640879 -0.25266135 -1.69359124 -0.25266135 0.63253117 -0.10408272 0.63253117
		 -0.2548641 0.682531 -0.2548641 0.58509558 -0.085526109 0.58509558 -0.2363075 0.6350956
		 -0.2363075 0.51246101 -0.050532341 0.51246101 -0.20131375 0.56246102 -0.20131375
		 0.42817974 -0.21762335 0.42817974 -0.061373286 0.37817973 -0.061373286 0.2935217
		 -0.0064500016 0.2935217 -0.16270004 0.34352165 -0.16270004 0.49343008 -0.27174902
		 0.49343008 -0.11549895 0.44343007 -0.11549895 0.5984627 -0.33602858 0.5984627 -0.17977853
		 0.54846269 -0.17977853 0.67127097 -0.37728918 0.67127097 -0.22103913 0.62127101 -0.22103913
		 0.70825744 -0.39679587 0.70825744 -0.24054582 0.6582576 -0.24054582 -1.69447219 -0.38724804
		 -1.69447219 -0.23099799 0.65552783 -0.23099799 -1.70082891 -0.42429185 -1.70082891
		 -0.26804179 -1.75082898 -0.26804179 -1.65212774 -0.40975201 -1.65212774 -0.25350195
		 -1.7021277 -0.25350195 -1.57914436 -0.36995029 -1.57914436 -0.21370025 -1.62914431
		 -0.21370025 -1.45948184 -0.28397965 -1.45948184 -0.12772961 -1.50948191 -0.12772961
		 -1.39401543 -0.22516584 -1.39401543 -0.068915777 -1.4440155 -0.068915762 -1.30096364
		 -0.15244989 -1.30096364 0.0038001579 -1.35096359 0.0038001356 -1.17991543 -0.072823241
		 -1.17991543 0.083426856;
	setAttr ".uvtk[750:999]" -1.2299155 0.083426856 -1.041651607 -0.0061572669
		 -1.041651607 0.15009277 -1.091651559 0.15009277 -0.93755805 0.078614533 -0.93755805
		 0.23486458 -0.98755807 0.23486458 -0.81494677 0.11353135 -0.81494677 0.26978141 -0.86494678
		 0.26978141 -0.67689043 0.12198144 -0.67689043 0.2782315 -0.72689044 0.2782315 -0.50563556
		 0.088744462 -0.50563556 0.24499452 -0.55563557 0.24499452 -0.33392629 0.088909268
		 -0.33392629 0.24515931 -0.3839263 0.24515931 -0.16905272 0.065843388 -0.16905272
		 0.22209345 -0.21905272 0.22209345 -0.033632368 0.020898707 -0.033632368 0.17714876
		 -0.08363235 0.17714874 0.082869232 -0.049424902 0.082869232 0.10682518 0.03286925
		 0.1068252 0.223571 -0.10631561 0.223571 0.049934439 0.17357099 0.049934447 -0.071686
		 -1.38177085 -1.7920506 -0.69049323 -1.84205067 -0.69049323 -1.7242167 -0.42247087
		 -1.77421677 -0.42247087 0.05263558 -1.28494549 0.05263558 -1.28494549 -0.070539981
		 -1.38090873 -0.070539981 -1.38090873 -0.070539981 -1.38090873 0.068824321 -1.27276707
		 0.068824321 -1.27276707 0.068824321 -1.27276707 0.068824321 -1.27276707 -0.01796332
		 -1.23604894 -1.61952519 -0.35646051 -1.66952515 -0.35646051 -1.66952515 -0.5405851
		 -1.7006712 -0.39790362 -1.75067127 -0.39790362 -1.75067127 -0.58202821 -0.0017744601
		 -1.22387028 -0.0017744601 -1.22387028 -0.0017744601 -1.22387028 -0.0017744601 -1.22387028
		 0.018490225 -1.24983048 0.018490225 -1.24983048 0.018490225 -1.24983048 0.45034879
		 -1.41644859 0.91269624 -0.73828125 0.86269629 -0.73730814 0.64583176 -0.3224532 0.59583175
		 -0.3224532 0.32674545 -1.21085835 0.32674545 -1.21085835 0.45034879 -1.41644859 0.45034879
		 -1.41644859 0.45034879 -1.41644859 0.32674533 -1.21085858 0.32674533 -1.21085858
		 0.32674533 -1.21085858 0.32674533 -1.21085858 0.2505596 -1.26155019 0.74298072 -0.3908872
		 0.69298077 -0.3908872 0.69298077 -0.57501179 0.7156291 -0.37418181 0.66562915 -0.37418181
		 0.66562915 -0.5583064 0.25096455 -1.26124549 0.25096455 -1.26124549 0.25096455 -1.26124549
		 0.25096455 -1.26124549 0.30433887 -1.24917603 0.30433887 -1.24917603 0.30433887 -1.24917603
		 0.55205536 -1.04843688 0.65000004 -0.24049234 0.60000008 -0.24049234 0.27960819 -0.038574271
		 0.22960818 -0.038574271 0.3517651 -1.0005774498 0.3517651 -1.0005774498 0.55205512
		 -1.04843688 0.55205512 -1.04843688 0.55205512 -1.04843688 0.35176533 -1.0005774498
		 0.35176533 -1.0005774498 0.35176533 -1.0005774498 0.35176533 -1.0005774498 0.3554067
		 -1.099701047 0.48452437 -0.172391 0.43452436 -0.172391 0.43452436 -0.35651559 0.41622257
		 -0.10612053 0.36622262 -0.10612053 0.36622262 -0.29024512 0.35540688 -1.099701047
		 0.35540688 -1.099701047 0.35540688 -1.099701047 0.35540688 -1.099701047 0.37888008
		 -1.050612688 0.37888008 -1.050612688 0.37888008 -1.050612688 0.38555831 -0.70842814
		 0.025229096 0.21851932 -0.024770901 0.21851932 -0.31230882 0.19447309 -0.36230883
		 0.19447309 0.20960426 -0.82794988 0.20960426 -0.82794988 0.38555831 -0.70842814 0.38555831
		 -0.70842814 0.38555831 -0.70842814 0.20960426 -0.82794988 0.20960426 -0.82794988
		 0.20960426 -0.82794988 0.20960426 -0.82794988 0.29242557 -0.88173848 -0.00050035119
		 0.12185843 -0.050500333 0.12185843 -0.050500333 -0.062266178 -0.13489401 0.17540658
		 -0.18489401 0.17540658 -0.18489401 -0.0087180212 0.29242557 -0.88173848 0.29242557
		 -0.88173848 0.29242557 -0.88173848 0.29242557 -0.88173848 0.26697227 -0.84207302
		 0.26697227 -0.84207302 0.26697227 -0.84207302 -0.050867945 -0.67570782 -0.96394634
		 0.2626918 -1.013946414 0.2626918 -0.96513104 0.20742172 -1.015130997 0.20742172 0.022328526
		 -0.8183583 0.022328526 -0.8183583 -0.050867945 -0.67570782 -0.050867945 -0.67570782
		 -0.050867945 -0.67570782 0.022328526 -0.8183583 0.022328526 -0.8183583 0.022328526
		 -0.8183583 0.022328526 -0.8183583 0.057906181 -0.79252434 -0.71710128 0.24229753
		 -0.76710129 0.24229753 -0.76710129 0.058172934 -0.84415269 0.22474289 -0.8941527
		 0.22474289 -0.8941527 0.040618293 0.057906181 -0.79252434 0.057906181 -0.79252434
		 0.057906181 -0.79252434 0.057906181 -0.79252434 0.037868053 -0.80552781 0.037868053
		 -0.80552781 0.037868053 -0.80552781 -0.18868546 -1.05122602 -1.54999995 -0.24425781
		 -1.60000002 -0.24425781 -1.44175231 -0.18115693 -1.49175239 -0.18115693 -0.034427911
		 -1.10619426 -0.034427911 -1.10619426 -0.18868546 -1.05122602 -0.18868546 -1.05122602
		 -0.18868546 -1.05122602 -0.033675343 -1.10564744 -0.033675343 -1.10564744 -0.033675343
		 -1.10564744 -0.033675343 -1.10564744 -0.02168563 -0.9806872 -1.22455025 -0.011722326
		 -1.2745502 -0.011722326 -1.2745502 -0.19584692 -1.35368967 -0.10433025 -1.40368962
		 -0.10433025 -1.40368962 -0.28845483 -0.021163732 -0.98029476 -0.021163732 -0.98029476
		 -0.021163732 -0.98029476 -0.021163732 -0.98029476 -0.042101771 -1.048511982 -0.042101771
		 -1.048511982 -0.042101771 -1.048511982 0.16139108 -1.05077374 0.16139108 -1.05077374
		 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374
		 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374
		 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374
		 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374
		 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374 0.16139108 -1.05077374
		 0.16139108 -1.05077374 0.081182897 -1.042350292 0.081182897 -1.042350292 0.081182897
		 -1.042350292 0.08273986 -1.0099816322 0.08273986 -1.0099816322 0.08273986 -1.0099816322
		 0.088163406 -0.98205113 0.088163406 -0.98205113 0.088163406 -0.98205113 0.098444879
		 -0.96116668 0.098444879 -0.96116668 0.098444879 -0.96116668 0.11243254 -0.94622409
		 0.11243254 -0.94622409 0.11243254 -0.94622409 0.12944832 -0.93785 0.12944832 -0.93785
		 0.12944832 -0.93785 0.14965025 -0.93792742 0.14965025 -0.93792742 0.14965025 -0.93792742
		 0.17241377 -0.94651359 0.17241377 -0.94651359 0.17241377 -0.94651359 0.19578403 -0.96191585
		 0.19578403 -0.96191585 0.19578403 -0.96191585 0.21593544 -0.9816187;
	setAttr ".uvtk[1000:1079]" 0.21593544 -0.9816187 0.21593544 -0.9816187 0.22972897
		 -1.0026586056 0.22972897 -1.0026586056 0.22972897 -1.0026586056 0.2378718 -1.026085615
		 0.2378718 -1.026085615 0.2378718 -1.026085615 0.24080023 -1.05115366 0.24080023 -1.05115366
		 0.24080023 -1.05115366 0.23823592 -1.075861096 0.23823592 -1.075861096 0.23823592
		 -1.075861096 0.23049501 -1.098464012 0.23049501 -1.098464012 0.23049501 -1.098464012
		 0.21770236 -1.1177516 0.21770236 -1.1177516 0.21770236 -1.1177516 0.20053065 -1.13313544
		 0.20053065 -1.13313544 0.20053065 -1.13313544 0.17929798 -1.14295864 0.17929798 -1.14295864
		 0.17929798 -1.14295864 0.15743616 -1.14646411 0.15743616 -1.14646411 0.15743616 -1.14646411
		 0.13619855 -1.1432271 0.13619855 -1.1432271 0.13619855 -1.1432271 0.1175684 -1.13338184
		 0.1175684 -1.13338184 0.1175684 -1.13338184 0.10212117 -1.11824346 0.10212117 -1.11824346
		 0.10212117 -1.11824346 0.090193897 -1.099270821 0.090193897 -1.099270821 0.090193897
		 -1.099270821 0.083555728 -1.073864937 0.083555728 -1.073864937 0.083555728 -1.073864937
		 0.018433124 -0.91817957 0.018433124 -0.91817957 -1.070389986 0.072663002 0.13894966
		 -0.83376366 0.13894966 -0.83376366 -0.50769264 0.18662447 0.30487633 -0.94944924
		 0.30487633 -0.94944924 0.11630845 0.030448962 0.31663358 -1.14777517 0.31663358 -1.14777517
		 0.53218061 -0.23729116 0.14819267 -1.24672127 0.14819267 -1.24672127 -1.69521451
		 -0.37086827 0.00099059939 -1.15769887 0.00099059939 -1.15769887 -1.49393749 -0.25068802
		 0.018433124 -0.91817957 0.018433124 -0.91817957 0.018433124 -0.91817957 0.13894966
		 -0.83376366 0.13894966 -0.83376366 0.13894966 -0.83376366 0.30487633 -0.94944924
		 0.30487633 -0.94944924 0.30487633 -0.94944924 0.31664127 -1.14770341 0.31664127 -1.14770341
		 0.31664127 -1.14770341 0.14922109 -1.24593997 0.14922109 -1.24593997 0.14922109 -1.24593997
		 0.0032893121 -1.15596938 0.0032893121 -1.15596938 0.0032893121 -1.15596938;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
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
connectAttr "polyTweakUV1.out" "webShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "webShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "webShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "webShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "webShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "webShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "webShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "webShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace7.ip";
connectAttr "webShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "webShape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polyMergeVert2.ip";
connectAttr "webShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polyMergeVert3.ip";
connectAttr "webShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polyMergeVert4.ip";
connectAttr "webShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polyMergeVert5.ip";
connectAttr "webShape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polyMergeVert6.ip";
connectAttr "webShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polyMergeVert7.ip";
connectAttr "webShape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polyMergeVert8.ip";
connectAttr "webShape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polyMergeVert9.ip";
connectAttr "webShape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polyMergeVert10.ip";
connectAttr "webShape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polyMergeVert11.ip";
connectAttr "webShape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polyMergeVert12.ip";
connectAttr "webShape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "polyCylProj1.ip";
connectAttr "webShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyPlanarProj1.ip";
connectAttr "webShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "webShape.iog" ":initialShadingGroup.dsm" -na;
// End of web.ma
