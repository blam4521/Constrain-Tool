//Maya ASCII 2016 scene
//Name: lights.ma
//Last modified: Fri, Feb 26, 2016 05:35:10 PM
//Codeset: 1252
requires maya "2016";
requires -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.10 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "CAM:CAM";
	rename -uid "DCDB8391-4ED2-108E-D342-78BC4DF39199";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "SEQUENCE" -ln "SEQUENCE" -at "long";
	addAttr -ci true -sn "SCENE" -ln "SCENE" -at "long";
	addAttr -ci true -sn "LETTER" -ln "LETTER" -min 0 -max 26 -en "-none-:A:B:C:D:E:F:G:H:I:J:K:L:M:N:O:P:Q:R:S:T:U:V:W:X:Y:Z" 
		-at "enum";
	addAttr -ci true -sn "safeActionAdjust" -ln "safeActionAdjust" -min -1 -max 1 -at "double";
	addAttr -ci true -sn "hudShadow" -ln "hudShadow" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "fulcrumVis" -ln "fulcrumVis" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "fulcrumSize" -ln "fulcrumSize" -dv 1 -min 1 -max 100000 -at "double";
	addAttr -ci true -sn "ANIMATOR" -ln "ANIMATOR" -dt "string";
	addAttr -ci true -sn "LAYOUT" -ln "LAYOUT" -dt "string";
	addAttr -ci true -sn "showUser" -ln "showUser" -min 0 -max 3 -en "- none -:Animation:Layout:Lipsync" 
		-at "enum";
	addAttr -ci true -h true -sn "object_id" -ln "object_id" -at "long";
	addAttr -ci true -h true -sn "object_in_set_id" -ln "object_in_set_id" -at "long";
	addAttr -ci true -h true -sn "object_in_layer_id" -ln "object_in_layer_id" -at "long";
	addAttr -ci true -h true -sn "animation" -ln "animation" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".____________";
	setAttr -k on ".SEQUENCE";
	setAttr -k on ".SCENE";
	setAttr -k on ".LETTER";
	setAttr -cb on ".safeActionAdjust";
	setAttr -cb on ".hudShadow";
	setAttr -cb on ".fulcrumVis";
	setAttr -cb on ".fulcrumSize";
	setAttr ".ANIMATOR" -type "string" "jenniferk";
	setAttr -cb on ".LAYOUT" -type "string" "LAYOUT";
	setAttr -cb on ".showUser" 1;
createNode transform -n "CAM:POS" -p "CAM:CAM";
	rename -uid "DE095038-472D-A9C5-9BC7-9E83E0B1A5AC";
	addAttr -ci true -sn "____________" -ln "____________" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "currentFOV" -ln "currentFOV" -nn "Current FOV =" -at "double";
	addAttr -ci true -sn "FOV_plus" -ln "FOV_plus" -nn "FOV + " -dv 40 -min -37 -at "double";
	addAttr -ci true -sn "farClip" -ln "farClip" -at "double";
	addAttr -ci true -sn "nearClip" -ln "nearClip" -dv 0.1 -min 0.1 -at "double";
	addAttr -ci true -h true -sn "static_pos" -ln "static_pos" -dt "float3";
	addAttr -ci true -h true -sn "static_rotate" -ln "static_rotate" -dt "float3";
	addAttr -ci true -h true -sn "static_scale" -ln "static_scale" -dt "float3";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 57.222277140575571 33.885433759352885 -190.77338666628972 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 159.75878772659985 0 ;
	setAttr -av ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".____________";
	setAttr -cb on ".currentFOV";
	setAttr -av -k on ".FOV_plus" 45;
	setAttr -k on ".farClip";
	setAttr -k on ".nearClip";
	setAttr ".static_pos" -type "float3" 0 0 0 ;
	setAttr ".static_rotate" -type "float3" 0 0 0 ;
	setAttr ".static_scale" -type "float3" 1 1 1 ;
createNode transform -n "CAM:TILT" -p "CAM:POS";
	rename -uid "5A36D57F-4B43-FE42-B11E-168C0C8520F2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode lookAt -n "CAM:CAMGRP" -p "CAM:TILT";
	rename -uid "17907DA3-4AD1-85F9-B907-6A8662625AEB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr -l on -k off ".ox";
	setAttr -l on -k off ".oy";
	setAttr -l on -k off ".oz";
	setAttr ".db" 4.9999999999999147;
	setAttr -l on -k off ".tws";
createNode transform -n "CAM:camera" -p "CAM:CAMGRP";
	rename -uid "F39EC33D-449A-6012-0368-A187E7D1B025";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".s" -type "double3" 4 4 4 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode camera -n "CAM:cameraShape" -p "CAM:camera";
	rename -uid "C1F0FA74-481C-436C-8F7A-24852CA51437";
	setAttr -l on -k off ".v";
	setAttr -l on ".lodv";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.6799966400000002 0.94488 ;
	setAttr -l on ".hfa";
	setAttr -l on ".vfa";
	setAttr ".ff" 3;
	setAttr -l on ".ffo";
	setAttr -l on ".lsr";
	setAttr -l on ".cs";
	setAttr ".ncp" 1;
	setAttr ".fcp" 100000;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr -l on ".lls";
	setAttr -l on ".dfp";
	setAttr -l on ".dfo";
	setAttr ".dptp" 0;
createNode transform -n "CAM:camera_aim" -p "CAM:CAMGRP";
	rename -uid "D98C23B2-4908-D17E-82D7-598DC3CF2247";
	setAttr -l on -k off ".v" no;
	setAttr ".ovdt" 1;
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".drp" yes;
createNode locator -n "CAM:camera_aimShape" -p "CAM:camera_aim";
	rename -uid "254B6CD9-42FA-6978-66C8-47857DC73EA5";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 2;
createNode transform -n "CAM:camera_up" -p "CAM:CAMGRP";
	rename -uid "22048779-4704-6D5D-82F0-FF96E55171A7";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 0 2 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".drp" yes;
createNode locator -n "CAM:camera_upShape" -p "CAM:camera_up";
	rename -uid "15172DAF-44DB-E625-FE32-32A74031C620";
	setAttr -k off ".v" no;
createNode transform -n "CAM:GUIDES" -p "CAM:CAMGRP";
	rename -uid "59F58049-4820-0759-E7E4-D08954835A1A";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".t" -type "double3" 0 0 -0.662 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CAM:lock_to_clipping" -p "CAM:GUIDES";
	rename -uid "45DC6361-4BE7-9DF1-E1E7-ADB09894A04B";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode transform -n "CAM:TV_4x3_adjust" -p "CAM:lock_to_clipping";
	rename -uid "98951E74-46A4-C7E8-1E00-8F888D5BFDEB";
	setAttr -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CAM:TVsafe_4x3" -p "CAM:TV_4x3_adjust";
	rename -uid "516B85A3-44D4-A167-74CA-228AAD64BB18";
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.13589340919791573 0.13589340919791573 0.13589340919791573 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "CAM:TVsafe_4xShape3" -p "CAM:TVsafe_4x3";
	rename -uid "36405088-416E-FA7E-2596-2BAF7202CD93";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ovlod" 1;
	setAttr ".ove" yes;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.5 -0.99999994 0 1.5 -0.99999994 
		0 -1.5 0.99999994 0 1.5 0.99999994 0;
	setAttr -s 4 ".vt[0:3]"  -0.5 -0.5 0 0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
	setAttr ".tgsp" 1;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode transform -n "CAM:Filmgate_4x3" -p "CAM:TV_4x3_adjust";
	rename -uid "890432EE-4AA8-BCFE-B434-9D9C971758AA";
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.15099267688657306 0.15099267688657306 0.15099267688657306 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "CAM:Filmgate_4x3Shape" -p "CAM:Filmgate_4x3";
	rename -uid "3CB76CC5-4008-F9E8-3273-90AA249F28A2";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ovlod" 1;
	setAttr ".ove" yes;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.9378825e-007 -3.4271713e-007 
		0 1.9378825e-007 -3.4271713e-007 0 -1.9378825e-007 3.4271713e-007 0 1.9378825e-007 
		3.4271713e-007 0;
	setAttr -s 4 ".vt[0:3]"  -2 -1.5 0 2 -1.5 0 -2 1.5 0 2 1.5 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
	setAttr ".tgsp" 1;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode transform -n "CAM:Filmgate_16x9" -p "CAM:lock_to_clipping";
	rename -uid "2ED8DF61-4054-C99E-2D14-C5B08AA16BB2";
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.201 0.15099267688657306 0.15099267688657306 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -1.8871873115260942e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.2498535362372342e-015 0 ;
	setAttr ".spt" -type "double3" 0 1.0611348050846247e-015 0 ;
createNode mesh -n "CAM:Filmgate_16xShape9" -p "CAM:Filmgate_16x9";
	rename -uid "7D48234C-4CE4-9D72-9F61-29ABEFEA0AF9";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ovlod" 1;
	setAttr ".ove" yes;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  1.4793727e-007 -3.4271713e-007 
		0 -1.4793727e-007 -3.4271713e-007 0 1.4793727e-007 3.4271713e-007 0 -1.4793727e-007 
		3.4271713e-007 0;
	setAttr -s 4 ".vt[0:3]"  -2 -1.5 0 2 -1.5 0 -2 1.5 0 2 1.5 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
	setAttr ".tgsp" 1;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode transform -n "CAM:sceneInfoLocator" -p "CAM:lock_to_clipping";
	rename -uid "7A5E191B-4311-BE72-28B6-4289F66BB3F9";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -0.25 0.205 -0.0051119165941809069 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.1458897477340807 0.33628464061325675 0.33628464061325675 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "CAM:sceneInfoLocatorShape" -p "CAM:sceneInfoLocator";
	rename -uid "875C2DCB-4210-0A52-9BC4-FB881FEEAE74";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".lodv" no;
createNode transform -n "CAM:label_main" -p "CAM:sceneInfoLocator";
	rename -uid "6E4B2D70-4308-1238-C831-83BF2C9C0236";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -0.17310899999999999 4.5096483673067312e-016 5.2612564285245194e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:sceneInfo" -p "CAM:label_main";
	rename -uid "6CD3DB86-4EB4-C38F-D7E0-30B0E926B9F8";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.01 0 -5.5511151231257827e-017 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mrof" no;
createNode annotationShape -n "CAM:sceneInfoShape" -p "CAM:sceneInfo";
	rename -uid "E3F82C94-46CA-B6A0-EBD6-429B65A74B3A";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovp" no;
	setAttr ".ovc" 17;
	setAttr ".txt" -type "string" "sq-010  sc-036  fr-300";
	setAttr -l on ".daro" no;
createNode transform -n "CAM:label_main_shadow" -p "CAM:sceneInfoLocator";
	rename -uid "92AF2CB1-4B5A-EDF0-7853-69BE24A7C308";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".t" -type "double3" -0.15 0.001000000000000451 5.2612564285245194e-016 ;
	setAttr -l on ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:sceneInfo1" -p "CAM:label_main_shadow";
	rename -uid "84A82A38-4111-77C3-23B1-8FB5EE0CA0C4";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.01 -0.01 0.02 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mrof" no;
createNode transform -n "CAM:users" -p "CAM:sceneInfoLocator";
	rename -uid "6AD28828-487D-6A75-0367-59A991ED9D8C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CAM:user_is_ANIMATION" -p "CAM:users";
	rename -uid "74081E35-4DF0-458C-E086-ADBA67D71A9A";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CAM:label_animation" -p "CAM:user_is_ANIMATION";
	rename -uid "DEBFDCB9-43A4-4F4E-AD3F-B6AE2603FCFE";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.0037692874728883 1.1143234804908258e-015 4.4408920985006301e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:animationInfo" -p "CAM:label_animation";
	rename -uid "72046C54-467C-75CB-89B1-C98BF1202A48";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.01 0 -5.5511151231257827e-017 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mrof" no;
createNode annotationShape -n "CAM:animationInfoShape" -p "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:users|CAM:user_is_ANIMATION|CAM:label_animation|CAM:animationInfo";
	rename -uid "D966A409-459F-B825-4706-538D662718BF";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovp" no;
	setAttr ".ovc" 17;
	setAttr ".txt" -type "string" "jenniferk";
	setAttr ".dom[0]" -type "matrix" 0.1276535292673206 0 0 0 0 0.29424906053659966 0 0
		 0 0 0.33628464061325675 0 -0.25440922623032197 0.18024999999999999 -0.6671119165941809 1;
	setAttr -l on ".daro" no;
