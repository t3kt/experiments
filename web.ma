//Maya ASCII 2015 scene
//Name: web.ma
//Last modified: Tue, Oct 25, 2016 11:15:39 PM
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
	setAttr ".t" -type "double3" 0 100.10000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 184.55609350031;
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
	setAttr ".pv" -type "double2" -0.21501958938288679 -0.16856570045153307 ;
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
	setAttr ".uvtk[0:249]" -type "float2" -0.81314886 -0.69635254 -0.80651057
		 -0.72175843 -0.89341521 -0.77845693 -0.93037999 -0.72813505 -0.79458344 -0.74073106
		 -0.8984791 -0.84635782 -0.77913618 -0.75586951 -0.87821424 -0.87231809 -0.76050591
		 -0.7657147 -0.82788014 -0.89525467 -0.73926842 -0.76895177 -0.74748337 -0.86842763
		 -0.71740663 -0.76544631 -0.64574003 -0.88373303 -0.69617385 -0.75562304 -0.59236562
		 -0.87166363 -0.67900211 -0.74023914 -0.56995916 -0.83334607 -0.66620958 -0.72095162
		 -0.58006322 -0.77019095 -0.65846854 -0.6983487 -0.54129761 -0.72218865 -0.65590423
		 -0.67364132 -0.51782441 -0.67310029 -0.65883267 -0.64857328 -0.54493916 -0.62306511
		 -0.6669755 -0.62514621 -0.59182817 -0.57193685 -0.68076903 -0.60410631 -0.60427904
		 -0.50422609 -0.70092058 -0.58440346 -0.62973219 -0.46456063 -0.72429085 -0.5690012
		 -0.68710023 -0.45043746 -0.74705422 -0.56041503 -0.75775492 -0.45625126 -0.76725626
		 -0.5603376 -0.83879828 -0.41501194 -0.78427196 -0.5687117 -0.85883641 -0.42801538
		 -0.79825962 -0.58365428 -0.87437594 -0.44084588 -0.80854118 -0.60453874 -0.87827146
		 -0.54066718 -0.81396461 -0.63246918 -0.91786838 -0.60278237 -0.81552172 -0.66483796
		 -0.93880641 -0.67099953 -1.57764435 0.024689835 -1.52898872 -0.025990836 -0.91466784
		 -0.85853642 -0.96724451 -1.0033963919 -0.96839046 -1.0042583942 -1.6327796 -0.25138831
		 -0.38964039 -0.11268899 -0.64614499 -0.88403767 -0.4463557 -1.038936138 -0.4463557
		 -1.038936138 -0.24346657 -0.17822814 -0.34259248 0.027552376 -0.54129779 -0.72218865
		 -0.34464937 -0.67092443 -0.34464914 -0.67092443 -0.41585535 0.11195728 -0.57103539
		 0.31079385 -0.60427904 -0.50422609 -0.51114619 -0.33091575 -0.51114619 -0.33091575
		 -0.80356979 0.34637189 -0.98576635 0.47524455 -0.83879828 -0.41501194 -0.94757247
		 -0.29819542 -0.94757247 -0.29819542 -1.24769163 0.35561973 -1.3424089 0.3468028 -0.91839015
		 -0.60317481 -1.085389972 -0.67371362 -1.085389972 -0.67371362 -1.50593305 0.10799325
		 -1.53602767 0.039051063 -1.46703172 0.15876289 -1.46380603 0.22337319 -1.59793329
		 -0.042422976 -1.53601193 0.10487287 -1.62839413 -0.087019175 -1.55164206 0.065992452
		 -1.60444665 -0.09897881 -1.5459404 0.054425556 -0.39645118 -0.065132886 -1.53117239
		 0.056581456 -0.3307085 -0.075240418 -0.29724601 0.084593087 -0.31189105 -0.049172398
		 -0.29004103 0.10538333 -0.32551521 -0.0041471273 -0.33103696 0.1375535 -0.39287913
		 0.045989446 -0.40251911 0.13051844 -0.39662021 0.10270531 -0.41111076 0.22648318
		 -0.39596897 0.22835135 -0.44084981 0.26973754 -0.49197638 0.22320388 -0.51231641
		 0.32713535 -0.60624218 0.27624807 -0.58371389 0.37067187 -0.65801263 0.34993598 -0.65503556
		 0.43557817 -0.74849349 0.39992622 -0.73362762 0.47096944 -0.84951204 0.42750323 -0.84301144
		 0.48661867 -0.97528702 0.42613575 -0.93811303 0.48001343 -1.095989704 0.45359948
		 -1.057090759 0.49979925 -1.20247376 0.4461607 -1.126526 0.48603386 -1.25321436 0.41381642
		 -1.18679714 0.47202849 -1.3189075 0.3158606 -1.24462342 0.411493 -1.3922298 0.25586766
		 -1.33331442 0.35842195 -1.47496629 0.17707033 -1.39551401 0.29273 -0.73531353 -0.67326134
		 -1.28872049 -0.037558697 -1.3758316 0.43554679 -1.17882574 -0.092480093 -1.4265393
		 0.42853692 -1.46543312 0.42839268 -1.5003624 0.41566536 -0.3658202 0.41024366 -0.38681164
		 0.41169134 -0.43996456 0.41714266 -0.46385112 0.42438105 -0.51898813 0.44404975 -0.56058663
		 0.45912543 -0.60924202 0.4725517 -0.65339631 0.48340949 -0.72007072 0.49639678 -0.76794422
		 0.50887185 -0.82924151 0.51794189 -0.89014125 0.52076662 -0.95432043 0.52418727 -1.022926688
		 0.51984417 -1.087812543 0.5099597 -1.13938701 0.49968579 -1.19818103 0.49002603 -1.24624705
		 0.47519204 -1.2683152 0.45563605 -1.49607837 0.058205746 -1.18271959 0.37448889 -0.68201822
		 0.34242302 -0.32828909 0.0620552 -0.22532089 -0.21968031 -1.64896405 -0.22744825
		 -0.43774605 0.18054424 -0.38089466 0.21578847 -0.33058095 0.19192153 -0.32998541
		 0.17842741 -1.52267075 0.16492219 -1.52788353 0.16852774 -1.4869895 0.18662435 -1.46991932
		 0.21372479 -1.41682029 0.25209746 -1.39607978 0.29289877 -1.34090734 0.34041899 -1.29004741
		 0.3965745 -1.2253679 0.42663372 -1.19573724 0.48587412 -1.073602557 0.51571339 -1.029693842
		 0.52283514 -0.93466932 0.49019846 -0.85691077 0.48782074 -0.75344002 0.47431359 -0.67628467
		 0.44466099 -0.59481567 0.40246984 -0.54353905 0.36635754 -0.48217946 0.31407622 -0.44882157
		 0.2802389 -0.47370592 0.32173958 -0.42904839 0.28897056 -0.40787786 0.26690298 -0.37097782
		 0.26025093 -0.36286002 0.25214511 -1.52102113 0.24473092 -1.50265396 0.25391454 -1.47602141
		 0.26677158 -1.44571555 0.28605711 -1.39979756 0.31085283 -1.35755301 0.34942397 -1.29845536
		 0.39810449 -1.24876845 0.42811742 -1.18040061 0.45878386 -1.12526166 0.48184273 -1.039905548
		 0.49542269 -0.98145759 0.4990868 -0.88781714 0.48723137 -0.83104098 0.476524 -0.73604196
		 0.45565578 -0.67936045 0.42878693 -0.61383396 0.40347403 -0.56766534 0.3778336 -0.50842112
		 0.34549555 -1.44571555 0.28605711 -1.32335126 0.39737734 -1.42081749 0.36711365 -1.31377375
		 0.45699421 -1.47602141 0.26677158 -1.45745897 0.35347533 -1.50265396 0.25391454 -1.49218726
		 0.34368023 -1.52102113 0.24473092 -1.51709366 0.33671561 -0.36275339 0.25369465 -0.36406386
		 0.3287425 -0.37123221 0.26174909 -0.38136399 0.33615682 -0.40943944 0.27012807 -0.42667395
		 0.34686643 -0.4313972 0.29153022 -0.45303613 0.36087134 -0.47593391 0.32313135 -0.50658429
		 0.37899533 -0.51084477 0.34623513 -0.53706551 0.39629546 -0.57011098 0.37783098 -0.59390891
		 0.42677674 -0.61616313 0.40270728 -0.63592362 0.44325304 -0.6822961 0.42671394 -0.70924342
		 0.46467236 -0.7384004 0.45274451 -0.76361531 0.48526776 -0.83243108 0.47274101 -0.8377589
		 0.50339174 -0.8880893 0.48272252 -0.89954519 0.49939239 -0.98038429 0.4917348 -0.97533643
		 0.50441724 -1.037653804 0.4880465 -1.037946582 0.5026775 -1.12197089 0.47474119 -1.10961866
		 0.49757928 -1.17635059 0.45246106 -1.16423285 0.48203072 -1.24564922 0.424642 -1.22441936
		 0.46282515;
	setAttr ".uvtk[250:499]" -1.29505098 0.39591998 -1.27351892 0.43501258 -1.35755301
		 0.34942397 -1.32335126 0.40886208 -1.24674356 0.47094953 -1.24085844 -0.038641006
		 -1.27256453 -0.038531393 -1.32298124 -0.041028105 -1.32606196 0.44466415 -1.28725648
		 0.44557729 -1.27351892 0.42627305 -1.25763726 0.47177112 -1.2955122 0.47729912 -1.35257924
		 0.45443645 -1.36805379 0.38407716 -1.32335126 0.40061751 -1.29552019 0.39138198 -1.27351892
		 0.42769086 -1.32335126 0.41027984 -1.36805379 0.38083687 -1.39979756 0.31085283 -1.35755301
		 0.34942397 -1.15237105 -0.091612726 -1.092583418 -0.094904512 -1.058756232 -0.099241287
		 -0.98699361 -0.095269352 -0.96359801 -0.093637079 -0.9081015 -0.094725281 -0.88416183
		 -0.093637079 -0.78473967 -0.08952257 -0.75753558 -0.08952257 -0.67456776 -0.086822957
		 -0.65770119 -0.086822957 -0.60455626 -0.086278886 -0.59295517 -0.086278886 -0.49836263
		 -0.08503595 -0.46192935 -0.088654548 -0.41073969 -0.090342075 -0.38205096 -0.089217037
		 -1.50374341 -0.078283578 -1.47214353 -0.076894611 -1.38128936 -0.093247801 -1.34789598
		 -0.094982594 -1.31320155 -0.091513067 -1.2789408 -0.08804366 -1.19952619 0.48576555
		 -1.19361699 -0.018759578 -1.22007143 -0.019626983 -1.22441936 0.45459995 -1.21003199
		 0.49096587 -1.25675285 0.48039258 -1.24671543 0.42048392 -1.22441936 0.46071038 -1.27351892
		 0.44112301 -1.38846624 0.30605775 -1.33008456 0.33971536 -1.29912627 0.39183223 -1.1414901
		 0.4961009 -1.14988363 -0.013217531 -1.16852057 -0.0033198819 -1.16423285 0.47532001
		 -1.15107429 0.50515491 -1.20776522 0.49908015 -1.17880881 0.44767338 -1.16423285
		 0.48551378 -1.22441936 0.47301885 -1.32850122 0.35451794 -1.28068352 0.39202195 -1.25011981
		 0.42266837 -1.090236425 0.50755084 -1.093920469 0.0033857003 -1.12774765 0.007722564
		 -1.10961866 0.49295151 -1.098351717 0.51963979 -1.1475023 0.51177484 -1.12511635
		 0.47149095 -1.10961866 0.50600976 -1.16423285 0.49508891 -1.27749443 0.40488189 -1.20220649
		 0.38869333 -1.18342531 0.45281708 -1.022926688 0.51984417 -1.042723775 0.0083849207
		 -1.071930051 0.015390046 -1.037946582 0.50002581 -1.022926688 0.51984417 -1.093900442
		 0.52420497 -1.041241407 0.48628011 -1.037946582 0.51495695 -1.10961866 0.51251036
		 -1.17232358 0.42728329 -1.17232358 0.42728329 -1.12916636 0.47781369 -0.95432049
		 0.52418727 -0.9990744 0.022986025 -1.022470117 0.021353751 -0.97533643 0.50414544
		 -0.95432049 0.52418727 -1.022926688 0.51984417 -0.98459297 0.49173135 -0.97533643
		 0.52005607 -1.037946582 0.51858807 -1.13880134 0.45077717 -1.053037286 0.44979137
		 -1.04444313 0.49318966 -0.89014137 0.52076662 -0.91854328 0.027266249 -0.97403979
		 0.028354377 -0.89954519 0.50148129 -0.89014125 0.52076662 -0.95432049 0.52418727
		 -0.89114845 0.48385644 -0.89954519 0.51712728 -0.97533643 0.52006316 -1.016464353
		 0.45981812 -1.016464353 0.45981812 -0.98684478 0.49910748 -0.82924151 0.51794189
		 -0.86884326 0.024472386 -0.89278299 0.023384184 -0.8377589 0.50339174 -0.82924128
		 0.51794189 -0.89014125 0.52076662 -0.83545935 0.47474825 -0.8377589 0.50339174 -0.89954519
		 0.51363087 -0.97682214 0.45204651 -0.91352206 0.45264986 -0.891864 0.48875779 -0.7679444
		 0.50887191 -0.80899554 0.0091575757 -0.84566456 0.01338397 -0.76361531 0.48526782
		 -0.7679444 0.50887185 -0.82924139 0.51794189 -0.74101841 0.45537743 -0.76361531 0.48526782
		 -0.8377589 0.50339174 -0.86973709 0.4527528 -0.84903544 0.44092327 -0.83518714 0.47925711
		 -0.72007072 0.49639684 -0.75782442 0.006323196 -0.78502864 0.006323196 -0.70924342
		 0.4646723 -0.72007072 0.49639678 -0.7679444 0.50887191 -0.68417555 0.42961919 -0.70924342
		 0.46467236 -0.76361531 0.48526782 -0.79997355 0.42996454 -0.75857019 0.42503557 -0.73962831
		 0.45916048 -0.65339631 0.48340943 -0.69467348 -0.019461043 -0.73324591 -0.0025704727
		 -0.63592362 0.4432531 -0.65339631 0.48340943 -0.7200706 0.49639678 -0.61693883 0.40495569
		 -0.63592362 0.44325304 -0.70924342 0.4646723 -0.71203148 0.40476158 -0.68935823 0.40180418
		 -0.68181711 0.4325304 -0.60924202 0.47255176 -0.65765601 -0.020030923 -0.67452258
		 -0.020030923 -0.59390891 0.42677668 -0.60924202 0.4725517 -0.65339631 0.48340943
		 -0.57036477 0.38022447 -0.59390891 0.42677674 -0.63592362 0.4432531 -0.65265214 0.37521067
		 -0.61322039 0.37521073 -0.61485946 0.40642405 -0.56058675 0.45912543 -0.58562785
		 -0.024381176 -0.63877279 -0.024925306 -0.53706551 0.39629546 -0.56058675 0.45912543
		 -0.60924202 0.4725517 -0.51050806 0.34863642 -0.53706551 0.39629546 -0.59390891 0.42677674
		 -0.58454776 0.34100202 -0.57468981 0.34494516 -0.5680356 0.38099122 -0.51898813 0.44404975
		 -0.55649394 -0.033647016 -0.56809503 -0.033647016 -0.50658429 0.37899533 -0.51898813
		 0.44404975 -0.56058663 0.45912543 -0.4750388 0.32541779 -0.50658429 0.37899533 -0.53706551
		 0.39629546 -0.55371785 0.30463979 -0.50114781 0.30265072 -0.50806248 0.34863898 -0.46385112
		 0.42438105 -0.49080774 -0.042737991 -0.5404368 -0.047211856 -0.45303613 0.36087134
		 -0.46385136 0.42438105 -0.51898813 0.44404975 -0.42958373 0.29411486 -0.45303613
		 0.36087134 -0.50658429 0.37899533 -0.49082118 0.28020921 -0.4691337 0.27330866 -0.47261512
		 0.32467815 -0.43996444 0.41714266 -0.46225098 -0.051968664 -0.47718534 -0.045126587
		 -0.42667395 0.34686643 -0.43996462 0.41714266 -0.46385154 0.42438105 -0.40717214
		 0.2721501 -0.42667395 0.34686643 -0.45303613 0.36087134 -0.46452597 0.24927083 -0.41720784
		 0.24335606 -0.42670053 0.29231361 -0.38681164 0.41169134 -0.40155062 -0.052760214
		 -0.45274028 -0.051072687 -0.38136399 0.33615682 -0.38681141 0.41169134 -0.43996456
		 0.41714266 -0.37014431 0.26227164 -0.38136399 0.33615682 -0.42667395 0.34686643 -0.41886699
		 0.21876617 -0.40900904 0.21876617 -0.4048233 0.2695905 -0.36582032 0.41024366 -0.36339405
		 -0.053301424 -0.39208278 -0.054426461 -0.36406386 0.3287425 -0.3658202 0.41024366
		 -0.38681152 0.41169134 -0.36162913 0.253892 -0.36406386 0.3287425 -0.38136399 0.33615682
		 -0.4163658 0.19534774 -0.36017555 0.19929093 -0.36950547 0.26095223 -1.52455473 0.4145976;
	setAttr ".uvtk[500:749]" -1.50259638 -0.061581701 -0.35463169 -0.057574362
		 -1.51709366 0.33591071 -1.52709174 0.41677144 -0.3658202 0.41024366 -1.52102113 0.24473092
		 -1.51709366 0.32307753 -0.36406386 0.3287425 -0.37338597 0.17919308 -0.35367009 0.19102259
		 -0.36137474 0.25239384 -1.47315538 0.42504945 -1.46733737 -0.060666889 -1.49893725
		 -0.062055856 -1.49218726 0.34109887 -1.48252702 0.4087204 -1.50973368 0.41875365
		 -1.50265396 0.25391454 -1.49218726 0.32869217 -1.51709366 0.32430896 -0.37050191
		 0.17653163 -1.52222538 0.17195053 -1.52102113 0.24473092 -1.43976521 0.42302635 -1.4305526
		 -0.058200091 -1.4642483 -0.062151641 -1.45745897 0.34921527 -1.45548332 0.41382304
		 -1.48115122 0.41507807 -1.47602141 0.26677158 -1.45745897 0.33805794 -1.49218726
		 0.33252296 -1.52948415 0.17303695 -1.52382922 0.17657126 -1.50265396 0.25391454 -1.39194882
		 0.42757764 -1.38725436 -0.052192241 -1.42064774 -0.050457507 -1.42081749 0.3613103
		 -1.41279459 0.42516485 -1.44738507 0.42431501 -1.44571555 0.28605711 -1.42081749
		 0.35214961 -1.45745897 0.34431463 -1.53040147 0.17975725 -1.48184299 0.19346112 -1.47602141
		 0.26677158 -1.34142792 0.43496302 -1.3389591 -0.043202728 -1.37365353 -0.046672136
		 -1.36805379 0.3766897 -1.3658253 0.43624249 -1.4002291 0.43945757 -1.39979756 0.31085283
		 -1.36805379 0.36998799 -1.42081749 0.360412 -1.48646975 0.19790906 -1.4643302 0.2193107
		 -1.44571555 0.28605711 -1.46772051 0.22504002 -1.41097367 0.25574979 -1.39979756
		 0.31085283 -1.41321242 0.26464316 -1.38795221 0.29481512 -1.35755301 0.34942397 -0.47050905
		 0.28713945 -0.45706272 0.22010116 -0.44087616 0.2174034 -0.393233 0.18189314 -0.39773923
		 0.24418838 -0.44505736 0.25010315 -0.51578873 0.31893072 -0.52872592 0.25365216 -0.46996927
		 0.25344792 -0.553397 0.36241439 -0.57015425 0.29520756 -0.5526188 0.30464968 -0.63424742
		 0.40246978 -0.63701302 0.33860958 -0.60868657 0.33995843 -0.69895792 0.4476184 -0.69486111
		 0.38155138 -0.67597681 0.385598 -0.79484338 0.47924256 -0.77899832 0.41793314 -0.7479741
		 0.41388649 -0.87761241 0.49965027 -0.86042947 0.440579 -0.84154516 0.43248573 -0.97491288
		 0.49989045 -0.9667576 0.45649475 -0.91954678 0.43626153 -1.029693842 0.52283514 -1.049752951
		 0.46508211 -1.021426439 0.45294219 -1.15936661 0.51669919 -1.14426136 0.44079542
		 -1.083091736 0.4411636 -1.19573724 0.48587412 -1.19814754 0.41683269 -1.17791438
		 0.42357707 -1.28402972 0.41207039 -1.26276112 0.3710632 -1.2317369 0.3764587 -1.33786511
		 0.35907048 -1.31910229 0.3286294 -1.30561352 0.3286294 -1.39708769 0.30661827 -1.39992845
		 0.27403936 -1.35676432 0.27134159 -1.42134011 0.26272675 -1.43065 0.216464 -1.42120779
		 0.21511509 -1.47269642 0.2219317 -1.46935701 0.17331311 -1.43158841 0.16387098 -1.49205899
		 0.19232315 -1.50336564 0.13524717 -1.47369027 0.12715387 -1.53631997 0.17189498 -1.54693437
		 0.085907415 -1.49102581 0.096342623 -1.53353834 0.16499342 -1.55262566 0.073631033
		 -1.52969468 0.079026535 -0.36108956 0.15852205 -0.37021884 0.07968314 -1.5304178
		 0.073485419 -0.34970129 0.1665979 -0.35703236 0.086224817 -0.33140364 0.10241136
		 -0.3867712 0.18797834 -0.37975213 0.1093806 -0.33254135 0.11612503 -0.39075261 0.21578847
		 -0.38609785 0.14699128 -0.37126017 0.14294462 -0.42729732 0.22918095 -0.41685447
		 0.17679891 -0.40201679 0.17005455 -0.36205271 0.12107626 -0.36539575 0.18219581 -0.4099088
		 0.18084691 -0.47928819 0.26768181 -0.48403099 0.21669318 -0.42721266 0.21235633 -0.52985185
		 0.31769323 -0.5346939 0.26447061 -0.5158096 0.27661055 -0.61204034 0.36932302 -0.61164981
		 0.31293947 -0.58736998 0.31833497 -0.67391986 0.43153155 -0.66402513 0.37308601 -0.65323406
		 0.37983036 -0.76465183 0.47501615 -0.76056039 0.41626137 -0.72279173 0.41356364 -0.86189574
		 0.49471194 -0.85195154 0.44958049 -0.83846271 0.42934728 -0.98532385 0.50024664 -0.95655382
		 0.45393744 -0.92822737 0.43640196 -1.085417271 0.51193917 -1.056442976 0.4683702
		 -1.028116465 0.4548814 -1.14841533 0.49431455 -1.16875112 0.4388561 -1.097931385
		 0.44333792 -1.2070303 0.46528411 -1.22318459 0.41530427 -1.20699799 0.41530427 -1.27564764
		 0.4060975 -1.27734447 0.3545045 -1.25980902 0.35990003 -1.34680319 0.35842195 -1.34387958
		 0.30476156 -1.33443737 0.30476156 -1.43867815 0.29542777 -1.43595278 0.24107285 -1.3914398
		 0.23702621 -1.47324824 0.2247221 -1.4702791 0.16751803 -1.45948803 0.16751803 -1.50480032
		 0.16820508 -1.48654258 0.12118349 -1.46226275 0.10095033 -1.5656873 0.11296617 -1.52860081
		 0.056293648 -1.5164609 0.056293663 -1.56580877 0.062884495 -1.58360779 0.007890122
		 -1.5131613 0.0091384351 -1.56887138 0.049030054 -1.57520032 -0.00085781701 -1.5630604
		 -0.00085781701 -0.35728058 0.053614572 -0.36305326 0.0015387596 -1.53621292 0.0069517046
		 -0.32287472 0.068406545 -0.33298072 0.012830649 -0.31004977 0.026319496 -0.33725184
		 0.098638952 -0.33973545 0.042373113 -0.30331567 0.043721981 -0.34587464 0.14160016
		 -0.34653044 0.085283354 -0.33304164 0.075841166 -0.36199975 0.11706012 -0.3726899
		 0.17861438 -0.38752759 0.18535879 -0.4238666 0.23265029 -0.44132724 0.16169135 -0.38897437
		 0.17097981 -0.34390384 0.071321465 -0.33737716 0.12002344 -0.37784356 0.12946561
		 -0.28751716 0.0051412834 -0.29823208 0.068204738 -0.31172088 0.077646866 -0.25953817
		 -0.039883982 -0.26622233 0.031844795 -0.30264211 0.030495878 -0.27244481 -0.056663573
		 -0.2797997 0.010181431 -0.30273065 -0.0033073579 -1.52683115 -0.071945481 -1.53668272
		 -0.0085799322 -0.35360044 -0.018749122 -1.59095788 -0.097629927 -1.58127379 -0.028339237
		 -1.59341371 -0.028339237 -1.5808332 -0.090630174 -1.58901775 -0.028037146 -1.60863674
		 -0.020583607 -1.57935643 -0.044111777 -1.58836734 0.027973084 -1.60050726 0.027973026
		 -1.48620796 0.038206682 -1.50327957 0.093120888 -1.5275594 0.11335412 -1.48735619
		 0.10039365 -1.50355291 0.17342694 -1.51434398 0.17342694 -1.43527937 0.17960352 -1.43348539
		 0.25235662 -1.47799838 0.25640327 -1.37618613 0.25755647 -1.36460948 0.33014295;
	setAttr ".uvtk[750:999]" -1.37405169 0.33014295 -1.27717781 0.31759074 -1.27465987
		 0.39124486 -1.29219532 0.38584933 -1.23632634 0.41128322 -1.21529949 0.48241428 -1.23148608
		 0.48241428 -1.13961494 0.43620703 -1.15264726 0.50481826 -1.17455125 0.5104183 -1.066435695
		 0.4519107 -1.076986313 0.51542473 -1.10531282 0.5289135 -0.93475574 0.41346973 -0.94334334
		 0.47827935 -0.97166979 0.4958148 -0.83009082 0.41483721 -0.83530164 0.48265892 -0.84879047
		 0.50289214 -0.70880663 0.39654866 -0.70409566 0.47159943 -0.74186432 0.47429717 -0.63943577
		 0.35669121 -0.6312831 0.43109643 -0.64207417 0.42435208 -0.55135608 0.28300327 -0.56130797
		 0.34932515 -0.5855878 0.34392965 -0.47593275 0.22489269 -0.46937004 0.30025351 -0.48825437
		 0.28811356 -0.96839046 -1.0042583942 -1.72878253 -0.36685613 -1.74867547 -0.37920338
		 -1.60802555 -0.13735032 -1.62151432 -0.1386992 -0.844069 -0.90743297 -0.844069 -0.90743297
		 -0.96724451 -1.0033963919 -0.96724451 -1.0033963919 -0.96724451 -1.0033963919 -0.82788014
		 -0.89525467 -0.82788014 -0.89525467 -0.82788014 -0.89525467 -0.82788014 -0.89525467
		 -0.91466784 -0.85853642 -1.63238955 -0.077253066 -1.65096641 -0.07556428 -1.65786088
		 -0.20789215 -1.64270496 -0.12326671 -1.66381955 -0.119422 -1.66885686 -0.23979551
		 -0.8984791 -0.84635782 -0.8984791 -0.84635782 -0.8984791 -0.84635782 -0.8984791 -0.84635782
		 -0.87821424 -0.87231809 -0.87821424 -0.87231809 -0.87821424 -0.87231809 -0.4463557
		 -1.038936138 -0.026171282 -0.40668088 -0.043213814 -0.40668088 -0.2229519 -0.036465932
		 -0.26094997 -0.045754369 -0.56995904 -0.83334583 -0.56995904 -0.83334583 -0.4463557
		 -1.038936138 -0.4463557 -1.038936138 -0.4463557 -1.038936138 -0.56995916 -0.83334607
		 -0.56995916 -0.83334607 -0.56995916 -0.83334607 -0.56995916 -0.83334607 -0.64614499
		 -0.88403767 -0.22143853 -0.10982798 -0.27970222 -0.12840478 -0.26196736 -0.25601295
		 -0.19653341 -0.094520375 -0.2488863 -0.10380879 -0.24236347 -0.21968031 -0.64574003
		 -0.88373303 -0.64574003 -0.88373303 -0.64574003 -0.88373303 -0.64574003 -0.88373303
		 -0.59236562 -0.87166363 -0.59236562 -0.87166363 -0.59236562 -0.87166363 -0.34464914
		 -0.67092443 -0.094625831 0.088417217 -0.11053222 0.08046411 -0.41151187 0.24937162
		 -0.4275555 0.24768281 -0.5449394 -0.62306511 -0.5449394 -0.62306511 -0.34464937 -0.67092443
		 -0.34464937 -0.67092443 -0.34464937 -0.67092443 -0.54493916 -0.62306511 -0.54493916
		 -0.62306511 -0.54493916 -0.62306511 -0.54493916 -0.62306511 -0.54129779 -0.72218865
		 -0.29286987 0.11483095 -0.32749033 0.10047615 -0.33280426 -0.025888424 -0.30258346
		 0.1854008 -0.35493633 0.17611234 -0.34419549 0.054102026 -0.54129761 -0.72218865
		 -0.54129761 -0.72218865 -0.54129761 -0.72218865 -0.54129761 -0.72218865 -0.51782441
		 -0.67310029 -0.51782441 -0.67310029 -0.51782441 -0.67310029 -0.51114619 -0.33091575
		 -0.52089781 0.54646343 -0.52998716 0.54646343 -0.81389982 0.47765169 -0.83332103
		 0.4903177 -0.68710023 -0.45043746 -0.68710023 -0.45043746 -0.51114619 -0.33091575
		 -0.51114619 -0.33091575 -0.51114619 -0.33091575 -0.68710023 -0.45043746 -0.68710023
		 -0.45043746 -0.68710023 -0.45043746 -0.68710023 -0.45043746 -0.60427904 -0.50422609
		 -0.60866332 0.41625258 -0.62724012 0.40949735 -0.61901563 0.27839494 -0.67847341
		 0.46653894 -0.71816027 0.46991649 -0.69110757 0.34242302 -0.60427904 -0.50422609
		 -0.60427904 -0.50422609 -0.60427904 -0.50422609 -0.60427904 -0.50422609 -0.62973219
		 -0.46456063 -0.62973219 -0.46456063 -0.62973219 -0.46456063 -0.94757247 -0.29819542
		 -1.30444145 0.59233999 -1.32262015 0.59233999 -1.2514323 0.50070894 -1.26832032 0.50324214
		 -0.87437594 -0.44084588 -0.87437594 -0.44084588 -0.94757247 -0.29819542 -0.94757247
		 -0.29819542 -0.94757247 -0.29819542 -0.87437594 -0.44084588 -0.87437594 -0.44084588
		 -0.87437594 -0.44084588 -0.87437594 -0.44084588 -0.83879828 -0.41501194 -1.12661612
		 0.52033734 -1.15617013 0.52202612 -1.12505805 0.3903681 -1.1849519 0.49593034 -1.22345173
		 0.51579148 -1.20089829 0.37448889 -0.83879828 -0.41501194 -0.83879828 -0.41501194
		 -0.83879828 -0.41501194 -0.83879828 -0.41501194 -0.85883641 -0.42801538 -0.85883641
		 -0.42801538 -0.85883641 -0.42801538 -1.085389972 -0.67371362 -1.69550765 0.074876711
		 -1.70849633 0.077474423 -1.53975677 0.10062668 -1.55833364 0.10822628 -0.93113244
		 -0.72868192 -0.93113244 -0.72868192 -1.085389972 -0.67371362 -1.085389972 -0.67371362
		 -1.085389972 -0.67371362 -0.93037999 -0.72813505 -0.93037999 -0.72813505 -0.93037999
		 -0.72813505 -0.93037999 -0.72813505 -0.91839015 -0.60317481 -1.42080259 0.2745401
		 -1.43684626 0.27285129 -1.42576003 0.14434694 -1.49170804 0.18540624 -1.53139496
		 0.18287306 -1.50906706 0.060803503 -0.91786838 -0.60278237 -0.91786838 -0.60278237
		 -0.91786838 -0.60278237 -0.91786838 -0.60278237 -0.93880641 -0.67099953 -0.93880641
		 -0.67099953 -0.93880641 -0.67099953 -0.73531353 -0.67326134 -0.73531353 -0.67326134
		 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353
		 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134
		 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353
		 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134
		 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353
		 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134 -0.73531353 -0.67326134
		 -0.81552172 -0.66483796 -0.81552172 -0.66483796 -0.81552172 -0.66483796 -0.81396461
		 -0.63246918 -0.81396461 -0.63246918 -0.81396461 -0.63246918 -0.80854118 -0.60453874
		 -0.80854118 -0.60453874 -0.80854118 -0.60453874 -0.79825962 -0.58365428 -0.79825962
		 -0.58365428 -0.79825962 -0.58365428 -0.78427196 -0.5687117 -0.78427196 -0.5687117
		 -0.78427196 -0.5687117 -0.76725626 -0.5603376 -0.76725626 -0.5603376 -0.76725626
		 -0.5603376 -0.74705422 -0.56041503 -0.74705422 -0.56041503 -0.74705422 -0.56041503
		 -0.72429085 -0.5690012 -0.72429085 -0.5690012 -0.72429085 -0.5690012 -0.70092058
		 -0.58440346 -0.70092058 -0.58440346 -0.70092058 -0.58440346 -0.68076903 -0.60410631;
	setAttr ".uvtk[1000:1079]" -0.68076903 -0.60410631 -0.68076903 -0.60410631 -0.6669755
		 -0.62514621 -0.6669755 -0.62514621 -0.6669755 -0.62514621 -0.65883267 -0.64857328
		 -0.65883267 -0.64857328 -0.65883267 -0.64857328 -0.65590423 -0.67364132 -0.65590423
		 -0.67364132 -0.65590423 -0.67364132 -0.65846854 -0.6983487 -0.65846854 -0.6983487
		 -0.65846854 -0.6983487 -0.66620958 -0.72095162 -0.66620958 -0.72095162 -0.66620958
		 -0.72095162 -0.67900211 -0.74023914 -0.67900211 -0.74023914 -0.67900211 -0.74023914
		 -0.69617385 -0.75562304 -0.69617385 -0.75562304 -0.69617385 -0.75562304 -0.71740663
		 -0.76544631 -0.71740663 -0.76544631 -0.71740663 -0.76544631 -0.73926842 -0.76895177
		 -0.73926842 -0.76895177 -0.73926842 -0.76895177 -0.76050591 -0.7657147 -0.76050591
		 -0.7657147 -0.76050591 -0.7657147 -0.77913618 -0.75586951 -0.77913618 -0.75586951
		 -0.77913618 -0.75586951 -0.79458344 -0.74073106 -0.79458344 -0.74073106 -0.79458344
		 -0.74073106 -0.80651057 -0.72175843 -0.80651057 -0.72175843 -0.80651057 -0.72175843
		 -0.81314886 -0.69635254 -0.81314886 -0.69635254 -0.81314886 -0.69635254 -0.87827146
		 -0.54066718 -0.87827146 -0.54066718 -1.3049835 0.34999183 -0.75775492 -0.45625126
		 -0.75775492 -0.45625126 -0.94523507 0.46257854 -0.59182817 -0.57193685 -0.59182817
		 -0.57193685 -0.51614928 0.31754905 -0.58007091 -0.77026284 -0.58007091 -0.77026284
		 -0.29361719 0.052884396 -0.74851179 -0.86920881 -0.74851179 -0.86920881 -1.52737284
		 -0.10104137 -0.89571404 -0.78018641 -0.89571404 -0.78018641 -1.52782464 0.023845479
		 -0.87827146 -0.54066718 -0.87827146 -0.54066718 -0.87827146 -0.54066718 -0.75775492
		 -0.45625126 -0.75775492 -0.45625126 -0.75775492 -0.45625126 -0.59182817 -0.57193685
		 -0.59182817 -0.57193685 -0.59182817 -0.57193685 -0.58006322 -0.77019095 -0.58006322
		 -0.77019095 -0.58006322 -0.77019095 -0.74748337 -0.86842763 -0.74748337 -0.86842763
		 -0.74748337 -0.86842763 -0.89341521 -0.77845693 -0.89341521 -0.77845693 -0.89341521
		 -0.77845693;
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
