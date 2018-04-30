xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 66;
 0.88827;8.07709;-8.34995;,
 0.83123;8.26567;-11.32871;,
 -3.14438;7.82726;-11.28032;,
 -3.08733;7.63867;-8.30156;,
 1.07803;5.33517;-8.03860;,
 1.51827;1.45303;-7.04204;,
 -2.22737;1.03998;-6.99645;,
 -2.66760;4.92212;-7.99301;,
 1.92526;-1.28516;-7.97575;,
 0.81478;-0.50964;-6.16240;,
 -1.09224;-0.71994;-6.13919;,
 -2.05035;-1.72357;-7.92736;,
 1.37060;1.99819;-1.15837;,
 0.52213;6.60625;-4.36468;,
 -2.31381;6.29351;-4.33016;,
 -2.06059;1.61982;-1.11661;,
 -5.15537;6.42354;-8.81882;,
 -5.41211;5.94157;-10.58296;,
 -3.91214;0.34497;-8.77117;,
 -3.40903;0.95836;-6.60391;,
 2.69841;1.63186;-6.67824;,
 3.27082;1.13708;-8.85859;,
 3.47141;6.92121;-10.69108;,
 3.15832;7.34034;-8.92001;,
 0.83123;8.26567;-11.32871;,
 0.99559;6.85551;-10.60118;,
 -2.98002;6.41710;-10.55279;,
 -3.14438;7.82726;-11.28032;,
 -2.66760;4.92212;-7.99301;,
 1.81437;-0.28669;-8.03957;,
 -2.05035;-1.72357;-7.92736;,
 -2.16123;-0.72511;-7.99119;,
 1.51827;1.45303;-7.04204;,
 -2.22737;1.03998;-6.99645;,
 0.96578;7.52961;-6.94253;,
 -3.08733;7.63867;-8.30156;,
 -3.00983;7.09120;-6.89415;,
 0.52213;6.60625;-4.36468;,
 -2.31381;6.29351;-4.33016;,
 0.81478;-0.50964;-6.16240;,
 2.20103;-0.82614;-1.85907;,
 -2.27235;-1.31944;-1.80463;,
 -1.09224;-0.71994;-6.13919;,
 -2.06059;1.61982;-1.11661;,
 -7.21803;8.42140;-11.81163;,
 -6.17588;7.95714;-9.51159;,
 -5.41211;5.94157;-10.58296;,
 -2.55555;-1.02855;-6.08385;,
 -3.20078;-1.20163;-8.28810;,
 -3.40903;0.95836;-6.60391;,
 -3.91214;0.34497;-8.77117;,
 3.80324;9.05760;-9.63305;,
 4.66359;9.73166;-11.95624;,
 3.15832;7.34034;-8.92001;,
 3.47141;6.92121;-10.69108;,
 2.92532;-0.52607;-8.36266;,
 2.31108;-0.49189;-6.14309;,
 3.27082;1.13708;-8.85859;,
 -3.20154;0.55748;-8.25722;,
 -4.36961;6.15092;-10.22793;,
 -4.00690;7.09317;-6.71757;,
 -2.84154;1.37262;-5.24085;,
 2.41718;6.89934;-10.31054;,
 2.54356;1.19102;-8.32714;,
 2.08725;1.91615;-5.30084;,
 1.94242;7.74924;-6.78998;;
 
 62;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;25,4,28,26;,
 4;29,8,30,31;,
 4;32,29,31,33;,
 4;34,0,35,36;,
 4;37,34,36,38;,
 4;39,40,41,42;,
 4;40,12,43,41;,
 4;27,44,45,35;,
 4;44,46,16,45;,
 4;42,47,48,30;,
 4;47,49,50,48;,
 4;0,51,52,24;,
 4;51,53,54,52;,
 4;8,55,56,39;,
 4;55,57,20,56;,
 4;33,58,59,28;,
 4;58,50,46,59;,
 4;38,60,61,43;,
 4;60,16,49,61;,
 4;4,62,63,32;,
 4;62,54,57,63;,
 4;12,64,65,37;,
 4;64,20,53,65;,
 3;27,26,44;,
 3;44,59,46;,
 3;59,44,26;,
 3;26,28,59;,
 3;25,24,52;,
 3;62,52,54;,
 3;52,62,25;,
 3;4,25,62;,
 3;31,30,48;,
 3;58,48,50;,
 3;48,58,31;,
 3;33,31,58;,
 3;36,35,45;,
 3;60,45,16;,
 3;45,60,36;,
 3;38,36,60;,
 3;8,29,55;,
 3;55,63,57;,
 3;63,55,29;,
 3;29,32,63;,
 3;42,41,47;,
 3;47,61,49;,
 3;61,47,41;,
 3;41,43,61;,
 3;0,34,51;,
 3;51,65,53;,
 3;65,51,34;,
 3;34,37,65;,
 3;40,39,56;,
 3;64,56,20;,
 3;56,64,40;,
 3;12,40,64;;
 
 MeshMaterialList {
  5;
  62;
  0,
  2,
  2,
  1,
  0,
  0,
  0,
  1,
  0,
  1,
  0,
  1,
  2,
  2,
  0,
  0,
  2,
  0,
  0,
  0,
  2,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  1,
  0,
  0,
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  1,
  2,
  0,
  1,
  1,
  0,
  0,
  0,
  1,
  2,
  0,
  0,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/NeoYurumu/yuruBody.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/NeoYurumu/yuruBody2.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/NeoYurumu/yuruEye.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/NeoYurumu/leye.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/NeoYurumu/reye.png";
   }
  }
 }
 MeshNormals {
  72;
  -0.169091;0.958651;0.228903;,
  -0.038378;0.973065;0.227312;,
  -0.211722;0.973512;0.086306;,
  -0.003450;0.996479;0.083771;,
  -0.157356;-0.638372;-0.753472;,
  0.274493;-0.590750;-0.758728;,
  -0.451518;0.071982;-0.889354;,
  0.403470;0.166265;-0.899760;,
  0.225580;-0.896524;0.381259;,
  -0.015602;-0.923121;0.384194;,
  0.147516;-0.977876;0.148313;,
  0.072687;-0.986128;0.149224;,
  -0.008164;0.182546;0.983163;,
  -0.142073;0.852796;0.502548;,
  -0.035097;0.864593;0.501246;,
  -0.888472;-0.261394;0.377215;,
  -0.909549;-0.212840;0.356960;,
  -0.909076;-0.331221;0.252733;,
  -0.929937;-0.255453;0.264503;,
  0.942385;-0.008616;0.334419;,
  0.932886;-0.060543;0.355047;,
  0.969337;-0.046008;0.241389;,
  0.965208;-0.124532;0.229923;,
  0.096144;-0.664645;-0.740948;,
  0.033183;-0.671588;-0.740181;,
  -0.298385;0.112794;-0.947757;,
  0.243765;0.172579;-0.954356;,
  -0.170389;0.931389;0.321685;,
  -0.028941;0.946987;0.319964;,
  0.060334;-0.993880;-0.092532;,
  0.155444;-0.983392;-0.093690;,
  0.034607;0.969092;0.244262;,
  0.101739;0.989599;0.101704;,
  -0.689817;-0.674422;0.263262;,
  -0.595976;-0.721918;0.351634;,
  -0.239027;0.938916;0.247593;,
  -0.312423;0.943927;0.106744;,
  0.826308;-0.507230;0.244809;,
  0.747222;-0.573796;0.335288;,
  0.579975;0.039042;-0.813699;,
  0.362408;-0.431573;-0.826079;,
  -0.947236;-0.085052;0.309046;,
  -0.879810;-0.115629;0.461046;,
  -0.593943;-0.090411;-0.799411;,
  -0.279431;-0.502352;-0.818267;,
  0.950163;0.124184;0.285952;,
  0.894694;0.080055;0.439448;,
  0.033959;-0.455103;-0.889791;,
  0.044624;-0.453927;-0.889921;,
  -0.152506;-0.079906;-0.985067;,
  0.142519;-0.047372;-0.988658;,
  0.037232;-0.230303;0.972407;,
  -0.845655;-0.462262;0.266798;,
  -0.831876;-0.381763;0.402789;,
  0.904506;-0.190283;0.381655;,
  0.932218;-0.266206;0.245160;,
  0.537453;-0.081545;-0.839342;,
  0.419467;-0.187611;-0.888172;,
  -0.921644;0.027205;0.387082;,
  -0.957430;0.027568;0.287345;,
  -0.389746;-0.276849;-0.878324;,
  -0.526801;-0.198905;-0.826388;,
  0.935050;0.236262;0.264312;,
  0.902611;0.228377;0.364880;,
  0.116600;-0.439017;-0.890881;,
  -0.039537;-0.456235;-0.888981;,
  0.384211;0.000743;-0.923245;,
  0.050122;0.960909;0.272291;,
  -0.397232;-0.085430;-0.913733;,
  -0.991126;-0.055233;0.120904;,
  -0.251709;0.927624;0.275964;,
  0.981965;0.162349;0.096890;;
  62;
  4;0,2,3,1;,
  4;4,6,7,5;,
  4;8,10,11,9;,
  4;12,13,14,12;,
  4;15,17,18,16;,
  4;19,21,22,20;,
  4;47,23,24,48;,
  4;23,4,5,24;,
  4;25,49,50,26;,
  4;6,25,26,7;,
  4;27,0,1,28;,
  4;13,27,28,14;,
  4;10,29,30,11;,
  4;51,12,12,51;,
  4;3,32,31,1;,
  4;52,17,15,53;,
  4;11,33,34,9;,
  4;33,16,18,34;,
  4;0,35,36,2;,
  4;54,20,22,55;,
  4;8,38,37,10;,
  4;38,21,19,37;,
  4;7,39,40,5;,
  4;39,56,57,40;,
  4;58,42,41,59;,
  4;42,15,16,41;,
  4;4,44,43,6;,
  4;44,60,61,43;,
  4;62,45,46,63;,
  4;45,19,20,46;,
  3;48,24,64;,
  3;64,40,57;,
  3;40,64,24;,
  3;24,5,40;,
  3;23,47,65;,
  3;44,65,60;,
  3;65,44,23;,
  3;4,23,44;,
  3;26,50,66;,
  3;39,66,56;,
  3;66,39,26;,
  3;7,26,39;,
  3;28,1,31;,
  3;42,53,15;,
  3;31,67,28;,
  3;14,28,67;,
  3;49,25,68;,
  3;68,43,61;,
  3;43,68,25;,
  3;25,6,43;,
  3;11,30,33;,
  3;33,41,16;,
  3;41,33,69;,
  3;69,59,41;,
  3;0,27,35;,
  3;54,46,20;,
  3;70,35,27;,
  3;27,13,70;,
  3;29,10,37;,
  3;45,37,19;,
  3;37,45,71;,
  3;62,71,45;;
 }
 MeshTextureCoords {
  66;
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
 MeshVertexColors {
  66;
  0;1.000000;1.000000;1.000000;1.000000;,
  1;1.000000;1.000000;1.000000;1.000000;,
  2;1.000000;1.000000;1.000000;1.000000;,
  3;1.000000;1.000000;1.000000;1.000000;,
  4;1.000000;1.000000;1.000000;1.000000;,
  5;1.000000;1.000000;1.000000;1.000000;,
  6;1.000000;1.000000;1.000000;1.000000;,
  7;1.000000;1.000000;1.000000;1.000000;,
  8;1.000000;1.000000;1.000000;1.000000;,
  9;1.000000;1.000000;1.000000;1.000000;,
  10;1.000000;1.000000;1.000000;1.000000;,
  11;1.000000;1.000000;1.000000;1.000000;,
  12;1.000000;1.000000;1.000000;1.000000;,
  13;1.000000;1.000000;1.000000;1.000000;,
  14;1.000000;1.000000;1.000000;1.000000;,
  15;1.000000;1.000000;1.000000;1.000000;,
  16;1.000000;1.000000;1.000000;1.000000;,
  17;1.000000;1.000000;1.000000;1.000000;,
  18;1.000000;1.000000;1.000000;1.000000;,
  19;1.000000;1.000000;1.000000;1.000000;,
  20;1.000000;1.000000;1.000000;1.000000;,
  21;1.000000;1.000000;1.000000;1.000000;,
  22;1.000000;1.000000;1.000000;1.000000;,
  23;1.000000;1.000000;1.000000;1.000000;,
  24;1.000000;1.000000;1.000000;1.000000;,
  25;1.000000;1.000000;1.000000;1.000000;,
  26;1.000000;1.000000;1.000000;1.000000;,
  27;1.000000;1.000000;1.000000;1.000000;,
  28;1.000000;1.000000;1.000000;1.000000;,
  29;1.000000;1.000000;1.000000;1.000000;,
  30;1.000000;1.000000;1.000000;1.000000;,
  31;1.000000;1.000000;1.000000;1.000000;,
  32;1.000000;1.000000;1.000000;1.000000;,
  33;1.000000;1.000000;1.000000;1.000000;,
  34;1.000000;1.000000;1.000000;1.000000;,
  35;1.000000;1.000000;1.000000;1.000000;,
  36;1.000000;1.000000;1.000000;1.000000;,
  37;1.000000;1.000000;1.000000;1.000000;,
  38;1.000000;1.000000;1.000000;1.000000;,
  39;1.000000;1.000000;1.000000;1.000000;,
  40;1.000000;1.000000;1.000000;1.000000;,
  41;1.000000;1.000000;1.000000;1.000000;,
  42;1.000000;1.000000;1.000000;1.000000;,
  43;1.000000;1.000000;1.000000;1.000000;,
  44;1.000000;1.000000;1.000000;1.000000;,
  45;1.000000;1.000000;1.000000;1.000000;,
  46;1.000000;1.000000;1.000000;1.000000;,
  47;1.000000;1.000000;1.000000;1.000000;,
  48;1.000000;1.000000;1.000000;1.000000;,
  49;1.000000;1.000000;1.000000;1.000000;,
  50;1.000000;1.000000;1.000000;1.000000;,
  51;1.000000;1.000000;1.000000;1.000000;,
  52;1.000000;1.000000;1.000000;1.000000;,
  53;1.000000;1.000000;1.000000;1.000000;,
  54;1.000000;1.000000;1.000000;1.000000;,
  55;1.000000;1.000000;1.000000;1.000000;,
  56;1.000000;1.000000;1.000000;1.000000;,
  57;1.000000;1.000000;1.000000;1.000000;,
  58;1.000000;1.000000;1.000000;1.000000;,
  59;1.000000;1.000000;1.000000;1.000000;,
  60;1.000000;1.000000;1.000000;1.000000;,
  61;1.000000;1.000000;1.000000;1.000000;,
  62;1.000000;1.000000;1.000000;1.000000;,
  63;1.000000;1.000000;1.000000;1.000000;,
  64;1.000000;1.000000;1.000000;1.000000;,
  65;1.000000;1.000000;1.000000;1.000000;;
 }
}