createNode transform -n "CAM:label_animation_shadow" -p "CAM:user_is_ANIMATION";
	rename -uid "6C55CD42-4E9E-BF7F-753A-41AF5F427D53";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.01 -0.006 2.2204460492503131e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:user_is_LAYOUT" -p "CAM:users";
	rename -uid "B36694F3-48DC-28C0-1447-9AB01D19C59D";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CAM:label_layout" -p "CAM:user_is_LAYOUT";
	rename -uid "11EA520F-45C7-4139-7066-CB9956EBE45D";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.0037692874728883 1.1143234804908258e-015 4.4408920985006301e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:layoutInfo" -p "CAM:label_layout";
	rename -uid "92CF526B-4EE4-5928-B3AD-75B97E59BBFC";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.01 0 -5.5511151231257827e-017 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mrof" no;
createNode annotationShape -n "CAM:layoutInfoShape" -p "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:users|CAM:user_is_LAYOUT|CAM:label_layout|CAM:layoutInfo";
	rename -uid "5777B8EB-40FD-10A3-C0D7-45B6766D62D7";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovp" no;
	setAttr ".ovc" 17;
	setAttr ".txt" -type "string" "LAYOUT";
	setAttr ".dom[0]" -type "matrix" 0.1276535292673206 0 0 0 0 0.29424906053659966 0 0
		 0 0 0.33628464061325675 0 -0.25440922623032197 0.18024999999999999 -0.6671119165941809 1;
	setAttr -l on ".daro" no;
createNode transform -n "CAM:label_layout_shadow" -p "CAM:user_is_LAYOUT";
	rename -uid "D82B6172-4A7D-57B9-BBCF-E396CEBB3296";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.01 -0.006 2.2204460492503131e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:user_is_LIPSYNC" -p "CAM:users";
	rename -uid "77D5DD9B-417F-FDAF-F5FF-DFB84113D514";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CAM:label_lipsync" -p "CAM:user_is_LIPSYNC";
	rename -uid "B965C727-4D03-C285-1DF9-BD896F616AA6";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.0037692874728883 1.1143234804908258e-015 4.4408920985006301e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:lipsyncInfo" -p "CAM:label_lipsync";
	rename -uid "BE9A3848-443C-B75A-E65E-518EF942CE22";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.01 0 -5.5511151231257827e-017 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mrof" no;
createNode annotationShape -n "CAM:lipsyncInfoShape" -p "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:users|CAM:user_is_LIPSYNC|CAM:label_lipsync|CAM:lipsyncInfo";
	rename -uid "6028D0E4-4418-CD82-9388-3DBD3B0E8BEA";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovp" no;
	setAttr ".ovc" 17;
	setAttr ".txt" -type "string" "LIPSYNC";
	setAttr ".dom[0]" -type "matrix" 0.1276535292673206 0 0 0 0 0.29424906053659966 0 0
		 0 0 0.33628464061325675 0 -0.25440922623032197 0.18024999999999999 -0.6671119165941809 1;
	setAttr -l on ".daro" no;
createNode transform -n "CAM:label_lipsync_shadow" -p "CAM:user_is_LIPSYNC";
	rename -uid "92663D2E-4799-CD94-B9E2-3B8D3FEF1BF2";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.01 -0.006 2.2204460492503131e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "CAM:HUDshade" -p "CAM:lock_to_clipping";
	rename -uid "223A685C-49DE-FC95-958B-57A39F139886";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".rp" -type "double3" -0.27635187198276412 0.2167763200034501 -0.0025445390855709515 ;
	setAttr ".sp" -type "double3" -0.27635187198276412 0.2167763200034501 -0.0025445390855708405 ;
createNode mesh -n "CAM:HUDshadeShape" -p "CAM:HUDshade";
	rename -uid "7946CFFD-4C4E-4D77-6697-D5AE448D11EA";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 4 ".vt[0:3]"  -0.40384194 0.20382814 -0.0025445819 -0.14886184 0.20382814 -0.0025445819
		 -0.40384194 0.22972453 -0.0025445819 -0.14886184 0.22972453 -0.0025445819;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 4;
	setAttr ".vnm" 0;
	setAttr ".fgc" no;
	setAttr ".fge" no;
	setAttr ".tpc" no;
	setAttr ".tpr" no;
	setAttr ".rflr" no;
	setAttr ".rfrr" no;
	setAttr ".nts" -type "string" "q";
createNode transform -n "CAM:fulcrum" -p "CAM:GUIDES";
	rename -uid "D62B1574-4E74-8C41-A656-C781392E5C40";
	setAttr -av ".v" yes;
	setAttr ".ovdt" 1;
	setAttr ".t" -type "double3" 0 -0.00022223095300564837 -12.57818583044525 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.23106986122963369 13.237983483870622 ;
	setAttr ".rpt" -type "double3" 0 -0.23106986122963374 0.0020165161293784041 ;
	setAttr ".sp" -type "double3" 0 0.011553493061481686 0.66189917419353117 ;
	setAttr ".spt" -type "double3" 0 0.21951636816815201 12.576084309677091 ;
createNode mesh -n "CAM:fulcrumShape" -p "CAM:fulcrum";
	rename -uid "E320A794-4F3E-8386-A872-2680B4670497";
	setAttr -l on -k off ".v";
	setAttr -l on ".tmp";
	setAttr ".ovdt" 1;
	setAttr -l on ".ovs" no;
	setAttr -l on ".ovt" no;
	setAttr -l on ".ovp" no;
	setAttr -l on ".ove" yes;
	setAttr -l on ".ovv";
	setAttr -l on ".lodv";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -l on ".lev" 0;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -l on ".dsc";
	setAttr -l on ".uspr" no;
	setAttr -l on ".rsl" 0;
	setAttr -s 8 ".pt[0:7]" -type "float3"  9.6559529e-007 0.011553923 
		-0.00010184548 -9.6559529e-007 0.011553923 -0.00010184548 9.6559529e-007 0.01155301 
		-0.00010184548 -9.6559529e-007 0.01155301 -0.00010184548 45.985027 -26.306908 75.371338 
		-45.982849 -26.306908 75.371338 45.985027 26.04969 75.471069 -45.982849 26.04969 
		75.471069;
	setAttr -s 8 ".vt[0:7]"  -1.0728836e-006 -4.7683716e-007 0.66200113
		 1.0728836e-006 -4.7683716e-007 0.66200113 -1.0728836e-006 5.364418e-007 0.66200113
		 1.0728836e-006 5.364418e-007 0.66200113 -50.9116478 28.95468712 -82.76805878 50.9116478 28.95468712 -82.76805878
		 -50.9116478 -28.95468712 -82.76805878 50.9116478 -28.95468712 -82.76805878;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode transform -n "inthazelcharmhouse_41B_lights:inthazelcharmhouse_41B_lights";
	rename -uid "93507E58-4B69-E5BA-2544-82A158A5079E";
	addAttr -ci true -h true -sn "object_id" -ln "object_id" -at "long";
	addAttr -ci true -h true -sn "object_in_set_id" -ln "object_in_set_id" -at "long";
	addAttr -ci true -h true -sn "object_in_layer_id" -ln "object_in_layer_id" -at "long";
	setAttr ".object_id" 3124;
	setAttr ".object_in_set_id" -1;
	setAttr ".object_in_layer_id" -1;
createNode transform -n "inthazelcharmhouse_41B_lights:setlighting" -p "inthazelcharmhouse_41B_lights:inthazelcharmhouse_41B_lights";
	rename -uid "3E089DB4-45FC-6EC3-78BC-5B82B6DB40E6";
createNode transform -n "inthazelcharmhouse_41B_lights:set_camera_forlighting" -p
		 "inthazelcharmhouse_41B_lights:setlighting";
	rename -uid "C424129C-4AAE-10E8-CAE7-5A8559BAC39F";
createNode camera -n "inthazelcharmhouse_41B_lights:set_camera_forlightingShape" 
		-p "inthazelcharmhouse_41B_lights:set_camera_forlighting";
	rename -uid "DACF7755-4527-8D5C-1099-11AF1B19B775";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".fl" 50;
	setAttr ".ncp" 1;
	setAttr ".fcp" 100000;
createNode transform -n "inthazelcharmhouse_41B_lights:set_key_direction" -p "inthazelcharmhouse_41B_lights:setlighting";
	rename -uid "01072F93-4F5B-2593-5990-8D99CC4A016F";
	setAttr ".t" -type "double3" -48.877091798613037 0 -1643.8207045764696 ;
	setAttr ".s" -type "double3" 50 50 50 ;
	setAttr ".rp" -type "double3" 48.877091798613037 -1.9388829568994735e-013 1643.8207045764696 ;
	setAttr ".sp" -type "double3" 0.48877091798613037 -1.9388829568994736e-015 16.438207045764695 ;
	setAttr ".spt" -type "double3" 48.388320880626907 -1.9194941273304788e-013 1627.3824975307048 ;
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 0 0 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 0 ;
	setAttr ".mxrl" -type "double3" 0 45 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrze" yes;
	setAttr ".hdl" -type "double3" 0.48877091798613037 -1.9388829568994736e-015 16.438207045764695 ;
	setAttr ".dh" yes;
	setAttr ".dla" yes;
createNode nurbsCurve -n "inthazelcharmhouse_41B_lights:set_key_directionShape" -p
		 "inthazelcharmhouse_41B_lights:set_key_direction";
	rename -uid "F9C4951C-4873-0492-F5CE-4D9425DFCFAA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 32 2 no 3
		37 -0.10000000000000142 -0.050000000000000711 0 1 2 3 4 5 6 7 7.9000000000000004
		 8 8.0999999999999996 9 9 9 11 11 11 12 12 12 13 13 13 14 14 14 15 15 15 16 16.050000000000001
		 16.100000000000001 16.150000000000002 17.150000000000002 18.150000000000002
		35
		-6.9295323784330591 -3.1864532679344296e-017 51.856124263570237
		-14.196954679523579 -3.1845116941790764e-017 50.662265615258605
		-30.308476198079049 -3.1890523679698519e-017 40.297269720795455
		-37.196450026570062 -3.1784979224566061e-017 14.155644821823515
		-25.078066756612891 -3.2139352752954168e-017 -10.06877104732683
		2.3449239110992788 -3.0826142409147362e-017 -19.256347741000042
		27.024431692233104 -3.5724097814829272e-017 -8.6042904808088085
		38.173991862534393 -1.7445998505693772e-017 16.262529501028979
		30.477814133710645 -8.3387846562643909e-017 41.246493894998153
		13.428091041097192 7.557443300658784e-017 50.491939343739716
		9.451866201865645 -6.9247485508454368e-017 52.021673714496607
		8.4587102529027565 6.0841196462608979e-016 52.132761832434227
		7.816667377146274 -1.3518604735763146e-014 52.089263108277159
		7.6109935587987048 -3.1861976772578494e-017 52.123754678574741
		7.3081965366208186 1.7449946612094955e-014 50.724812521316743
		7.4659811589218172 -2.1327712525893902e-014 22.621649652520201
		7.3434286207118378 -3.1861656122838154e-017 24.484663477448692
		7.3243597175483277 0 24.470066259875576
		19.861486412761838 0 24.340147184203378
		19.861486551972469 -3.1861656122838154e-017 24.423625252773483
		19.861486412761838 0 24.340147184203367
		0.47738718279924541 0 -0.30839585214669557
		-8.1462376574799948e-005 -3.1861656122838154e-017 -0.57814487486535693
		0.47738718279924541 0 -0.30839585214669557
		-19.731567333544714 0 24.470066259875576
		-19.731567482339273 -3.1861656122838154e-017 24.484663477448692
		-19.731567333544714 0 24.470066259875576
		-6.5338827514425333 0 24.470066259875576
		-7.3384937059875623 -3.1861656122838154e-017 24.451171393991348
		-7.3556086251466324 -1.5678800422071051e-017 24.343861758648401
		-7.0643758539202173 -3.220671126663329e-017 24.248090595126598
		-7.4972875056475914 -3.1851459313124017e-017 51.984383263879991
		-6.9295323784330591 -3.1864532679344296e-017 51.856124263570237
		-14.196954679523579 -3.1845116941790764e-017 50.662265615258605
		-30.308476198079049 -3.1890523679698519e-017 40.297269720795455
		;
