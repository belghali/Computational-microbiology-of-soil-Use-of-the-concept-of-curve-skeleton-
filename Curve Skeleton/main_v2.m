%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Auteur : BELGHALI Zakaria                                         %%
%      Superviseurs : MONGA Olivier & ABDELWAHED El Hassan               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DESCRIPTION                                                             %%
% Ce fichier permet d'appeler les fonctions unies.                       %%
% Pour plus d'informations sur les fonctions, veuillez lire les codes    %%
% sources propres aux fonctions.                                         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%VARIABLE                                                                %%
%) dtstr : chemin qui contient les images.                               %%
%                                                                        %%
%) folder_img : chemin où stocker les images binaires.                   %%
%                                                                        %%
%) min et max : indice de coupe pour le traitement (début et fin).       %%
%                                                                        %%
%) nbrbr : taille minimale des branches du squelette.                    %%
%                                                                        %%
%) region : à utiliser si on souhaite avoir une image réduite, veuillez  %%
% regarder le code de "bin_min.m" pour plus d'informations.              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


close                                                                    
clear all
                                                                                                                                        
start=tic;  
dtstr = "C:\Users\zakar\Desktop\Sable\sandhigh\";          

folder_img ='C:\Users\zakar\Desktop\DATASET\sa333\';    

imdstore = imageDatastore(dtstr);                                        

min = 100;                                                                 
max = 612;                                                               
nbrbr = 0;                                                               
region = [459.5 560.5 511 511];%[467.5 411.5 1034 1028];                                        

bin_min(imdstore,folder_img,min,max,region,'.tif');                      

imgstore = imageDatastore(folder_img);                                   

vol20 = logical(img3d(imgstore));

[squel20,noeud20,lien20] = squel_graph(vol20,nbrbr);                       

%   % % % affich_graph(vol,noeud,lien);                        
                  
nbr_pore20 = compt_pore(vol20);                                              

[dist20,id20] = calc_dist(squel20,vol20);                                      
                                                                   
tab_lien = struct_tab(lien);

sprintf("ok1")
 
fo20 = img_tab(tab_lienn20,size(vol20));

sprintf("ok2")

imgg20=lab_squel(id20,fo20);

sprintf("ok3")

occ20 = occur(imgg20,10);

new50 = affich_grand_pores2(imgg20,occ20,1,15);

cen

writematrix(stats,'regions_133608.txt','Delimiter',' ');

sprintf("ok")

vv20=surface_contact(imgg20,occ20);

writeanymatrix

genere_plan

temps = toc(start);

sprintf("Temps total en seconde est de %f",temps)
