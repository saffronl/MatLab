%CREATING A MULTILAYERD WATERFALL GRAPH OF THE TEMPERATURES AT SBU

clear
close all


myfile = 'monthly_temp_SB.txt';

fid = fopen(myfile);

fs = '%s %f %f %f %f %f';

while fid == -1
    disp('File open not successful')
    fn_name = input('Choose the file: ','s');
    fid = fopen(fn_name);
end
[info] = fscanf(fid,'%s%c%s%c%s%c%s%c%s\n',9); 
[header] = strsplit(info);
T1_info=header{1}; %'ave.temp?
T2_info=header{2}; %'ave.high.temp?
T3_info=header{3}; %'ave.low.temp?
T4_info=header{4}; %'highest.rec.temp?
T5_info=header{5}; %'lowest.rec.temp?

sizeA=[8 12]

f = fscanf(fid,fs,sizeA)

%Error-check file close
closeresult = fclose(fid);
if closeresult == 0
    disp('File close successful')
else
    disp('File close not successful')
end


figure
    x=1:12;
    y=1:5;
    z= [f(4,:);f(5,:);f(6,:);f(7,:);f(8,:)];
    sbtempgr = waterfall(x,y,z)
    xlabel('Month')
    ylabel('Temp Data')
    zlabel('Temp /F')
    title('Monthly Temperature info at Stony Brook')
    xticks([1:12]);
    xticklabels({'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'});
    yticks([1:5]);
    yticklabels({'avg temp','avg high temp','avg low temp','highest temp','lowest temp'});
    sbtempgr.LineWidth = 2;
    sbtempgr.FaceAlpha = 0.5;