createNode transform -n "inthazelcharmhouse_41B_lights:set_key_light" -p "inthazelcharmhouse_41B_lights:set_key_direction";
	rename -uid "B12283CE-4D8E-811B-FAC8-99906B5358EA";
	setAttr ".t" -type "double3" 0 203.91550792972677 115.67010253574401 ;
	setAttr ".r" -type "double3" -24.91725425337485 0 0 ;
	setAttr ".s" -type "double3" 200 200.00000000000003 199.99999999999997 ;
	setAttr ".rp" -type "double3" 1.5258133874483746e-015 6.2450045135165063e-015 3.330669073875469e-014 ;
	setAttr ".rpt" -type "double3" 0 1.3451104101834272e-014 -5.7313569283872495e-015 ;
	setAttr ".mntl" -type "double3" 0 -1 -1 ;
	setAttr ".mxtl" -type "double3" 0 1 1 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
	setAttr ".mnrl" -type "double3" -24.92 0 0 ;
	setAttr ".mxrl" -type "double3" -24.92 0 0 ;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode spotLight -n "inthazelcharmhouse_41B_lights:charmhouse_for_shading_01_base_lighting_spotLightShape1" 
		-p "inthazelcharmhouse_41B_lights:set_key_light";
	rename -uid "59DE8B88-46E3-2971-27E7-2A8AC236EC18";
	setAttr -k off ".v";
	setAttr ".in" 0.75;
	setAttr ".sc" -type "float3" 0.34999999 0.34999999 0.34999999 ;
	setAttr ".shr" 10;
	setAttr ".col" 4850.4969331345183;
	setAttr ".lr" 750;
	setAttr ".ca" 90;
	setAttr ".phi" 8000;
	setAttr ".atyp" 1;
createNode transform -n "inthazelcharmhouse_41B_lights:set_constrained_lights" -p
		 "inthazelcharmhouse_41B_lights:setlighting";
	rename -uid "839A7C5A-4169-3D33-6681-3287FAF8587F";
	setAttr ".v" no;
createNode transform -n "inthazelcharmhouse_41B_lights:set_fill_UP" -p "inthazelcharmhouse_41B_lights:set_constrained_lights";
	rename -uid "59BB8BF0-4FAC-64C0-7510-EE9E7C9C71BC";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -38.85 0.48 0 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -38.85 0.48 0 ;
	setAttr ".mxrl" -type "double3" -38.85 0.48 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:set_fill_UPShape" -p
		 "inthazelcharmhouse_41B_lights:set_fill_UP";
	rename -uid "4B2BBE8E-49FC-78DB-F078-1EAC21BCFF1F";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:set_fill_DOWN_R" -p "inthazelcharmhouse_41B_lights:set_constrained_lights";
	rename -uid "B245850E-4A62-7C01-AEC0-47A131ABEC80";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".mxrl" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:set_fill_DOWN_RShape" 
		-p "inthazelcharmhouse_41B_lights:set_fill_DOWN_R";
	rename -uid "7B2EDCB2-45C7-DE83-B04C-038ACA224C22";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:set_fill_DOWN_L" -p "inthazelcharmhouse_41B_lights:set_constrained_lights";
	rename -uid "E87A7804-4A11-DFB1-CA43-628068F458E5";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".mxrl" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:set_fill_DOWN_LShape" 
		-p "inthazelcharmhouse_41B_lights:set_fill_DOWN_L";
	rename -uid "85AE52FD-43CD-9A4E-E567-81802EB9CD1E";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode parentConstraint -n "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1" 
		-p "inthazelcharmhouse_41B_lights:set_constrained_lights";
	rename -uid "308AE06E-4C51-A8A2-9141-DC98FB71FB59";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "set_camera_forlightingW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "inthazelcharmhouse_41B_lights:set_ambient" -p "inthazelcharmhouse_41B_lights:setlighting";
	rename -uid "06D28EBB-413A-B361-CEA9-7AAD37164B2C";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
createNode ambientLight -n "inthazelcharmhouse_41B_lights:set_ambientShape" -p "inthazelcharmhouse_41B_lights:set_ambient";
	rename -uid "642001EA-4844-CD07-61B1-EFA498B70B81";
	setAttr -k off ".v";
	setAttr ".in" 0.25;
	setAttr ".urs" no;
	setAttr ".as" 0;
createNode transform -n "inthazelcharmhouse_41B_lights:set_other" -p "inthazelcharmhouse_41B_lights:setlighting";
	rename -uid "1C8BD76F-46E4-FD1D-75C7-1F962C5761A7";
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "ACF48146-44AE-C5FC-41DE-B29DE10E6CB6";
	setAttr ".t" -type "double3" -191.43166732975294 119.56214811776199 0 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW";
	rename -uid "097F6618-42A6-1954-C279-7396AB0B5EA6";
	setAttr -k off ".v";
	setAttr ".in" 5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
	setAttr ".us" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW1" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "6A01C225-4A47-1D5C-02E8-BE8D44092B33";
	setAttr ".t" -type "double3" -155.12962954552876 119.56214811776199 -115.17318090819003 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape1" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW1";
	rename -uid "95FD31E1-4579-734E-0EE5-5A9BAD5E05E2";
	setAttr -k off ".v";
	setAttr ".in" 5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW2" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "F3232828-46D7-BF72-4C9A-C3A365A0C09C";
	setAttr ".t" -type "double3" -172.13494941049399 211.24334204947931 -54.041889103928092 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape2" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW2";
	rename -uid "F7F1D0F0-41BB-0A4B-3326-568418E3C122";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0 0 ;
	setAttr ".in" 5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW3" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "4B2D5093-4292-4C2E-4447-63AEC313A311";
	setAttr ".t" -type "double3" 205.82537857467972 64.232980506073986 -32.962551773774244 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape3" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW3";
	rename -uid "EB5CAB35-49B2-F3F5-B3BF-2CA4F9004D40";
	setAttr -k off ".v";
	setAttr ".in" 5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:VOL_spotLight" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "2D450B73-4461-AD94-F5CD-80859ECB207E";
	setAttr ".t" -type "double3" -524.89743497681229 516.1531307711515 -129.05428702849591 ;
	setAttr ".r" -type "double3" 136.44515159844599 -76.702709467011459 -180.00000000000003 ;
	setAttr ".s" -type "double3" 110.92373226923048 110.92373226923048 100.42456714465983 ;
createNode spotLight -n "inthazelcharmhouse_41B_lights:VOL_spotLightShape" -p "inthazelcharmhouse_41B_lights:VOL_spotLight";
	rename -uid "742AEF0B-4D38-5E88-FBA2-ADB7EF2D6360";
	setAttr -k off ".v";
	setAttr ".in" 60;
	setAttr ".shr" 20;
	setAttr ".col" 744.23419689170589;
	setAttr ".de" 1;
	setAttr ".esp" no;
	setAttr ".lr" 40;
	setAttr ".ca" 38.578461424697906;
	setAttr ".pa" 29.62203507743007;
	setAttr ".dro" 50;
	setAttr ".fsp" 5;
	setAttr ".fin" 20;
	setAttr ".phi" 8000;
createNode renderCone -n "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:coneShape1" 
		-p "inthazelcharmhouse_41B_lights:VOL_spotLight";
	rename -uid "63AC3202-4D6C-77B6-3228-77BDE183D30C";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "inthazelcharmhouse_41B_lights:ambientLight1" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "C99FA8CD-4398-AA83-F433-BEB3F5192370";
	setAttr ".t" -type "double3" 0 158.36692163373013 0 ;
createNode ambientLight -n "inthazelcharmhouse_41B_lights:ambientLightShape1" -p "inthazelcharmhouse_41B_lights:ambientLight1";
	rename -uid "89EB2F5C-4941-1FDF-0204-BBA4AD4DCB4E";
	setAttr -k off ".v";
	setAttr ".in" 0.40000000596046448;
	setAttr ".urs" no;
	setAttr ".shr" 20;
	setAttr ".as" 0;
	setAttr ".sr" 10;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW4" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "D34BB10D-40DB-6C43-50FD-08A7027BCB9F";
	setAttr ".t" -type "double3" 198.40496041069051 135.05120911122597 -47.043616557433573 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape4" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW4";
	rename -uid "C100FB5F-4D6B-01CD-33D1-298563A7264E";
	setAttr -k off ".v";
	setAttr ".in" 1.5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW5" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "E33170C9-4B04-B292-CE34-6597EE5C0CBF";
	setAttr ".t" -type "double3" 201.02448043634567 135.05120911122597 -15.623508666216136 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape5" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW5";
	rename -uid "DA478105-4A99-C96E-FDB6-69A3F1D85428";
	setAttr -k off ".v";
	setAttr ".in" 1.5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW6" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "81D91CCA-486F-5FB9-1DE4-76B054FC2B0B";
	setAttr ".t" -type "double3" 201.02448043634567 124.49333800119595 16.83730823864197 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape6" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW6";
	rename -uid "2E89892C-4CE3-0ABB-526E-AD8AEDC7C725";
	setAttr -k off ".v";
	setAttr ".in" 1.5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_WNDOW7" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "B5559A1A-47D2-17D0-056B-F7BC370D58DF";
	setAttr ".t" -type "double3" 187.94919579758644 121.58333601187599 -77.439703148961968 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_WNDOWShape7" -p "inthazelcharmhouse_41B_lights:FILL_WNDOW7";
	rename -uid "9273306A-429D-D01B-90B4-EB8FC3029E39";
	setAttr -k off ".v";
	setAttr ".in" 1.5;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
	setAttr ".us" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_DOORWAY" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "C55AF940-497B-6C1A-1DA4-349952ABE4A4";
	setAttr ".t" -type "double3" 0 56.557808814354779 -226.21952944056227 ;
	setAttr ".r" -type "double3" 1.9878466759146984e-015 4.7708320221952752e-015 -2.3854160110976376e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_DOORWAY" -p "|inthazelcharmhouse_41B_lights:inthazelcharmhouse_41B_lights|inthazelcharmhouse_41B_lights:setlighting|inthazelcharmhouse_41B_lights:set_other|inthazelcharmhouse_41B_lights:FILL_DOORWAY";
	rename -uid "C0612CC1-4CE4-2757-406C-ACB0B4C05E24";
	setAttr -k off ".v";
	setAttr ".in" 8;
	setAttr ".urs" no;
	setAttr ".de" 1;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:FILL_SHD_pointLight" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "D5C88F7F-4B3E-942D-243D-F5B32B3AD88B";
	setAttr ".t" -type "double3" -0.16075352549876065 157.05125808387265 -1.0755803097075542 ;
	setAttr ".r" -type "double3" 179.26211180284807 47.219885137002166 -174.5624885269776 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode pointLight -n "inthazelcharmhouse_41B_lights:FILL_SHD_pointLightShape" 
		-p "inthazelcharmhouse_41B_lights:FILL_SHD_pointLight";
	rename -uid "C9C2AB41-4086-15B7-3FBA-68853994DE18";
	setAttr -k off ".v";
	setAttr ".in" 0.60000002384185791;
	setAttr ".shr" 60;
	setAttr ".esp" no;
	setAttr ".lr" 50;
	setAttr ".us" no;
	setAttr ".phi" 8000;
createNode transform -n "inthazelcharmhouse_41B_lights:constraint_ori2cam" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "0D9D0D75-4589-3549-F7A0-EF9AE49F64F7";
	setAttr ".v" no;
