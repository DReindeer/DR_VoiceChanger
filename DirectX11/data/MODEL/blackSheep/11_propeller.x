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
 154;
 -4.07043;7.36609;6.39546;,
 -0.07043;7.36608;-0.53274;,
 -0.12967;7.17815;-0.56694;,
 -4.12967;7.17815;6.36126;,
 -0.07043;7.36608;-0.53274;,
 0.58061;7.09247;-0.15686;,
 0.52137;6.90453;-0.19106;,
 -0.12967;7.17815;-0.56694;,
 0.58061;7.09247;-0.15686;,
 -3.41939;7.09247;6.77134;,
 -3.47863;6.90453;6.73714;,
 0.52137;6.90453;-0.19106;,
 -3.41939;7.09247;6.77134;,
 -4.07043;7.36609;6.39546;,
 -4.12967;7.17815;6.36126;,
 -3.47863;6.90453;6.73714;,
 -0.07043;7.36608;-0.53274;,
 -4.07043;7.36609;6.39546;,
 -4.12967;7.17815;6.36126;,
 -0.12967;7.17815;-0.56694;,
 -0.54250;7.42081;-0.27653;,
 -4.54250;7.42081;-7.20473;,
 -4.60174;7.23288;-7.17053;,
 -0.60174;7.23287;-0.24233;,
 -4.54250;7.42081;-7.20473;,
 -3.89146;7.14720;-7.58061;,
 -3.95070;6.95926;-7.54641;,
 -4.60174;7.23288;-7.17053;,
 -3.89146;7.14720;-7.58061;,
 0.10854;7.14720;-0.65241;,
 0.04930;6.95926;-0.61820;,
 -3.95070;6.95926;-7.54641;,
 0.10854;7.14720;-0.65241;,
 -0.54250;7.42081;-0.27653;,
 -0.60174;7.23287;-0.24233;,
 0.04930;6.95926;-0.61820;,
 -4.54250;7.42081;-7.20473;,
 -0.54250;7.42081;-0.27653;,
 -0.60174;7.23287;-0.24233;,
 -4.60174;7.23288;-7.17053;,
 0.09268;7.47724;-0.34168;,
 8.09268;7.47724;-0.34168;,
 8.09268;7.28930;-0.41008;,
 0.09268;7.28930;-0.41008;,
 8.09268;7.47724;-0.34168;,
 8.09268;7.20362;0.41008;,
 8.09268;7.01568;0.34168;,
 8.09268;7.28930;-0.41008;,
 8.09268;7.20362;0.41008;,
 0.09268;7.20362;0.41008;,
 0.09268;7.01568;0.34168;,
 8.09268;7.01568;0.34168;,
 0.09268;7.20362;0.41008;,
 0.09268;7.47724;-0.34168;,
 0.09268;7.28930;-0.41008;,
 0.09268;7.01568;0.34168;,
 8.09268;7.47724;-0.34168;,
 0.09268;7.47724;-0.34168;,
 0.09268;7.28930;-0.41008;,
 8.09268;7.28930;-0.41008;,
 0.05980;7.93308;-0.40000;,
 0.40621;7.93308;-0.20000;,
 0.40621;-0.06692;-0.20000;,
 0.05980;-0.06692;-0.40000;,
 0.40621;7.93308;0.20000;,
 0.40621;-0.06692;0.20000;,
 0.05980;7.93308;0.40000;,
 0.05980;-0.06692;0.40000;,
 -0.28661;7.93308;0.20000;,
 -0.28661;-0.06692;0.20000;,
 -0.28661;7.93308;-0.20000;,
 -0.28661;-0.06692;-0.20000;,
 0.05980;7.93308;-0.40000;,
 0.05980;-0.06692;-0.40000;,
 0.05980;7.93308;0.00000;,
 0.05980;7.93308;0.00000;,
 0.05980;7.93308;0.00000;,
 0.05980;7.93308;0.00000;,
 0.05980;7.93308;0.00000;,
 0.05980;7.93308;0.00000;,
 0.05980;-0.06692;-0.00000;,
 0.05980;-0.06692;-0.00000;,
 0.05980;-0.06692;-0.00000;,
 0.05980;-0.06692;-0.00000;,
 0.05980;-0.06692;-0.00000;,
 0.05980;-0.06692;-0.00000;,
 0.05980;7.59409;-1.20000;,
 1.09903;7.59409;-0.60000;,
 1.09903;6.79409;-0.60000;,
 0.05980;6.79409;-1.20000;,
 1.09903;7.59409;0.60000;,
 1.09903;6.79409;0.60000;,
 0.05980;7.59409;1.20000;,
 0.05980;6.79409;1.20000;,
 -0.97943;7.59409;0.60000;,
 -0.97943;6.79409;0.60000;,
 -0.97943;7.59409;-0.60000;,
 -0.97943;6.79409;-0.60000;,
 0.05980;7.59409;-1.20000;,
 0.05980;6.79409;-1.20000;,
 0.05980;7.59409;0.00000;,
 0.05980;7.59409;0.00000;,
 0.05980;7.59409;0.00000;,
 0.05980;7.59409;0.00000;,
 0.05980;7.59409;0.00000;,
 0.05980;7.59409;0.00000;,
 0.05980;6.79409;0.00000;,
 0.05980;6.79409;0.00000;,
 0.05980;6.79409;0.00000;,
 0.05980;6.79409;0.00000;,
 0.05980;6.79409;0.00000;,
 0.05980;6.79409;0.00000;,
 1.22368;7.26384;-0.01960;,
 1.48349;7.11384;-0.19281;,
 0.28348;5.03538;-0.19281;,
 0.02368;5.18538;-0.01960;,
 1.48349;7.11384;0.15360;,
 0.28348;5.03538;0.15360;,
 1.22368;7.26384;-0.01960;,
 0.02368;5.18538;-0.01960;,
 1.39688;7.16384;-0.01960;,
 1.39688;7.16384;-0.01960;,
 1.39688;7.16384;-0.01960;,
 0.19688;5.08538;-0.01960;,
 0.19688;5.08538;-0.01960;,
 0.19688;5.08538;-0.01960;,
 -0.51359;7.26384;-1.01291;,
 -0.79350;7.11384;-1.15131;,
 -0.19350;5.03538;-0.11208;,
 0.08641;5.18538;0.02632;,
 -0.49350;7.11384;-1.32451;,
 0.10650;5.03538;-0.28528;,
 -0.51359;7.26384;-1.01291;,
 0.08641;5.18538;0.02632;,
 -0.60020;7.16384;-1.16291;,
 -0.60020;7.16384;-1.16291;,
 -0.60020;7.16384;-1.16291;,
 -0.00020;5.08538;-0.12368;,
 -0.00020;5.08538;-0.12368;,
 -0.00020;5.08538;-0.12368;,
 -0.51440;7.26384;1.00824;,
 -0.49430;7.11384;1.31984;,
 0.10570;5.03538;0.28061;,
 0.08560;5.18538;-0.03099;,
 -0.79430;7.11384;1.14664;,
 -0.19430;5.03538;0.10741;,
 -0.51440;7.26384;1.00824;,
 0.08560;5.18538;-0.03099;,
 -0.60100;7.16384;1.15824;,
 -0.60100;7.16384;1.15824;,
 -0.60100;7.16384;1.15824;,
 -0.00100;5.08538;0.11901;,
 -0.00100;5.08538;0.11901;,
 -0.00100;5.08538;0.11901;;
 
 81;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,5,16,17;,
 4;18,19,6,15;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;32,25,36,37;,
 4;38,39,26,35;,
 4;40,41,42,43;,
 4;44,45,46,47;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 4;52,45,56,57;,
 4;58,59,46,55;,
 4;60,61,62,63;,
 4;61,64,65,62;,
 4;64,66,67,65;,
 4;66,68,69,67;,
 4;68,70,71,69;,
 4;70,72,73,71;,
 3;74,61,60;,
 3;75,64,61;,
 3;76,66,64;,
 3;77,68,66;,
 3;78,70,68;,
 3;79,72,70;,
 3;80,63,62;,
 3;81,62,65;,
 3;82,65,67;,
 3;83,67,69;,
 3;84,69,71;,
 3;85,71,73;,
 4;86,87,88,89;,
 4;87,90,91,88;,
 4;90,92,93,91;,
 4;92,94,95,93;,
 4;94,96,97,95;,
 4;96,98,99,97;,
 3;100,87,86;,
 3;101,90,87;,
 3;102,92,90;,
 3;103,94,92;,
 3;104,96,94;,
 3;105,98,96;,
 3;106,89,88;,
 3;107,88,91;,
 3;108,91,93;,
 3;109,93,95;,
 3;110,95,97;,
 3;111,97,99;,
 4;112,113,114,115;,
 4;113,116,117,114;,
 4;116,118,119,117;,
 3;120,113,112;,
 3;121,116,113;,
 3;122,118,116;,
 3;123,115,114;,
 3;124,114,117;,
 3;125,117,119;,
 4;126,127,128,129;,
 4;127,130,131,128;,
 4;130,132,133,131;,
 3;134,127,126;,
 3;135,130,127;,
 3;136,132,130;,
 3;137,129,128;,
 3;138,128,131;,
 3;139,131,133;,
 4;140,141,142,143;,
 4;141,144,145,142;,
 4;144,146,147,145;,
 3;148,141,140;,
 3;149,144,141;,
 3;150,146,144;,
 3;151,143,142;,
 3;152,142,145;,
 3;153,145,147;;
 
 MeshMaterialList {
  1;
  81;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   19.000000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\watanabe.kensuke\\Desktop\\�}�Cmqo\\blackSheep\\Ver.2.1\\data\\TEXTURE\\sheep_black.png";
   }
  }
 }
 MeshNormals {
  59;
  -0.813795;0.342027;-0.469846;,
  0.500002;-0.000002;-0.866024;,
  0.813797;-0.342021;0.469846;,
  -0.813797;0.342023;0.469846;,
  -0.499999;0.000001;-0.866026;,
  0.813794;-0.342031;-0.469845;,
  0.000000;0.342024;-0.939691;,
  1.000000;0.000000;0.000000;,
  0.000000;-0.342024;0.939691;,
  0.000000;1.000000;0.000000;,
  0.500002;0.000000;-0.866024;,
  0.500002;0.000000;0.866024;,
  -0.499998;0.000000;0.866027;,
  -1.000000;0.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.500001;0.000000;-0.866025;,
  0.500001;0.000000;0.866025;,
  -0.499999;0.000000;0.866026;,
  0.499994;0.866029;0.000000;,
  -0.433018;0.250003;-0.866022;,
  0.866025;-0.500001;-0.000000;,
  -0.500006;-0.866022;-0.000000;,
  -0.249998;0.866027;-0.433011;,
  -0.533494;0.250000;0.808012;,
  -0.433011;-0.500001;-0.750001;,
  0.250000;-0.866024;0.433016;,
  -0.250003;0.866026;0.433011;,
  0.966506;0.250000;0.058013;,
  -0.433014;-0.500000;0.749999;,
  0.249998;-0.866027;-0.433012;,
  -0.500000;-0.000008;0.866025;,
  0.296198;0.939693;0.171010;,
  -0.296198;-0.939693;-0.171010;,
  0.500000;0.000008;0.866025;,
  0.296197;0.939693;-0.171010;,
  -0.296195;-0.939694;0.171008;,
  0.000000;0.939693;0.342019;,
  0.000000;-0.939693;-0.342019;,
  -0.499998;0.000000;-0.866027;,
  -0.499999;0.000000;-0.866026;,
  -0.433010;0.249999;0.866027;,
  0.499994;0.866029;0.000000;,
  -0.500003;-0.866023;-0.000000;,
  -0.500007;-0.866021;0.000003;,
  -0.500007;-0.866021;-0.000003;,
  0.966506;0.250000;-0.058013;,
  -0.249996;0.866027;-0.433011;,
  -0.249998;0.866026;-0.433012;,
  -0.249998;0.866027;-0.433010;,
  0.249999;-0.866026;0.433013;,
  0.250004;-0.866023;0.433016;,
  0.249998;-0.866023;0.433019;,
  -0.533495;0.249999;-0.808012;,
  -0.250002;0.866025;0.433012;,
  -0.250003;0.866026;0.433010;,
  -0.250005;0.866025;0.433011;,
  0.249999;-0.866026;-0.433013;,
  0.249999;-0.866027;-0.433010;,
  0.249996;-0.866027;-0.433012;;
  81;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;30,30,30,30;,
  4;31,31,31,31;,
  4;32,32,32,32;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;33,33,33,33;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;13,13,13,13;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;10,10,10,10;,
  4;7,7,7,7;,
  4;11,11,11,11;,
  4;12,12,12,12;,
  4;13,13,13,13;,
  4;38,38,38,38;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  4;15,15,15,15;,
  4;7,7,7,7;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;13,13,13,13;,
  4;39,39,39,39;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;9,9,9;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  3;14,14,14;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;40,40,40,40;,
  3;18,18,18;,
  3;18,41,18;,
  3;18,18,41;,
  3;21,42,43;,
  3;21,43,44;,
  3;21,44,42;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;45,45,45,45;,
  3;22,46,47;,
  3;22,48,46;,
  3;22,47,48;,
  3;25,49,50;,
  3;25,50,51;,
  3;25,51,49;,
  4;27,27,27,27;,
  4;28,28,28,28;,
  4;52,52,52,52;,
  3;26,53,54;,
  3;26,55,53;,
  3;26,54,55;,
  3;29,56,57;,
  3;29,57,58;,
  3;29,58,56;;
 }
 MeshTextureCoords {
  154;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.166670;0.000000;,
  0.166670;1.000000;,
  0.000000;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.833330;0.000000;,
  0.833330;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.083330;0.000000;,
  0.250000;0.000000;,
  0.416670;0.000000;,
  0.583330;0.000000;,
  0.750000;0.000000;,
  0.916670;0.000000;,
  0.083330;1.000000;,
  0.250000;1.000000;,
  0.416670;1.000000;,
  0.583330;1.000000;,
  0.750000;1.000000;,
  0.916670;1.000000;,
  0.000000;0.000000;,
  0.166670;0.000000;,
  0.166670;1.000000;,
  0.000000;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.833330;0.000000;,
  0.833330;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.083330;0.000000;,
  0.250000;0.000000;,
  0.416670;0.000000;,
  0.583330;0.000000;,
  0.750000;0.000000;,
  0.916670;0.000000;,
  0.083330;1.000000;,
  0.250000;1.000000;,
  0.416670;1.000000;,
  0.583330;1.000000;,
  0.750000;1.000000;,
  0.916670;1.000000;,
  0.000000;0.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.000000;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.166670;0.000000;,
  0.500000;0.000000;,
  0.833330;0.000000;,
  0.166670;1.000000;,
  0.500000;1.000000;,
  0.833330;1.000000;,
  0.000000;0.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.000000;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.166670;0.000000;,
  0.500000;0.000000;,
  0.833330;0.000000;,
  0.166670;1.000000;,
  0.500000;1.000000;,
  0.833330;1.000000;,
  0.000000;0.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.000000;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.166670;0.000000;,
  0.500000;0.000000;,
  0.833330;0.000000;,
  0.166670;1.000000;,
  0.500000;1.000000;,
  0.833330;1.000000;;
 }
 MeshVertexColors {
  154;
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
  65;1.000000;1.000000;1.000000;1.000000;,
  66;1.000000;1.000000;1.000000;1.000000;,
  67;1.000000;1.000000;1.000000;1.000000;,
  68;1.000000;1.000000;1.000000;1.000000;,
  69;1.000000;1.000000;1.000000;1.000000;,
  70;1.000000;1.000000;1.000000;1.000000;,
  71;1.000000;1.000000;1.000000;1.000000;,
  72;1.000000;1.000000;1.000000;1.000000;,
  73;1.000000;1.000000;1.000000;1.000000;,
  74;1.000000;1.000000;1.000000;1.000000;,
  75;1.000000;1.000000;1.000000;1.000000;,
  76;1.000000;1.000000;1.000000;1.000000;,
  77;1.000000;1.000000;1.000000;1.000000;,
  78;1.000000;1.000000;1.000000;1.000000;,
  79;1.000000;1.000000;1.000000;1.000000;,
  80;1.000000;1.000000;1.000000;1.000000;,
  81;1.000000;1.000000;1.000000;1.000000;,
  82;1.000000;1.000000;1.000000;1.000000;,
  83;1.000000;1.000000;1.000000;1.000000;,
  84;1.000000;1.000000;1.000000;1.000000;,
  85;1.000000;1.000000;1.000000;1.000000;,
  86;1.000000;1.000000;1.000000;1.000000;,
  87;1.000000;1.000000;1.000000;1.000000;,
  88;1.000000;1.000000;1.000000;1.000000;,
  89;1.000000;1.000000;1.000000;1.000000;,
  90;1.000000;1.000000;1.000000;1.000000;,
  91;1.000000;1.000000;1.000000;1.000000;,
  92;1.000000;1.000000;1.000000;1.000000;,
  93;1.000000;1.000000;1.000000;1.000000;,
  94;1.000000;1.000000;1.000000;1.000000;,
  95;1.000000;1.000000;1.000000;1.000000;,
  96;1.000000;1.000000;1.000000;1.000000;,
  97;1.000000;1.000000;1.000000;1.000000;,
  98;1.000000;1.000000;1.000000;1.000000;,
  99;1.000000;1.000000;1.000000;1.000000;,
  100;1.000000;1.000000;1.000000;1.000000;,
  101;1.000000;1.000000;1.000000;1.000000;,
  102;1.000000;1.000000;1.000000;1.000000;,
  103;1.000000;1.000000;1.000000;1.000000;,
  104;1.000000;1.000000;1.000000;1.000000;,
  105;1.000000;1.000000;1.000000;1.000000;,
  106;1.000000;1.000000;1.000000;1.000000;,
  107;1.000000;1.000000;1.000000;1.000000;,
  108;1.000000;1.000000;1.000000;1.000000;,
  109;1.000000;1.000000;1.000000;1.000000;,
  110;1.000000;1.000000;1.000000;1.000000;,
  111;1.000000;1.000000;1.000000;1.000000;,
  112;1.000000;1.000000;1.000000;1.000000;,
  113;1.000000;1.000000;1.000000;1.000000;,
  114;1.000000;1.000000;1.000000;1.000000;,
  115;1.000000;1.000000;1.000000;1.000000;,
  116;1.000000;1.000000;1.000000;1.000000;,
  117;1.000000;1.000000;1.000000;1.000000;,
  118;1.000000;1.000000;1.000000;1.000000;,
  119;1.000000;1.000000;1.000000;1.000000;,
  120;1.000000;1.000000;1.000000;1.000000;,
  121;1.000000;1.000000;1.000000;1.000000;,
  122;1.000000;1.000000;1.000000;1.000000;,
  123;1.000000;1.000000;1.000000;1.000000;,
  124;1.000000;1.000000;1.000000;1.000000;,
  125;1.000000;1.000000;1.000000;1.000000;,
  126;1.000000;1.000000;1.000000;1.000000;,
  127;1.000000;1.000000;1.000000;1.000000;,
  128;1.000000;1.000000;1.000000;1.000000;,
  129;1.000000;1.000000;1.000000;1.000000;,
  130;1.000000;1.000000;1.000000;1.000000;,
  131;1.000000;1.000000;1.000000;1.000000;,
  132;1.000000;1.000000;1.000000;1.000000;,
  133;1.000000;1.000000;1.000000;1.000000;,
  134;1.000000;1.000000;1.000000;1.000000;,
  135;1.000000;1.000000;1.000000;1.000000;,
  136;1.000000;1.000000;1.000000;1.000000;,
  137;1.000000;1.000000;1.000000;1.000000;,
  138;1.000000;1.000000;1.000000;1.000000;,
  139;1.000000;1.000000;1.000000;1.000000;,
  140;1.000000;1.000000;1.000000;1.000000;,
  141;1.000000;1.000000;1.000000;1.000000;,
  142;1.000000;1.000000;1.000000;1.000000;,
  143;1.000000;1.000000;1.000000;1.000000;,
  144;1.000000;1.000000;1.000000;1.000000;,
  145;1.000000;1.000000;1.000000;1.000000;,
  146;1.000000;1.000000;1.000000;1.000000;,
  147;1.000000;1.000000;1.000000;1.000000;,
  148;1.000000;1.000000;1.000000;1.000000;,
  149;1.000000;1.000000;1.000000;1.000000;,
  150;1.000000;1.000000;1.000000;1.000000;,
  151;1.000000;1.000000;1.000000;1.000000;,
  152;1.000000;1.000000;1.000000;1.000000;,
  153;1.000000;1.000000;1.000000;1.000000;;
 }
}
