clc; 
clear all;
close all;
warning off;
[FileName1,FilePath1] = uigetfile('*.jpg','Select 1st Iris Image');
file1 = fullfile(FilePath1, FileName1);
[FileName2,FilePath2] = uigetfile('*.jpg','Select the Iris Image for comparison');
file2 = fullfile(FilePath2, FileName2);
mkdir('scrap')
% addpath('scrap')
hd=import(hammingdist);
hd =hammingdist(file1 , file2);
if hd < 0.0 & hd <= 0.2
    h = msgbox('Same IRIS','Result');
else if hd <= 1.0 AND hd >= 0.4
        h = msgbox('Different IRIS','Result');
    else if hd <=0.4 && hd >= 0.3
            h = msgbox('Uncertain, Please run test again or change iris images','Result');
        else if hd ==0
                h = msgbox('Same IRIS','Result');
            end
        end
    end
end