createNode transform -n "inthazelcharmhouse_41B_lights:fillRig_UP_directionalLight" 
		-p "inthazelcharmhouse_41B_lights:constraint_ori2cam";
	rename -uid "9D24DD11-498F-25E4-1DC6-55BF2E52D949";
	setAttr ".t" -type "double3" 467.9077400119553 0 -1030.1657294827655 ;
	setAttr ".r" -type "double3" -43.239108646531143 79.676991593595048 -0.19549428020508319 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999911 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:fillRig_UP_directionalLightShape" 
		-p "inthazelcharmhouse_41B_lights:fillRig_UP_directionalLight";
	rename -uid "9DB55BCA-415D-2482-25B8-8EBE665BEC7B";
	setAttr -k off ".v";
	setAttr ".in" 0.20000000298023224;
	setAttr ".urs" no;
	setAttr ".lls" 100;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:fillRig_DOWN_a_directionalLight" 
		-p "inthazelcharmhouse_41B_lights:constraint_ori2cam";
	rename -uid "089EE78F-4818-EBEB-FC8C-53BAFC690E19";
	setAttr ".t" -type "double3" 467.9077400119553 0 -1030.1657294827655 ;
	setAttr ".r" -type "double3" 63.668887075023584 54.938614017463209 173.36890341642109 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:fillRig_DOWN_a_directionalLightShape" 
		-p "inthazelcharmhouse_41B_lights:fillRig_DOWN_a_directionalLight";
	rename -uid "E534D926-4D18-6F03-984E-E983BC6BE3C1";
	setAttr -k off ".v";
	setAttr ".in" 0.20000000298023224;
	setAttr ".urs" no;
	setAttr ".lls" 100;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:fillRig_DOWN_b_directionalLight" 
		-p "inthazelcharmhouse_41B_lights:constraint_ori2cam";
	rename -uid "A4255496-4A23-3D76-2913-9FAFE055D589";
	setAttr ".t" -type "double3" 467.9077400119553 0 -1030.1657294827655 ;
	setAttr ".r" -type "double3" -124.20655065910942 27.6146213791829 -19.964505024859736 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999933 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:fillRig_DOWN_b_directionalLightShape" 
		-p "inthazelcharmhouse_41B_lights:fillRig_DOWN_b_directionalLight";
	rename -uid "B1DCEF97-4910-AF82-1A9C-3AB55EB2C84A";
	setAttr -k off ".v";
	setAttr ".in" 0.20000000298023224;
	setAttr ".urs" no;
	setAttr ".lls" 100;
	setAttr ".esp" no;
createNode transform -n "inthazelcharmhouse_41B_lights:sun_light" -p "inthazelcharmhouse_41B_lights:set_other";
	rename -uid "E89DDFD5-4251-DF7C-36D2-B5A44A4BCD81";
	setAttr ".v" no;
createNode transform -n "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:CharmhouseHazel_Dft_Bld:bounce_spotLight1" 
		-p "inthazelcharmhouse_41B_lights:sun_light";
	rename -uid "F0566EF8-4384-1B0B-B3C1-338B62A4B8BC";
	setAttr ".t" -type "double3" 7.1234192624995334 3.8601790716110567 3.5960581158854259 ;
	setAttr ".r" -type "double3" 30.000000000000018 252.14400414632902 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999956 ;
createNode spotLight -n "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:CharmhouseHazel_Dft_Bld:bounce_spotLightShape1" 
		-p "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:CharmhouseHazel_Dft_Bld:bounce_spotLight1";
	rename -uid "A937D569-4A88-4573-A3AB-BEA735C0E0DF";
	setAttr -k off ".v";
	setAttr ".in" 0.10000000149011612;
	setAttr ".urs" no;
	setAttr ".lls" 750;
	setAttr ".esp" no;
	setAttr ".ca" 65;
	setAttr ".pa" 59.999999999999993;
	setAttr ".dro" 1;
createNode transform -n "inthazelcharmhouse_41B_lights:setrimlighting" -p "inthazelcharmhouse_41B_lights:inthazelcharmhouse_41B_lights";
	rename -uid "6346F564-4E7F-D6DE-0735-2F98A6BB5F17";
	setAttr ".v" no;
createNode transform -n "inthazelcharmhouse_41B_lights:setrim_camera_forlighting" 
		-p "inthazelcharmhouse_41B_lights:setrimlighting";
	rename -uid "1324AE24-4DBB-48BB-9A46-79AE6AF65DC4";
createNode camera -n "inthazelcharmhouse_41B_lights:setrim_camera_forlightingShape" 
		-p "inthazelcharmhouse_41B_lights:setrim_camera_forlighting";
	rename -uid "1C98EE18-49B7-4859-7768-E4AA7BB9A5AD";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".pn" -type "double2" 0.49418701711645552 -0.22686395565219242 ;
	setAttr ".zom" 0.070305536474201388;
	setAttr ".fl" 50;
	setAttr ".ncp" 1;
	setAttr ".fcp" 100000;
	setAttr ".dr" yes;
createNode transform -n "inthazelcharmhouse_41B_lights:setrim_constrained_lights" 
		-p "inthazelcharmhouse_41B_lights:setrimlighting";
	rename -uid "93EC889D-4E49-14C9-22A3-DAA6B73021D4";
createNode transform -n "inthazelcharmhouse_41B_lights:setrim_red" -p "inthazelcharmhouse_41B_lights:setrim_constrained_lights";
	rename -uid "DB866832-447A-C790-48A3-F6954C34A984";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 36 25 -60 ;
	setAttr ".r" -type "double3" 133.39 59.999999999999993 180 ;
	setAttr ".mntl" -type "double3" 36 25 -60 ;
	setAttr ".mxtl" -type "double3" 36 25 -60 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" 133.39 59.999999999999993 180 ;
	setAttr ".mxrl" -type "double3" 133.39 59.999999999999993 180 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:setrim_redShape" -p
		 "inthazelcharmhouse_41B_lights:setrim_red";
	rename -uid "9B76EB46-47F4-2571-3EFF-46B203DD1291";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0 0 ;
	setAttr ".in" 3;
	setAttr ".shr" 20;
	setAttr ".lls" 25;
	setAttr ".lang" 15;
createNode transform -n "inthazelcharmhouse_41B_lights:setrim_blue" -p "inthazelcharmhouse_41B_lights:setrim_constrained_lights";
	rename -uid "766C8D6D-4A40-5A99-47AA-36A9D0C2FFA4";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" -36 25 -60 ;
	setAttr ".r" -type "double3" 133.01 -59.999999999999993 180 ;
	setAttr ".mntl" -type "double3" -36 25 -60 ;
	setAttr ".mxtl" -type "double3" -36 25 -60 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" 133.01 -59.999999999999993 180 ;
	setAttr ".mxrl" -type "double3" 133.01 -59.999999999999993 180 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "inthazelcharmhouse_41B_lights:setrim_blueShape" -p
		 "inthazelcharmhouse_41B_lights:setrim_blue";
	rename -uid "1F7AB935-4091-407E-88AD-05B1D7795AAF";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0 0 1 ;
	setAttr ".in" 3;
	setAttr ".shr" 20;
	setAttr ".lls" 25;
	setAttr ".lang" 15;
createNode parentConstraint -n "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1" 
		-p "inthazelcharmhouse_41B_lights:setrim_constrained_lights";
	rename -uid "7753E59F-46B6-5EA4-BC8E-24B0127C3CB6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "setrim_camera_forlightingW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:charprop_default_lights";
	rename -uid "716E98A9-4794-3C13-906C-5DBBA3C4CA7C";
	addAttr -ci true -h true -sn "object_id" -ln "object_id" -at "long";
	addAttr -ci true -h true -sn "object_in_set_id" -ln "object_in_set_id" -at "long";
	addAttr -ci true -h true -sn "object_in_layer_id" -ln "object_in_layer_id" -at "long";
	setAttr ".object_id" 3051;
	setAttr ".object_in_set_id" -1;
	setAttr ".object_in_layer_id" -1;
createNode transform -n "charprop_default_lights:charlighting" -p "charprop_default_lights:charprop_default_lights";
	rename -uid "BB32D7CC-4099-6D39-3432-D28D927239C4";
createNode transform -n "charprop_default_lights:char_camera_forlighting" -p "charprop_default_lights:charlighting";
	rename -uid "40E9467E-4EB1-176B-C2CA-D3AEF0225031";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode camera -n "charprop_default_lights:char_camera_forlightingShape" -p "charprop_default_lights:char_camera_forlighting";
	rename -uid "3B310E40-4841-80DE-E9F3-6F93ED0C2D3A";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".pn" -type "double2" 0.49418701711645552 -0.22686395565219242 ;
	setAttr ".zom" 0.070305536474201388;
	setAttr ".fl" 50;
	setAttr ".ncp" 1;
	setAttr ".fcp" 100000;
	setAttr ".coi" 74559.116600142006;
	setAttr ".tp" -type "double3" -3311.8948132646046 5091.4228926401411 4673.5216354452887 ;
createNode parentConstraint -n "char_camera_forlighting_parentConstraint1" -p "charprop_default_lights:char_camera_forlighting";
	rename -uid "AECBA48A-452F-066D-A3AA-1DA3D15F5513";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "POSW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 159.75878772659985 0 ;
	setAttr ".rst" -type "double3" 57.222277140575571 33.885433759352885 -190.77338666628972 ;
	setAttr ".rsrr" -type "double3" 0 159.75878772659985 0 ;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:char_key_direction" -p "charprop_default_lights:charlighting";
	rename -uid "DCDEEA5E-40E0-85D7-0DF1-4BB5612E6E56";
	setAttr ".s" -type "double3" 8 8 8 ;
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 0 0 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 0 ;
	setAttr ".mxrl" -type "double3" 0 45 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrze" yes;
	setAttr ".dh" yes;
	setAttr ".dla" yes;
createNode nurbsCurve -n "charprop_default_lights:charprop_default_lights_chardirection" 
		-p "charprop_default_lights:char_key_direction";
	rename -uid "8D882A91-4B94-A58B-B7DD-F98FC3C05032";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 32 2 no 3
		37 -0.10000000000000142 -0.050000000000000711 0 1 2 3 4 5 6 7 7.9000000000000004
		 8 8.0999999999999996 9 9 9 11 11 11 12 12 12 13 13 13 14 14 14 15 15 15 16 16.050000000000001
		 16.100000000000001 16.150000000000002 17.150000000000002 18.150000000000002
		35
		-4.3417185294079417 -1.4286396567895551e-014 32.474372614610814
		-14.196954679416862 -1.3757928045154073e-014 31.280513966190881
		-30.308476198017271 -9.7790520046323465e-015 20.915518071877329
		-37.196450026445113 1.1558813314723378e-015 -5.2261068271465376
		-25.078066756537766 1.1438369810357163e-014 -29.450522696262439
		2.3449239110944733 1.5601073929917014e-014 -38.638099389938425
		27.024431692151168 1.1438369486951553e-014 -27.986042129752573
		38.173991862424032 1.1558826861802034e-015 -3.1192221479173137
		30.477814133608916 -9.4145593422384818e-015 21.864742246009101
		13.428091041076858 -1.3466779540762261e-014 31.110187694802029
		5.6741453678033356 -1.4224762632503801e-014 32.639922065511058
		5.0484360827388972 -1.4235197587882722e-014 32.751010183599
		4.6439354707011971 -1.4257317067890065e-014 32.707511457179287
		4.5143566089033405 -1.4277229149839488e-014 32.742003029601442
		4.3235880710308567 1.7449946612094958e-014 31.343060872361157
		4.7277599280931817 -2.1327712525893902e-014 23.940519913577351
		4.5012770138339482 2.3167424268745124e-025 25.803533738502626
		4.4822081106910758 0 25.788936520932733
		12.537190802367816 0 25.659017445260528
		12.537190890036335 2.3167424268745124e-025 25.742495513827329
		12.537190802367816 0 25.65901744526052
		0.32479768918051022 0 12.797028953712195
		0.32479768805168929 2.3167424268745124e-025 12.527279931002964
		0.32479768918051022 0 12.797028953712195
		-12.407271726695598 0 25.788936520932733
		-12.407271820400602 2.3167424268745124e-025 25.803533738502626
		-12.407271726695598 0 25.788936520932733
		-4.0924508836744629 0 25.788936520932733
		-4.5993728284715409 2.3167424268745124e-025 25.770041655045709
		-4.6101555899486319 1.8680223898633128e-022 25.662732018414495
		-4.4266727752706974 6.6069781685048651e-021 25.566960856354569
		-4.6994162858596589 -9.5110285251940114e-022 32.602631614889702
		-4.3417185294079417 -1.4286396567895551e-014 32.474372614610814
		-14.196954679416862 -1.3757928045154073e-014 31.280513966190881
		-30.308476198017271 -9.7790520046323465e-015 20.915518071877329
		;
createNode transform -n "charprop_default_lights:char_key_light" -p "charprop_default_lights:char_key_direction";
	rename -uid "F267DBDD-46BD-937B-2BB1-7BB748C91912";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 62.42 108.21 ;
	setAttr ".r" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".mntl" -type "double3" 0 62.42 108.21 ;
	setAttr ".mxtl" -type "double3" 0 62.42 108.21 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".mxrl" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
	setAttr ".mnsl" -type "double3" 1 1 1 ;
	setAttr ".mxsl" -type "double3" 2.5 2.5 2.5 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".xsxe" yes;
	setAttr ".xsye" yes;
	setAttr ".xsze" yes;
createNode directionalLight -n "charprop_default_lights:char_key_lightShape" -p "charprop_default_lights:char_key_light";
	rename -uid "5037E345-49C6-BC54-DF60-DE9B78CF53AC";
	setAttr -k off ".v";
	setAttr ".in" 1.2000000476837158;
	setAttr ".sc" -type "float3" 0 0.012333321 0.185 ;
	setAttr ".shr" 20;
	setAttr ".lls" 50;
	setAttr ".lang" 15;
createNode transform -n "charprop_default_lights:char_constrained_lights" -p "charprop_default_lights:charlighting";
	rename -uid "D1AF7673-4F78-86B8-7B7D-65ADBB0FAABC";
createNode transform -n "charprop_default_lights:char_fill_UP" -p "charprop_default_lights:char_constrained_lights";
	rename -uid "06C14E14-4A4F-ADB8-5AB0-658A07629971";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -38.85 0.48 0 ;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -38.85 0.48 0 ;
	setAttr ".mxrl" -type "double3" -38.85 0.48 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:char_fill_UPShape" -p "charprop_default_lights:char_fill_UP";
	rename -uid "0C4160B8-46B4-4CC8-AE09-D9AC4D764C5B";
	setAttr -k off ".v";
	setAttr ".in" 0.40000000596046448;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode transform -n "charprop_default_lights:char_fill_DOWN_R" -p "charprop_default_lights:char_constrained_lights";
	rename -uid "6BFCC212-4A14-8ADB-F336-E8B146F901F3";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".mxrl" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:char_fill_DOWN_RShape" -p
		 "charprop_default_lights:char_fill_DOWN_R";
	rename -uid "ED144A9F-4073-EE10-C5CE-4AAAC58E8FA1";
	setAttr -k off ".v";
	setAttr ".in" 0.40000000596046448;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode transform -n "charprop_default_lights:char_fill_DOWN_L" -p "charprop_default_lights:char_constrained_lights";
	rename -uid "F5C5723A-4E97-3660-9F92-12B63F3A0850";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".mxrl" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:char_fill_DOWN_LShape" -p
		 "charprop_default_lights:char_fill_DOWN_L";
	rename -uid "87BAFFB8-47E1-4867-FC52-EBB827267AD8";
	setAttr -k off ".v";
	setAttr ".in" 0.40000000596046448;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode parentConstraint -n "charprop_default_lights:char_constrained_lights_parentConstraint1" 
		-p "charprop_default_lights:char_constrained_lights";
	rename -uid "A86D2A0B-45B1-2D17-0822-C5BB75746FA7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "char_camera_forlightingW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 159.75878772659985 0 ;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:proplighting" -p "charprop_default_lights:charprop_default_lights";
	rename -uid "A3EF892C-4153-77B4-1D5F-EEAA91583FB9";
	setAttr ".v" no;
createNode transform -n "charprop_default_lights:prop_camera_forlighting" -p "charprop_default_lights:proplighting";
	rename -uid "2869C0D2-4ADF-AB70-B9FF-8CA681969C10";
createNode camera -n "charprop_default_lights:prop_camera_forlightingShape" -p "charprop_default_lights:prop_camera_forlighting";
	rename -uid "EAC1E129-4B8F-3ED4-45A8-D7B4058EDAC6";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".pn" -type "double2" 0.49418701711645552 -0.22686395565219242 ;
	setAttr ".zom" 0.070305536474201388;
	setAttr ".fl" 50;
	setAttr ".ncp" 1;
	setAttr ".fcp" 100000;
createNode parentConstraint -n "prop_camera_forlighting_parentConstraint1" -p "charprop_default_lights:prop_camera_forlighting";
	rename -uid "685F9FE9-4800-72BC-CFFE-229F55555916";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "POSW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 159.75878772659985 0 ;
	setAttr ".rst" -type "double3" 57.222277140575571 33.885433759352885 -190.77338666628972 ;
	setAttr ".rsrr" -type "double3" 0 159.75878772659985 0 ;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:prop_key_direction" -p "charprop_default_lights:proplighting";
	rename -uid "715E92F7-406B-A13E-200E-759E7FF20EEB";
	setAttr ".s" -type "double3" 2.5 2.5 2.5 ;
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 0 0 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 0 ;
	setAttr ".mxrl" -type "double3" 0 45 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrze" yes;
	setAttr ".dh" yes;
	setAttr ".dla" yes;
createNode nurbsCurve -n "charprop_default_lights:charprop_default_lights_propdirection" 
		-p "charprop_default_lights:prop_key_direction";
	rename -uid "F4D16D2B-4EFE-8FE4-BE16-4D919CE6AEC1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 32 2 no 3
		37 -0.10000000000000142 -0.050000000000000711 0 1 2 3 4 5 6 7 7.9000000000000004
		 8 8.0999999999999996 9 9 9 11 11 11 12 12 12 13 13 13 14 14 14 15 15 15 16 16.050000000000001
		 16.100000000000001 16.150000000000002 17.150000000000002 18.150000000000002
		35
		-4.3417185294079417 -1.4286396567895551e-014 32.474372614610814
		-14.196954679416862 -1.3757928045154073e-014 31.280513966190881
		-30.308476198017267 -9.7790520046323465e-015 20.915518071877329
		-37.196450026445113 1.1558813314723378e-015 -5.2261068271465376
		-25.078066756537766 1.1438369810357163e-014 -29.450522696262436
		2.3449239110944733 1.5601073929917014e-014 -38.638099389938425
		27.024431692151165 1.1438369486951553e-014 -27.986042129752573
		38.173991862424032 1.1558826861802034e-015 -3.1192221479173137
		30.477814133608916 -9.4145593422384818e-015 21.864742246009097
		13.428091041076858 -1.3466779540762261e-014 31.110187694802026
		5.6741453678033356 -1.4224762632503801e-014 32.639922065511058
		5.0484360827388972 -1.4235197587882722e-014 32.751010183599
		4.6439354707011971 -1.4257317067890065e-014 32.70751145717928
		4.5143566089033396 -1.4277229149839488e-014 32.742003029601442
		4.3235880710308567 1.7449946612094955e-014 31.343060872361153
		4.7277599280931817 -2.1327712525893902e-014 23.940519913577351
		4.5012770138339473 2.3167424268745124e-025 25.803533738502626
		4.4822081106910758 0 25.788936520932733
		12.537190802367814 0 25.659017445260528
		12.537190890036333 2.3167424268745124e-025 25.742495513827329
		12.537190802367814 0 25.659017445260517
		0.32479768918051022 0 12.797028953712195
		0.32479768805168929 2.3167424268745124e-025 12.527279931002962
		0.32479768918051022 0 12.797028953712195
		-12.407271726695596 0 25.788936520932733
		-12.407271820400601 2.3167424268745124e-025 25.803533738502626
		-12.407271726695596 0 25.788936520932733
		-4.0924508836744629 0 25.788936520932733
		-4.5993728284715409 2.3167424268745124e-025 25.770041655045706
		-4.6101555899486319 1.8680223898633128e-022 25.662732018414491
		-4.4266727752706974 6.6069781685048651e-021 25.566960856354569
		-4.6994162858596589 -9.5110285251940114e-022 32.602631614889702
		-4.3417185294079417 -1.4286396567895551e-014 32.474372614610814
		-14.196954679416862 -1.3757928045154073e-014 31.280513966190881
		-30.308476198017267 -9.7790520046323465e-015 20.915518071877329
		;
createNode transform -n "charprop_default_lights:prop_key_light" -p "charprop_default_lights:prop_key_direction";
	rename -uid "9333B85E-41B4-213B-2C89-2493BAEF8728";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 62.420000000000009 108.21 ;
	setAttr ".r" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".s" -type "double3" 2.5 2.5 2.5 ;
	setAttr ".mntl" -type "double3" 0 62.42 108.21 ;
	setAttr ".mxtl" -type "double3" 0 62.420000000000009 108.21 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".mxrl" -type "double3" -29.999999999999996 0 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
	setAttr ".mnsl" -type "double3" 1 1 1 ;
	setAttr ".mxsl" -type "double3" 2.5 2.5 2.5 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".xsxe" yes;
	setAttr ".xsye" yes;
	setAttr ".xsze" yes;
createNode directionalLight -n "charprop_default_lights:prop_key_lightShape" -p "charprop_default_lights:prop_key_light";
	rename -uid "0DAB9BF6-4EE0-2A1B-BF20-A8B5E423CAE2";
	setAttr -k off ".v";
	setAttr ".in" 0.37000000476837158;
	setAttr ".sc" -type "float3" 0 0.012333321 0.185 ;
	setAttr ".shr" 20;
	setAttr ".lls" 50;
	setAttr ".lang" 15;
createNode transform -n "charprop_default_lights:prop_constrained_lights" -p "charprop_default_lights:proplighting";
	rename -uid "9445F2C9-4B64-6F25-9F49-49A93388B6FB";
createNode transform -n "charprop_default_lights:prop_fill_UP" -p "charprop_default_lights:prop_constrained_lights";
	rename -uid "4E43BF0F-4A90-038A-BF65-F09A37C779BC";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -38.85 0.48 0 ;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -38.85 0.48 0 ;
	setAttr ".mxrl" -type "double3" -38.85 0.48 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:prop_fill_UPShape" -p "charprop_default_lights:prop_fill_UP";
	rename -uid "1D210D72-4D97-AE65-7308-0E8661741690";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode transform -n "charprop_default_lights:prop_fill_DOWN_R" -p "charprop_default_lights:prop_constrained_lights";
	rename -uid "246C6EC6-4FA2-B79F-5994-EE917EA7566D";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".mxrl" -type "double3" -101.09 45 9.6400000000000023 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:prop_fill_DOWN_RShape" -p
		 "charprop_default_lights:prop_fill_DOWN_R";
	rename -uid "0AC06C9F-43EC-6CDF-1228-20A69EE4A465";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode transform -n "charprop_default_lights:prop_fill_DOWN_L" -p "charprop_default_lights:prop_constrained_lights";
	rename -uid "FEEA07EF-4431-6C0C-38D1-35A17EB5009A";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".r" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mntl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mxtl" -type "double3" 0 -16.58 -46.98 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".mxrl" -type "double3" -89.43 -45 -30.16 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:prop_fill_DOWN_LShape" -p
		 "charprop_default_lights:prop_fill_DOWN_L";
	rename -uid "30B6F9CB-40C1-C379-C3F7-68BA71F855A3";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".lls" 10;
	setAttr ".esp" no;
createNode parentConstraint -n "charprop_default_lights:prop_constrained_lights_parentConstraint1" 
		-p "charprop_default_lights:prop_constrained_lights";
	rename -uid "3B057022-4654-FF43-B231-17A2543AC8A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "prop_camera_forlightingW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 159.75878772659985 0 ;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:prop_ambient" -p "charprop_default_lights:proplighting";
	rename -uid "A19DD259-4447-4406-C171-5980AD005CA4";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
createNode ambientLight -n "charprop_default_lights:prop_ambientShape" -p "charprop_default_lights:prop_ambient";
	rename -uid "9E5B6476-497D-C329-8343-0DBB98172B18";
	setAttr -k off ".v";
	setAttr ".in" 0.25;
	setAttr ".urs" no;
	setAttr ".as" 0;
createNode transform -n "charprop_default_lights:rimlighting" -p "charprop_default_lights:charprop_default_lights";
	rename -uid "5023CEB6-4B02-223A-8B5B-03BA600FBEAF";
	setAttr ".v" no;
createNode transform -n "charprop_default_lights:rim_camera_forlighting" -p "charprop_default_lights:rimlighting";
	rename -uid "130244B3-4F80-A089-F311-7398EC6BF71D";
createNode camera -n "charprop_default_lights:rim_camera_forlightingShape" -p "charprop_default_lights:rim_camera_forlighting";
	rename -uid "493AEA5D-4AD8-C799-90BD-A6817091C6BB";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".pn" -type "double2" 0.49418701711645552 -0.22686395565219242 ;
	setAttr ".zom" 0.070305536474201388;
	setAttr ".fl" 50;
	setAttr ".ncp" 1;
	setAttr ".fcp" 100000;
	setAttr ".dr" yes;
createNode parentConstraint -n "rim_camera_forlighting_parentConstraint1" -p "charprop_default_lights:rim_camera_forlighting";
	rename -uid "7DB16582-4E8C-DA13-09D7-C1AE8670C9B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "POSW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 159.75878772659985 0 ;
	setAttr ".rst" -type "double3" 57.222277140575571 33.885433759352885 -190.77338666628972 ;
	setAttr ".rsrr" -type "double3" 0 159.75878772659985 0 ;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:rim_constrained_lights" -p "charprop_default_lights:rimlighting";
	rename -uid "1F54C66F-43A6-1244-4A70-5E91BE8C88DA";
createNode transform -n "charprop_default_lights:rim_red" -p "charprop_default_lights:rim_constrained_lights";
	rename -uid "3805DC5A-43EF-2F85-BDD0-689FDE35984E";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 36 25 -60 ;
	setAttr ".r" -type "double3" 133.39 59.999999999999993 180 ;
	setAttr ".mntl" -type "double3" 36 25 -60 ;
	setAttr ".mxtl" -type "double3" 36 25 -60 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" 133.39 59.999999999999993 180 ;
	setAttr ".mxrl" -type "double3" 133.39 59.999999999999993 180 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:rim_redShape" -p "charprop_default_lights:rim_red";
	rename -uid "4F4BD9C3-428D-540E-7CEA-F8B685C0CC21";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0 0 ;
	setAttr ".in" 3;
	setAttr ".shr" 10;
	setAttr ".rdl" 1;
	setAttr ".lls" 25;
	setAttr ".esp" no;
	setAttr ".lang" 6;
	setAttr ".phi" 8000;
createNode transform -n "charprop_default_lights:rim_blue" -p "charprop_default_lights:rim_constrained_lights";
	rename -uid "87A80F1B-484C-AAD8-3746-94AD7C2FBC69";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" -36 25 -60 ;
	setAttr ".r" -type "double3" 133.01 -59.999999999999993 180 ;
	setAttr ".mntl" -type "double3" -36 25 -60 ;
	setAttr ".mxtl" -type "double3" -36 25 -60 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" 133.01 -59.999999999999993 180 ;
	setAttr ".mxrl" -type "double3" 133.01 -59.999999999999993 180 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode directionalLight -n "charprop_default_lights:rim_blueShape" -p "charprop_default_lights:rim_blue";
	rename -uid "889DFC37-4CF2-EFC2-1F11-5D8D72E50B46";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0 0 1 ;
	setAttr ".in" 3;
	setAttr ".shr" 10;
	setAttr ".rdl" 1;
	setAttr ".lls" 25;
	setAttr ".esp" no;
	setAttr ".lang" 6;
	setAttr ".phi" 8000;
createNode parentConstraint -n "charprop_default_lights:rim_constrained_lights_parentConstraint1" 
		-p "charprop_default_lights:rim_constrained_lights";
	rename -uid "E1CA110B-4333-49A8-C8F0-2982AF635B11";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rim_camera_forlightingW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 159.75878772659985 0 ;
	setAttr -k on ".w0";
createNode transform -n "charprop_default_lights:shadowlighting" -p "charprop_default_lights:charprop_default_lights";
	rename -uid "B97B3174-4F16-AA49-9D8F-EDA51A668028";
	setAttr ".v" no;
createNode transform -n "charprop_default_lights:charpropshadowlight" -p "charprop_default_lights:shadowlighting";
	rename -uid "B5D26F2B-459A-F20F-BBBD-DB831B96D75E";
	addAttr -ci true -sn "miLabel" -ln "miLabel" -at "long";
	setAttr ".t" -type "double3" 0 100 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 50 50 50 ;
createNode directionalLight -n "charprop_default_lights:charpropshadowlightShape" 
		-p "charprop_default_lights:charpropshadowlight";
	rename -uid "3E6EFE75-467A-0144-808B-88A8F9E78B8A";
	setAttr -k off ".v";
	setAttr ".shr" 32;
	setAttr ".esp" no;
	setAttr ".lang" 4;
parent -s -nc -r -add "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:label_main|CAM:sceneInfo|CAM:sceneInfoShape" "CAM:sceneInfo1" ;
parent -s -nc -r -add "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:users|CAM:user_is_ANIMATION|CAM:label_animation|CAM:animationInfo" "CAM:label_animation_shadow" ;
parent -s -nc -r -add "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:users|CAM:user_is_LAYOUT|CAM:label_layout|CAM:layoutInfo" "CAM:label_layout_shadow" ;
parent -s -nc -r -add "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:users|CAM:user_is_LIPSYNC|CAM:label_lipsync|CAM:lipsyncInfo" "CAM:label_lipsync_shadow" ;
createNode materialInfo -n "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:materialInfo8";
	rename -uid "BDD93B79-49E6-37D7-E0EF-70AE86D19E63";
createNode shadingEngine -n "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFogSE1";
	rename -uid "5D698996-4120-4568-AC65-A2B3F7C9D347";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lightFog -n "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFog2";
	rename -uid "50B593A5-43C9-8D86-1F97-59B244DCC65B";
	setAttr ".c" -type "float3" 0.21805142 0.21805142 0.21805142 ;
	setAttr ".d" 2;
	setAttr ".fd" yes;
createNode animCurveTU -n "CAM_SEQUENCE";
	rename -uid "23B573D5-498E-74CB-131F-FE987EDB5029";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 10 63 10 164 10;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "CAM_SCENE";
	rename -uid "9D5C23C2-4707-0BC4-E8EF-E88B04EC59D6";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 34 63 35 164 36;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "CAM_LETTER";
	rename -uid "6D1D1478-42CC-F2BB-D0DD-FF9876266997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 63 0 164 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "CAM_fulcrumVis";
	rename -uid "4D8A5984-4851-ED48-235B-4A8E6C133476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "CAM_fulcrumSize";
	rename -uid "7C8DA5CA-41CD-1DEB-CEFE-65B7E64EEF4A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3;
createNode animCurveTU -n "CAM_object_id";
	rename -uid "EB877F6A-42AE-B238-5C39-5680DB73BC1F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27;
createNode animCurveTU -n "CAM_object_in_set_id";
	rename -uid "7900BD94-4CFE-E1A8-36D8-8FA2457A81CB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTU -n "CAM_object_in_layer_id";
	rename -uid "D48C702C-426A-650F-12BE-E9BF5004978A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTU -n "POS_FOV_plus";
	rename -uid "ADEDE46F-4E36-F587-A01A-1D84013F427F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 15 63 15 164 45;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "POS_farClip";
	rename -uid "FA7AB0AA-4A26-FA4E-2278-61842D4DF2EB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 100000 164 100000;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "POS_nearClip";
	rename -uid "A27A2840-4261-4B24-E605-AF9EF65EA03D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 164 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "POS_translateX";
	rename -uid "99F98627-4F4E-6A0A-55A9-2A955372632A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 83.071590584072666 63 38.603158893164533
		 164 57.222277140575571;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "POS_translateY";
	rename -uid "082AA0CB-470C-3273-AF76-8285FF9CBCE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 37.820000110870588 63 34.408835808652235
		 164 33.885433759352885;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "POS_translateZ";
	rename -uid "92D9AFB4-4A1F-0E48-9C6D-FC98646D32E8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -12.670368514990955 63 -43.250573755708594
		 164 -190.77338666628972;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "POS_rotateX";
	rename -uid "C07119E2-481F-17A9-AF7E-5D9392C1EEAD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 164 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "POS_rotateY";
	rename -uid "87EC2724-4F21-C353-E7C1-B39A50B9C8EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 46.828895920345516 164 159.75878772659985;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "POS_rotateZ";
	rename -uid "5D1B1BFD-46B5-3946-020B-5695EB90C119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 164 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode plusMinusAverage -n "CAM:CAM_focalLengthControl";
	rename -uid "F945A199-487D-0803-2848-45BFA02A641F";
	setAttr ".i1[0]"  0;
	setAttr -s 2 ".i2[0:1]" -type "float2" 45 0 35 0;
createNode multiplyDivide -n "CAM:CAM_guides_to_FOV";
	rename -uid "3C1410D9-42D7-64CF-14DF-4591D33107FD";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 35 0 0 ;
createNode multiplyDivide -n "CAM:CAM_clippingControl01";
	rename -uid "FDE45C62-4FBD-483B-F0A5-1A92C46D2195";
	setAttr ".i1" -type "float3" 1 1 1 ;
	setAttr ".i2" -type "float3" -1 1.51 1 ;
createNode plusMinusAverage -n "CAM:CAM_clippingControl02";
	rename -uid "856EEB63-4C26-2C8F-7198-1A85FA38BD6B";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "CAM:CAM_displayUser_condition2";
	rename -uid "12BCE89E-4830-0A3B-5E96-5F853128EF88";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "CAM:CAM_tvAdjust_multiplier";
	rename -uid "33B1D861-4743-2936-6485-6E90FAE0F3E5";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode condition -n "CAM:CAM_displayUser_condition1";
	rename -uid "FF48BA74-4321-8C64-2F8F-3AB8B81F41AD";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode materialInfo -n "CAM:materialInfo2";
	rename -uid "C4526DF8-4091-71A2-89AF-F0ABFA7E877E";
createNode shadingEngine -n "CAM:lambert2SG";
	rename -uid "67A2CF42-4281-520E-5747-FD9F0CD5328E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "CAM:camera_HUD";
	rename -uid "D7AFF557-45DF-E51E-E240-3FB81792CC19";
	setAttr ".c" -type "float3" 0.64999998 0.64999998 0.64999998 ;
	setAttr ".it" -type "float3" 0.30000001 0.30000001 0.30000001 ;
createNode multiplyDivide -n "CAM:CAM_fulcrumScaler";
	rename -uid "BB088BD9-4489-5DDA-315A-C0B5CC09E421";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "746E49BA-4AE7-1F46-FDC2-5BB2DA4B6A2F";
	setAttr -s 88 ".lnk";
	setAttr -s 89 ".slnk";
select -ne :time1;
	setAttr ".o" 300;
	setAttr ".unw" 300;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 87 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 194 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 1742 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 12 ".r";
select -ne :lightList1;
	setAttr -s 35 ".l";
select -ne :defaultTextureList1;
	setAttr -s 208 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 197 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 22 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".w" 480;
	setAttr ".h" 270;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777700424194336;
	setAttr ".ldar" yes;
select -ne :defaultLightSet;
	setAttr -s 35 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 21 ".sol";
connectAttr "CAM_SEQUENCE.o" "CAM:CAM.SEQUENCE";
connectAttr "CAM_SCENE.o" "CAM:CAM.SCENE";
connectAttr "CAM_LETTER.o" "CAM:CAM.LETTER";
connectAttr "CAM_fulcrumVis.o" "CAM:CAM.fulcrumVis";
connectAttr "CAM_fulcrumSize.o" "CAM:CAM.fulcrumSize";
connectAttr "CAM_object_id.o" "CAM:CAM.object_id";
connectAttr "CAM_object_in_set_id.o" "CAM:CAM.object_in_set_id";
connectAttr "CAM_object_in_layer_id.o" "CAM:CAM.object_in_layer_id";
connectAttr "CAM:cameraShape.fl" "CAM:POS.currentFOV";
connectAttr "POS_FOV_plus.o" "CAM:POS.FOV_plus";
connectAttr "POS_farClip.o" "CAM:POS.farClip";
connectAttr "POS_nearClip.o" "CAM:POS.nearClip";
connectAttr "POS_translateX.o" "CAM:POS.tx";
connectAttr "POS_translateY.o" "CAM:POS.ty";
connectAttr "POS_translateZ.o" "CAM:POS.tz";
connectAttr "POS_rotateX.o" "CAM:POS.rx";
connectAttr "POS_rotateY.o" "CAM:POS.ry";
connectAttr "POS_rotateZ.o" "CAM:POS.rz";
connectAttr "CAM:camera_aim.tx" "CAM:CAMGRP.tg[0].ttx";
connectAttr "CAM:camera_aim.ty" "CAM:CAMGRP.tg[0].tty";
connectAttr "CAM:camera_aim.tz" "CAM:CAMGRP.tg[0].ttz";
connectAttr "CAM:camera_aim.rp" "CAM:CAMGRP.tg[0].trp";
connectAttr "CAM:camera_aim.rpt" "CAM:CAMGRP.tg[0].trt";
connectAttr "CAM:camera_aim.pm" "CAM:CAMGRP.tg[0].tpm";
connectAttr "CAM:camera.pim" "CAM:CAMGRP.cpim";
connectAttr "CAM:camera.t" "CAM:CAMGRP.ct";
connectAttr "CAM:camera.rp" "CAM:CAMGRP.crp";
connectAttr "CAM:camera.rpt" "CAM:CAMGRP.crt";
connectAttr "CAM:camera_up.wm" "CAM:CAMGRP.wum";
connectAttr "CAM:CAMGRP.crx" "CAM:camera.rx" -l on;
connectAttr "CAM:CAMGRP.cry" "CAM:camera.ry" -l on;
connectAttr "CAM:CAMGRP.crz" "CAM:camera.rz" -l on;
connectAttr "CAM:CAM_focalLengthControl.o2x" "CAM:cameraShape.fl";
connectAttr "CAM:CAMGRP.db" "CAM:cameraShape.coi";
connectAttr "CAM:POS.farClip" "CAM:cameraShape.fcp";
connectAttr "CAM:POS.nearClip" "CAM:cameraShape.ncp";
connectAttr "CAM:CAM_guides_to_FOV.ox" "CAM:GUIDES.sx";
connectAttr "CAM:CAM_guides_to_FOV.ox" "CAM:GUIDES.sy";
connectAttr "CAM:CAM_clippingControl01.ox" "CAM:lock_to_clipping.tz";
connectAttr "CAM:CAM_clippingControl02.o1" "CAM:lock_to_clipping.sx";
connectAttr "CAM:CAM_clippingControl02.o1" "CAM:lock_to_clipping.sy";
connectAttr "CAM:CAM_clippingControl02.o1" "CAM:lock_to_clipping.sz";
connectAttr "CAM:CAM_displayUser_condition2.ocg" "CAM:TV_4x3_adjust.v";
connectAttr "CAM:CAM_tvAdjust_multiplier.ox" "CAM:TV_4x3_adjust.tx" -l on;
connectAttr "CAM:sceneInfoLocatorShape.wm" "|CAM:CAM|CAM:POS|CAM:TILT|CAM:CAMGRP|CAM:GUIDES|CAM:lock_to_clipping|CAM:sceneInfoLocator|CAM:label_main|CAM:sceneInfo|CAM:sceneInfoShape.dom"
		 -na;
connectAttr "CAM:CAM.hudShadow" "CAM:label_main_shadow.v";
connectAttr "CAM:CAM.showUser" "CAM:users.v";
connectAttr "CAM:CAM_displayUser_condition1.ocr" "CAM:user_is_ANIMATION.v";
connectAttr "CAM:CAM_displayUser_condition2.ocg" "CAM:user_is_ANIMATION.lodv";
connectAttr "CAM:CAM.hudShadow" "CAM:label_animation_shadow.v";
connectAttr "CAM:CAM_displayUser_condition1.ocg" "CAM:user_is_LAYOUT.v";
connectAttr "CAM:CAM_displayUser_condition2.ocg" "CAM:user_is_LAYOUT.lodv";
connectAttr "CAM:CAM.hudShadow" "CAM:label_layout_shadow.v";
connectAttr "CAM:CAM_displayUser_condition2.ocr" "CAM:user_is_LIPSYNC.v";
connectAttr "CAM:CAM.hudShadow" "CAM:label_lipsync_shadow.v";
connectAttr "CAM:CAM.fulcrumVis" "CAM:fulcrum.v" -l on;
connectAttr "CAM:CAM_fulcrumScaler.o" "CAM:fulcrum.s";
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.ctx" "inthazelcharmhouse_41B_lights:set_constrained_lights.tx"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.cty" "inthazelcharmhouse_41B_lights:set_constrained_lights.ty"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.ctz" "inthazelcharmhouse_41B_lights:set_constrained_lights.tz"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.crx" "inthazelcharmhouse_41B_lights:set_constrained_lights.rx"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.cry" "inthazelcharmhouse_41B_lights:set_constrained_lights.ry"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.crz" "inthazelcharmhouse_41B_lights:set_constrained_lights.rz"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights.ro" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.cro"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights.pim" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.cpim"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights.rp" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.crp"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights.rpt" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.crt"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.t" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].tt"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.rp" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].trp"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.rpt" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].trt"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.r" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].tr"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.ro" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].tro"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.s" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].ts"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_camera_forlighting.pm" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].tpm"
		;
connectAttr "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.w0" "inthazelcharmhouse_41B_lights:set_constrained_lights_parentConstraint1.tg[0].tw"
		;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:coneShape1.msg" "inthazelcharmhouse_41B_lights:VOL_spotLightShape.fg"
		;
connectAttr "inthazelcharmhouse_41B_lights:VOL_spotLightShape.ca" "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:coneShape1.ca"
		;
connectAttr "inthazelcharmhouse_41B_lights:VOL_spotLightShape.ed3" "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:coneShape1.cap"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.ctx" "inthazelcharmhouse_41B_lights:setrim_constrained_lights.tx"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.cty" "inthazelcharmhouse_41B_lights:setrim_constrained_lights.ty"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.ctz" "inthazelcharmhouse_41B_lights:setrim_constrained_lights.tz"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.crx" "inthazelcharmhouse_41B_lights:setrim_constrained_lights.rx"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.cry" "inthazelcharmhouse_41B_lights:setrim_constrained_lights.ry"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.crz" "inthazelcharmhouse_41B_lights:setrim_constrained_lights.rz"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights.ro" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.cro"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights.pim" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.cpim"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights.rp" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.crp"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights.rpt" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.crt"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.t" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].tt"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.rp" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].trp"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.rpt" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].trt"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.r" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].tr"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.ro" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].tro"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.s" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].ts"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_camera_forlighting.pm" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].tpm"
		;
connectAttr "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.w0" "inthazelcharmhouse_41B_lights:setrim_constrained_lights_parentConstraint1.tg[0].tw"
		;
connectAttr "char_camera_forlighting_parentConstraint1.ctx" "charprop_default_lights:char_camera_forlighting.tx"
		;
connectAttr "char_camera_forlighting_parentConstraint1.cty" "charprop_default_lights:char_camera_forlighting.ty"
		;
connectAttr "char_camera_forlighting_parentConstraint1.ctz" "charprop_default_lights:char_camera_forlighting.tz"
		;
connectAttr "char_camera_forlighting_parentConstraint1.crx" "charprop_default_lights:char_camera_forlighting.rx"
		;
connectAttr "char_camera_forlighting_parentConstraint1.cry" "charprop_default_lights:char_camera_forlighting.ry"
		;
connectAttr "char_camera_forlighting_parentConstraint1.crz" "charprop_default_lights:char_camera_forlighting.rz"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.ro" "char_camera_forlighting_parentConstraint1.cro"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.pim" "char_camera_forlighting_parentConstraint1.cpim"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.rp" "char_camera_forlighting_parentConstraint1.crp"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.rpt" "char_camera_forlighting_parentConstraint1.crt"
		;
connectAttr "CAM:POS.t" "char_camera_forlighting_parentConstraint1.tg[0].tt";
connectAttr "CAM:POS.rp" "char_camera_forlighting_parentConstraint1.tg[0].trp";
connectAttr "CAM:POS.rpt" "char_camera_forlighting_parentConstraint1.tg[0].trt";
connectAttr "CAM:POS.r" "char_camera_forlighting_parentConstraint1.tg[0].tr";
connectAttr "CAM:POS.ro" "char_camera_forlighting_parentConstraint1.tg[0].tro";
connectAttr "CAM:POS.s" "char_camera_forlighting_parentConstraint1.tg[0].ts";
connectAttr "CAM:POS.pm" "char_camera_forlighting_parentConstraint1.tg[0].tpm";
connectAttr "char_camera_forlighting_parentConstraint1.w0" "char_camera_forlighting_parentConstraint1.tg[0].tw"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.ctx" "charprop_default_lights:char_constrained_lights.tx"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.cty" "charprop_default_lights:char_constrained_lights.ty"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.ctz" "charprop_default_lights:char_constrained_lights.tz"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.crx" "charprop_default_lights:char_constrained_lights.rx"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.cry" "charprop_default_lights:char_constrained_lights.ry"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.crz" "charprop_default_lights:char_constrained_lights.rz"
		;
connectAttr "charprop_default_lights:char_constrained_lights.ro" "charprop_default_lights:char_constrained_lights_parentConstraint1.cro"
		;
connectAttr "charprop_default_lights:char_constrained_lights.pim" "charprop_default_lights:char_constrained_lights_parentConstraint1.cpim"
		;
connectAttr "charprop_default_lights:char_constrained_lights.rp" "charprop_default_lights:char_constrained_lights_parentConstraint1.crp"
		;
connectAttr "charprop_default_lights:char_constrained_lights.rpt" "charprop_default_lights:char_constrained_lights_parentConstraint1.crt"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.t" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].tt"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.rp" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].trp"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.rpt" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].trt"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.r" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].tr"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.ro" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].tro"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.s" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].ts"
		;
connectAttr "charprop_default_lights:char_camera_forlighting.pm" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].tpm"
		;
connectAttr "charprop_default_lights:char_constrained_lights_parentConstraint1.w0" "charprop_default_lights:char_constrained_lights_parentConstraint1.tg[0].tw"
		;
connectAttr "prop_camera_forlighting_parentConstraint1.ctx" "charprop_default_lights:prop_camera_forlighting.tx"
		;
connectAttr "prop_camera_forlighting_parentConstraint1.cty" "charprop_default_lights:prop_camera_forlighting.ty"
		;
connectAttr "prop_camera_forlighting_parentConstraint1.ctz" "charprop_default_lights:prop_camera_forlighting.tz"
		;
connectAttr "prop_camera_forlighting_parentConstraint1.crx" "charprop_default_lights:prop_camera_forlighting.rx"
		;
connectAttr "prop_camera_forlighting_parentConstraint1.cry" "charprop_default_lights:prop_camera_forlighting.ry"
		;
connectAttr "prop_camera_forlighting_parentConstraint1.crz" "charprop_default_lights:prop_camera_forlighting.rz"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.ro" "prop_camera_forlighting_parentConstraint1.cro"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.pim" "prop_camera_forlighting_parentConstraint1.cpim"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.rp" "prop_camera_forlighting_parentConstraint1.crp"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.rpt" "prop_camera_forlighting_parentConstraint1.crt"
		;
connectAttr "CAM:POS.t" "prop_camera_forlighting_parentConstraint1.tg[0].tt";
connectAttr "CAM:POS.rp" "prop_camera_forlighting_parentConstraint1.tg[0].trp";
connectAttr "CAM:POS.rpt" "prop_camera_forlighting_parentConstraint1.tg[0].trt";
connectAttr "CAM:POS.r" "prop_camera_forlighting_parentConstraint1.tg[0].tr";
connectAttr "CAM:POS.ro" "prop_camera_forlighting_parentConstraint1.tg[0].tro";
connectAttr "CAM:POS.s" "prop_camera_forlighting_parentConstraint1.tg[0].ts";
connectAttr "CAM:POS.pm" "prop_camera_forlighting_parentConstraint1.tg[0].tpm";
connectAttr "prop_camera_forlighting_parentConstraint1.w0" "prop_camera_forlighting_parentConstraint1.tg[0].tw"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.ctx" "charprop_default_lights:prop_constrained_lights.tx"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.cty" "charprop_default_lights:prop_constrained_lights.ty"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.ctz" "charprop_default_lights:prop_constrained_lights.tz"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.crx" "charprop_default_lights:prop_constrained_lights.rx"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.cry" "charprop_default_lights:prop_constrained_lights.ry"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.crz" "charprop_default_lights:prop_constrained_lights.rz"
		;
connectAttr "charprop_default_lights:prop_constrained_lights.ro" "charprop_default_lights:prop_constrained_lights_parentConstraint1.cro"
		;
connectAttr "charprop_default_lights:prop_constrained_lights.pim" "charprop_default_lights:prop_constrained_lights_parentConstraint1.cpim"
		;
connectAttr "charprop_default_lights:prop_constrained_lights.rp" "charprop_default_lights:prop_constrained_lights_parentConstraint1.crp"
		;
connectAttr "charprop_default_lights:prop_constrained_lights.rpt" "charprop_default_lights:prop_constrained_lights_parentConstraint1.crt"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.t" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].tt"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.rp" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].trp"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.rpt" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].trt"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.r" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].tr"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.ro" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].tro"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.s" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].ts"
		;
connectAttr "charprop_default_lights:prop_camera_forlighting.pm" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].tpm"
		;
connectAttr "charprop_default_lights:prop_constrained_lights_parentConstraint1.w0" "charprop_default_lights:prop_constrained_lights_parentConstraint1.tg[0].tw"
		;
connectAttr "rim_camera_forlighting_parentConstraint1.ctx" "charprop_default_lights:rim_camera_forlighting.tx"
		;
connectAttr "rim_camera_forlighting_parentConstraint1.cty" "charprop_default_lights:rim_camera_forlighting.ty"
		;
connectAttr "rim_camera_forlighting_parentConstraint1.ctz" "charprop_default_lights:rim_camera_forlighting.tz"
		;
connectAttr "rim_camera_forlighting_parentConstraint1.crx" "charprop_default_lights:rim_camera_forlighting.rx"
		;
connectAttr "rim_camera_forlighting_parentConstraint1.cry" "charprop_default_lights:rim_camera_forlighting.ry"
		;
connectAttr "rim_camera_forlighting_parentConstraint1.crz" "charprop_default_lights:rim_camera_forlighting.rz"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.ro" "rim_camera_forlighting_parentConstraint1.cro"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.pim" "rim_camera_forlighting_parentConstraint1.cpim"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.rp" "rim_camera_forlighting_parentConstraint1.crp"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.rpt" "rim_camera_forlighting_parentConstraint1.crt"
		;
connectAttr "CAM:POS.t" "rim_camera_forlighting_parentConstraint1.tg[0].tt";
connectAttr "CAM:POS.rp" "rim_camera_forlighting_parentConstraint1.tg[0].trp";
connectAttr "CAM:POS.rpt" "rim_camera_forlighting_parentConstraint1.tg[0].trt";
connectAttr "CAM:POS.r" "rim_camera_forlighting_parentConstraint1.tg[0].tr";
connectAttr "CAM:POS.ro" "rim_camera_forlighting_parentConstraint1.tg[0].tro";
connectAttr "CAM:POS.s" "rim_camera_forlighting_parentConstraint1.tg[0].ts";
connectAttr "CAM:POS.pm" "rim_camera_forlighting_parentConstraint1.tg[0].tpm";
connectAttr "rim_camera_forlighting_parentConstraint1.w0" "rim_camera_forlighting_parentConstraint1.tg[0].tw"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.ctx" "charprop_default_lights:rim_constrained_lights.tx"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.cty" "charprop_default_lights:rim_constrained_lights.ty"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.ctz" "charprop_default_lights:rim_constrained_lights.tz"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.crx" "charprop_default_lights:rim_constrained_lights.rx"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.cry" "charprop_default_lights:rim_constrained_lights.ry"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.crz" "charprop_default_lights:rim_constrained_lights.rz"
		;
connectAttr "charprop_default_lights:rim_constrained_lights.ro" "charprop_default_lights:rim_constrained_lights_parentConstraint1.cro"
		;
connectAttr "charprop_default_lights:rim_constrained_lights.pim" "charprop_default_lights:rim_constrained_lights_parentConstraint1.cpim"
		;
connectAttr "charprop_default_lights:rim_constrained_lights.rp" "charprop_default_lights:rim_constrained_lights_parentConstraint1.crp"
		;
connectAttr "charprop_default_lights:rim_constrained_lights.rpt" "charprop_default_lights:rim_constrained_lights_parentConstraint1.crt"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.t" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].tt"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.rp" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].trp"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.rpt" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].trt"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.r" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].tr"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.ro" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].tro"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.s" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].ts"
		;
connectAttr "charprop_default_lights:rim_camera_forlighting.pm" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].tpm"
		;
connectAttr "charprop_default_lights:rim_constrained_lights_parentConstraint1.w0" "charprop_default_lights:rim_constrained_lights_parentConstraint1.tg[0].tw"
		;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFogSE1.msg" "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:materialInfo8.sg"
		;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:coneShape1.iog" "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFogSE1.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFog2.oc" "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFogSE1.vs"
		;
connectAttr "CAM:POS.FOV_plus" "CAM:CAM_focalLengthControl.i2[0].i2x";
connectAttr "CAM:cameraShape.fl" "CAM:CAM_guides_to_FOV.i2x";
connectAttr "CAM:POS.nearClip" "CAM:CAM_clippingControl01.i1x";
connectAttr "CAM:POS.nearClip" "CAM:CAM_clippingControl01.i1y";
connectAttr "CAM:CAM_clippingControl01.oz" "CAM:CAM_clippingControl02.i1[0]";
connectAttr "CAM:CAM_clippingControl01.oy" "CAM:CAM_clippingControl02.i1[1]";
connectAttr "CAM:CAM.showUser" "CAM:CAM_displayUser_condition2.ft";
connectAttr "CAM:CAM.safeActionAdjust" "CAM:CAM_tvAdjust_multiplier.i1x";
connectAttr "CAM:CAM.showUser" "CAM:CAM_displayUser_condition1.ft";
connectAttr "CAM:lambert2SG.msg" "CAM:materialInfo2.sg";
connectAttr "CAM:camera_HUD.msg" "CAM:materialInfo2.m";
connectAttr "CAM:camera_HUD.oc" "CAM:lambert2SG.ss";
connectAttr "CAM:HUDshadeShape.iog" "CAM:lambert2SG.dsm" -na;
connectAttr "CAM:CAM.fulcrumSize" "CAM:CAM_fulcrumScaler.i1x";
connectAttr "CAM:CAM.fulcrumSize" "CAM:CAM_fulcrumScaler.i1y";
connectAttr "CAM:CAM.fulcrumSize" "CAM:CAM_fulcrumScaler.i1z";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "CAM:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFogSE1.pa" ":renderPartition.st"
		 -na;
connectAttr "CAM:camera_HUD.msg" ":defaultShaderList1.s" -na;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:lightFog2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "CAM:CAM_guides_to_FOV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CAM:CAM_focalLengthControl.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CAM:CAM_fulcrumScaler.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CAM:CAM_displayUser_condition1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "CAM:CAM_clippingControl01.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CAM:CAM_clippingControl02.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CAM:CAM_tvAdjust_multiplier.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "CAM:CAM_displayUser_condition2.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "inthazelcharmhouse_41B_lights:fillRig_UP_directionalLightShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:fillRig_DOWN_a_directionalLightShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:fillRig_DOWN_b_directionalLightShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_SHD_pointLightShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:CharmhouseHazel_Dft_Bld:bounce_spotLightShape1.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape.ltd" ":lightList1.l" 
		-na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape1.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape2.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape3.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:VOL_spotLightShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:ambientLightShape1.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape4.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape5.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape6.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOWShape7.ltd" ":lightList1.l"
		 -na;
connectAttr "|inthazelcharmhouse_41B_lights:inthazelcharmhouse_41B_lights|inthazelcharmhouse_41B_lights:setlighting|inthazelcharmhouse_41B_lights:set_other|inthazelcharmhouse_41B_lights:FILL_DOORWAY|inthazelcharmhouse_41B_lights:FILL_DOORWAY.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:charmhouse_for_shading_01_base_lighting_spotLightShape1.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:setrim_redShape.ltd" ":lightList1.l" 
		-na;
connectAttr "inthazelcharmhouse_41B_lights:setrim_blueShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_fill_UPShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_fill_DOWN_RShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_fill_DOWN_LShape.ltd" ":lightList1.l"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_ambientShape.ltd" ":lightList1.l"
		 -na;
connectAttr "charprop_default_lights:char_fill_UPShape.ltd" ":lightList1.l" -na;
connectAttr "charprop_default_lights:char_fill_DOWN_RShape.ltd" ":lightList1.l" 
		-na;
connectAttr "charprop_default_lights:char_fill_DOWN_LShape.ltd" ":lightList1.l" 
		-na;
connectAttr "charprop_default_lights:char_key_lightShape.ltd" ":lightList1.l" -na
		;
connectAttr "charprop_default_lights:prop_key_lightShape.ltd" ":lightList1.l" -na
		;
connectAttr "charprop_default_lights:prop_fill_UPShape.ltd" ":lightList1.l" -na;
connectAttr "charprop_default_lights:prop_fill_DOWN_RShape.ltd" ":lightList1.l" 
		-na;
connectAttr "charprop_default_lights:prop_fill_DOWN_LShape.ltd" ":lightList1.l" 
		-na;
connectAttr "charprop_default_lights:prop_ambientShape.ltd" ":lightList1.l" -na;
connectAttr "charprop_default_lights:rim_blueShape.ltd" ":lightList1.l" -na;
connectAttr "charprop_default_lights:rim_redShape.ltd" ":lightList1.l" -na;
connectAttr "charprop_default_lights:charpropshadowlightShape.ltd" ":lightList1.l"
		 -na;
connectAttr "CAM:Filmgate_4x3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CAM:TVsafe_4xShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CAM:Filmgate_16xShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CAM:fulcrumShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "inthazelcharmhouse_41B_lights:fillRig_UP_directionalLight.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:fillRig_DOWN_a_directionalLight.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:fillRig_DOWN_b_directionalLight.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_SHD_pointLight.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:CharmhouseHazel_Dft_Day:CharmhouseHazel_Dft_Bld_Litrig_v009:CharmhouseHazel_Dft_Bld_Litrig_v006:CharmhouseHazel_Dft_Bld:bounce_spotLight1.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW1.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW2.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW3.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:VOL_spotLight.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:ambientLight1.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW4.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW5.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW6.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:FILL_WNDOW7.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "|inthazelcharmhouse_41B_lights:inthazelcharmhouse_41B_lights|inthazelcharmhouse_41B_lights:setlighting|inthazelcharmhouse_41B_lights:set_other|inthazelcharmhouse_41B_lights:FILL_DOORWAY.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_key_light.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:setrim_red.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:setrim_blue.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_fill_UP.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_fill_DOWN_R.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_fill_DOWN_L.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "inthazelcharmhouse_41B_lights:set_ambient.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "charprop_default_lights:char_fill_UP.iog" ":defaultLightSet.dsm" -na
		;
connectAttr "charprop_default_lights:char_fill_DOWN_R.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "charprop_default_lights:char_fill_DOWN_L.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "charprop_default_lights:char_key_light.iog" ":defaultLightSet.dsm" 
		-na;
connectAttr "charprop_default_lights:prop_key_light.iog" ":defaultLightSet.dsm" 
		-na;
connectAttr "charprop_default_lights:prop_fill_UP.iog" ":defaultLightSet.dsm" -na
		;
connectAttr "charprop_default_lights:prop_fill_DOWN_R.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "charprop_default_lights:prop_fill_DOWN_L.iog" ":defaultLightSet.dsm"
		 -na;
connectAttr "charprop_default_lights:prop_ambient.iog" ":defaultLightSet.dsm" -na
		;
connectAttr "charprop_default_lights:rim_blue.iog" ":defaultLightSet.dsm" -na;
connectAttr "charprop_default_lights:rim_red.iog" ":defaultLightSet.dsm" -na;
connectAttr "charprop_default_lights:charpropshadowlight.iog" ":defaultLightSet.dsm"
		 -na;
// End of lights.ma
