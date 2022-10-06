tic % compelte experimetn time

clear all

experiment = {...
'test3 - Copy'
'test3 - Copy (2)'
'test3_flex'
'----ramptest_1'
'----stairtest'
'---flextest1'
'----flextest2'
'----flextest3'
'----flextest4'
'----flextest5'
'test3-20th'
'test320thb'
'day2_1  -ramp'
'day2_2-rampx10or9'
'day2_walk1'
'day2_stair-wait'
'day3_socket tap test'
'dy3_syncbefore'
'day3_walk+rampx5'
'day3_stairx5'
'wed2_error'
'wed2_walkx11'
'wed2_walk2x10_E' %_E
'wed2_rampx10'
'wed2_RAMP2X10'
'wed2_ramp3x10'
'temp'
'wed2_sitstandx20_E' %_E
'wed2_sitstand2x20'
'fail'
'wed2_walk_trunc'
'fault'
'wed2_walkfinalx10'
'wed2_rampfinalx20',
'wed2_sitstandx10trunc  '
'dy3_syncbefore (version 1) edit#.xlsb'
'thu2_walkx10'
'thu2_walk_datafail'
'thu2_walk_swfail_E' % _E
'thu2_walk2x10_E' % _E
'thu2_walk3x10_E' % _E
'thu2_rampx10fail'
'thu2_ramp2x15'
'thu2_ramp3x15_fault'
'thu2_stsx12_crash'
'thu2_stsxx28'
'Seac1_walk'
'Seac_2_muscleflex'
'Seac+_3walk_holres'
'Seac4_walk_4sensors'
'fri2_walkx10+time'
'fri2_walkx10#2'
'fri2_ramp1x10'
'fri2_ramp2x10'
'fri2_rampx10------hadafault'
'fri2_ramp4_x10'
'fri2_stsx20'
'fri2_stsx20LOST'
'fri2_sts3x20'
'fri2_flexex'
'sat2_walkx20'
'sat2_walk2x20'
'sat2_ramptrial'
'sat2_rampx19crash-----'
'sat2_rampre1_l_x20'
'sat2_ramp2_r_x20'
'sat2_stsx20'
'sat2_sts2x20'
'sat2_kneeextfelx_x20'
'sat2_c2_kneeflexexx20'
'sat2_c2_stsx20'
'sat2_c2_sts2x20'
'sat2_c2_walkx20'
'sat2_c2_ramp_l_x20'
'sat2_c2_ramp_r_x20'
'sun2_c1_walkx20'
'sun2_c1_ramp_fail'
'sun2_c1_ramp_r_x20'
'sun2_c1_ramp_l_x20'
'sun2_c1_stsx23'
'sun2_c1_sts2x23'
'sun2_c1_flexexx20'
'sun2_c2_stsx40'
'sun2_c2_flexexx23_E'
'sun2_c2_ramp_r_x10-Flostposs'
'sun2_c2_ramp_rl_x15x20'
'sun2_c2_walkx21_r'
'----_flex'
'----_walk'
'----_2legs_walk-rampx5'
'---_dorsi-plantar'
'----_ramp2x5-extratim'
'----_plantrx10'
'----_x10dorii-x10plamntar-nosocket'
'----_nosocketetstwithliner' % Leeds 2.2 10th Septmber onwards  :: currently one/two IMUs, 25 (nd 21) i believe
'----_nosocketetstwithliner_2' % #2 = #96
'----wlk5MMGsscket_1' % 97
'20180910142744-m4dg' % 10th Septemebr 2018, Amputee Subj day one, testing
'20180910143805-m4dg'
'20180910145034-m4dg' % 100
...
'20180911140907-m4dg' % 101 % 11th September Amputee Subj day one experimnt
'20180911145218-stop' % 102
'20180911145524-stop' % 103
'20180911150824-m4dg' % 104
'20180911152401-stop' % 105
'20180911152834-stop' % 106
'20180911162117-savve' % 107
'20180911162438-stop' % 108
'20180911162835-  save' % 109
'20180911163325-stop' % 110
'20180911163823-stop' % 111
'20180911164701-m4d' % 112
'20180911165021-stop' % 113
'20180911165353-stop' % 114
...
'20180912114220-  save3  ' % 115 % Amputee Subj day two experiment 
'20180912114710-065'
'20180912114947-stop'
'20180912115312-stop'
'20180912122932-stop'
'20180912124408-m4dg'
'20180912124605-stop'
'20180912130110-stop'
'20180912131601-stop'
'20180912131758-stop'
'20180912151511-m4dg'
'20180912152320-stop'
'20180912152522-stop'
'20180912153410-stop  '
'20180912153208-m4dg'
'20180912153608-stop'
'20180912154031-stop'
'20180912154835-stop'
'20180912160104-stop' % 133

'20180914125632-stop' % Control Subject 2 day one % #134
'20180914145957-save  '
'20180914151443-                              '
'20180914152657-m4dg'
'20180914154042-m4dg'
'20180914155424-stop'
'20180914162130-stop'
'20180914162828-stop'
'20180914163903-stop_WHATISTHIS'
'20180914165938-m4dg'
'20180914174844-stop'
'20180914180446-stop'
'20180914181039-stop'
'20180914185649-m4dg'
'20180914190311-stop'
'20180914190908-  '
'20180914191703-      '
'20180914192851-    save'
'20180914193239-stop'
'20180914193405-stopsave'
'20180914193716-stop'
'20180914200212-stop'

'20180915151812-stop' % Control Subject 2 day two % #156
'20180915152425-stop'
'20180915153044-stop'
'20180915154157-stop'
'20180915155459-stop'
'20180915160401-stop'
'20180915162850-stop'
'20180915163521-stop'
'20180915164502-stop'
'20180915165001-stop'
'20180915171239-stop'
'20180915172519-stop'
'20180915175756-stop'
'20180915180346-stop'
'20180915181125-'
'20180915182615-stop'
'20180915184754-  '
'20180915185601-    '
'20180915191626-stop'
'20180915192253-stop'
'20180915193243-stop'
'20180915193847-stop'
'20180915194738-stop'
'20180915200100-m4dg'
'20180915202348-stop'
'20180915202803-stop'
'20180915203002-stop'
'20180915203902-stop'
'20180915204044-m4dg' % 184

'20180918143525-m4dg' % #185 % Control Subject 1 day one
'20180918144202-'
'20180918144315-stop'
'20180918150238-stop'
'20180919164949-stop'
'20180919171628-m4dg'
'20180919172420-m4dg'
'20180919173439-m4dg'
'20180919175313-stop'
'20180919180457-m4dg'
'20180919182800-stop'
'20180919183635-stop'
'20180919184819-stop'
'20180919190509-stop'
'20180919191241-stop'
'20180919192237-stop'
'20180919192754-stop'
'20180919194732-stop'
'20180919195644-stop'
'20180920132554-stop'
'20180920133708-stop'
'20180920134803-stop'
'20180920135137-stop'
'20180920141156-stop'
'20180920141927-stop'
'20180920142643-stop'
'20180920143434-stop'
'20180920145641-stop'
'20180920150335-'
'20180920150745-stop'
'20180920152533-stop'
'20180920160441-stop'
'20180920161056-'
'20180920164045-stop'
'20180920164648-save3'
'20180920170454-stop'
'20180920171032-  '     % #221  

};

array221 = 1:221; % 1:221
% array_exc = [17 45 47 48 49 50 64 65 79 81 82 88 89 91:96]; % [1:17 18:45 46:51 52:64 65 66:79 80:89 91];
array_exc = [1:101]; % 91:96 still to be assessed for this script   % [1:17 18:45 46:51 52:64 65 66:79 80:89 91];
% 17: single IMU
% 47: single IMU

%     46:51 Seac:one IMU    
%     65 : too big: EDIT works
%     79 works wit EDIT
%     81 works, dont know why or why not
%     87 edit
%     88:89 one imu
% [17 47 46:51 65 79 81 88 91:96] expor this to ReSamp code
array221(array_exc) = [];

% exceptions: 17:only 26 for test; 47:50:Seac:43 only.
for exp = array221  %64%101%[31]%92:94% array94 % 31 %66 % 92:94 % [22 34 37 43 55 59 61:94] %:50 %:94 %4 %14 % 17
    % 88,89  imu count 1
    % 91 error 363500 row#
tic

% fprintf(['Timings for ' file '; exp ' num2str(exp) '):\n']);
% tic % current exp time

clear IMUData1 IMUData2 IMUData ADCData1 ADCData2 ADCData QTNData1 QTNData2 QTNData TIMData1 TIMData2 TIMData
clear allRawData allRawDataNew IMUDataShort imuNumber
clear ticks ticks_ms ticks_new ticks_new_cont ticks_zero tt time time_allRawDataNew
clearvars -except experiment exp array221

% file = ['day2_stair-wait']; 
file  = char(experiment(exp));
% file = experiment(exp);  
fprintf(['Timings for ' file '; exp ' num2str(exp) '):\n']);
tic % read csv time
allRawData = dlmread([file '.csv']);
% allRawDataD = dlmread([file '.csv'],'');
fprintf('read csv time: ');
toc

% % tic % this section is the first edit of the 41 coulmn adjustment script,
% % now placed within the full algoruthm below
% if     mod(size(allRawData,1),2) == 0
%     size_allRawData = size(allRawData,1)-1;
% elseif mod(size(allRawData,1),2) == 1
%     size_allRawData = size(allRawData,1)-2;
% end
%     
% count = 1;
% if size(allRawData,2) == 41
%     for i = 1:2:size_allRawData
%         allRawData(count,1:53) = [allRawData(i,1:41) allRawData(i+1,1:12)];
%         count = count +1;
%     end
%         allRawData(count+1:end,:)=[]; 
% end
% fprintf('tie 41 columns into 53 columsn');
% toc

% fprintf(['Read csv time (' file '; exp ' num2str(exp) '):\n']);
% fprintf(['Read csv time (exp ' num2str(exp) '):\n']);
% toc

tic %  clean and nsort inlcufing adjustment of 41 col situation and filtering for 53 cols
    IMU_IDs = [26 61 65 43 25 21]; % all IMU #s used in this experimetn at some point
                             % 61,65 normal thigh/shank set, 26 spare, 43 Seacroft test

    allRawDataNew = zeros(size(allRawData,1),47); % 53
    
if size(allRawData,2) > 47 % 53
        count = 1;
        for i = 1:size(allRawData,1)
%             if all(allRawData(i,48:end)==0) && ismember(allRawData(i,1),IMU_IDs) && allRawData(i,47)~=0  % 54  53  
            if all(allRawData(i,48:end)==0) && ismember(allRawData(i,1),IMU_IDs) && allRawData(i,47)~=0  % 54  53  
                allRawDataNew(count,:) = allRawData(i,1:47);  %% Set size as max, then truncate. 53
                count = count + 1;
            end
        end
elseif size(allRawData,2) == 41 % happens that these 41 column files have no errors that exceed the bounds of the 53 coulmn format, but will loop after cloumn 41, so have to reattach each pair of lines
            if  mod(size(allRawData,1),2) == 0          % divisible by two, set end
                size_allRawData = size(allRawData,1)-1;
            elseif mod(size(allRawData,1),2) == 1       % odd number of rows, avoids the final line (which will be truncated)
                size_allRawData = size(allRawData,1)-2;
            end
        count = 1;
            for i = 1:2:size_allRawData
                allRawData(count,1:53) = [allRawData(i,1:41) allRawData(i+1,1:12)]; % un-truncates pairs of lines
                count = count +1;
            end
        allRawData(count+1:end,:)=[];    % have been overwriting allRawData (no particular reason to do this) so clears the left over
            if allRawData(end,end) == 0     % a truncated final line will get removed
                    allRawData(end,:)=[]; 
            end
        allRawDataNew = allRawData; % matrix ready to copy over
else
    allRawDataNew = allRawData; % all good
end
% fprintf('tie 41 columns into 53 columsn/otherwsie filter 53 cols');
% toc
    
    allRawDataNew(~any(allRawDataNew,2),:) = [];  % remove zeros padding

   % imuNumber = zeros(size(allRawDataNew,1),1);  % says preallocation not necesary here 
    imuNumber = allRawDataNew(:,1);
    fprintf(['Clean and sort time: ']);
    toc

tic    % assess timings of this section
IMU_IDs_active = unique(allRawDataNew(:,1));

% clear ticks ticks_ms ticks_new ticks_new_cont ticks_zero tt time time_allRawDataNew
%     ticks_zero(size(allRawDataNew,1)+1:end)=[]; 
%     ticks_new(size(allRawDataNew,1)+1:end)=[]; 
%     ticks_ms(size(allRawDataNew,1)+1:end)=[]; 
%     ticks(size(allRawDataNew,1)+1:end)=[]; 
   
ticks = zeros(size(allRawDataNew,1),1);
time = zeros(size(allRawDataNew,1),7);
time_allRawDataNew(:,1:7) = allRawDataNew(:,41:47); % IMPLEMENT THIS. Amended 40:46

% for j = 1:size(allRawDataNew,1)   % removed adn replaced to reduce size of matrix to be read in following script
%     for k = 40:46   % should we instead cut these columns before procsssing/
%         t = k-39;
        
for j = 1:size(time_allRawDataNew,1)
    for t = 1:7   % should we instead cut these columns before procsssing/
        time(t) = time_allRawDataNew(j,t);
        t_name = (['t' num2str(t)]);
        assignin('base',t_name,time(t));
    end
% end

       
% varname = genvarname(['t' num2str(k-39)]) = time(k-39);
% genvarname(['t' num2str(k-39)]) = time(k-39);
% char(['t' num2str(k-39)]) = time(k-39);
% time(k-39) = genvarname(['t' num2str(k-39)]);

% % % (2018-07-19-16-20-08-428451) - ( 2018-07-19-16-20-08-431453)

% (2018-07-19-16-20-08-428451) - ( 2018-07-19-16-20-09-428451)
% 
% (-08) - (-09)

% yyyy-mm-dd-hh-mm-ss-ffffff
% t1   t2 t3 t4 t5 t6 t7


% ticks = ((t1 * 12) + t2) * 
% % % % ticks(j,1) = -(((((((((((t2-7)*31)+t3-19)*24)+t4)*60)+t5)*60)+t6)*1000000)+t7); %set to zero on day of first experiment Leeds 2.0
% ticks(j,1) = -(((((((((-t3-19)*24)-t4)*60)-t5)*60)-t6)*1000000)-t7); %set to zero on day of first experiment Leeds 2.0 %%%£££change minus vaues/zeroed to 19thJuly
%%%%%%%%%% ticks(j,1) = (((((((((-31*(t2+7)-t3-18)*24)-t4)*60)-t5)*60)-t6)*1000000)-t7); % day one experiment
% ticks(j,1) = (((((((((-31*(t2+7)-t3-18)*24)-t4)*60)-t5)*60)-t6)*1000000)-t7); % day one experiment
% ticks(j,1) = (((((((((30*(t2-9)+t3-11)*24)+t4)*60)+t5)*60)+t6)*1000000)+t7); % day one experiment
ticks(j,1) = ((((((((t3*24)+t4)*60)+t5)*60)+t6)*10000000)+t7); % day one experiment WORKS!!!!
end

% ticks_zero = ticks - 4083866958
ticks_zero(:,1) = ticks(:,1) - ticks(1,1); ticks_ms = ticks_zero / 1000;
%%%% ticks_zero = ticks; % - ticks(1,1); could use this to revert to 'universal time'

     fprintf(['COnvert timestamp time: ']);
     toc

%%%%%%%%%%%%%%%  time stretch

if size(IMU_IDs_active,1) == 2
    IMU_ID_1 = IMU_IDs_active(2);
else
    IMU_ID_0 = IMU_IDs_active(1);
end

% IMU_ID_1 = [];
% IMU_ID_0 = [];

clear IMU_ID_1 IMU_ID_0 % reset IMU tags
    
if ismember(61,IMU_IDs_active)
    IMU_ID_0 = 61; end
if ismember(65,IMU_IDs_active)
    IMU_ID_1 = 65; end
if ismember(26,IMU_IDs_active)
    if ~exist('IMU_ID_0','var')
        IMU_ID_0 = 26;
    elseif ~exist('IMU_ID_1','var')
        IMU_ID_1 = 26;
    end
end
if  ismember(43,IMU_IDs_active)
    IMU_ID_0 = 43; 
    IMU_ID_1 = 43;
end
if  ismember(25,IMU_IDs_active)
    IMU_ID_0 = 25; 
    IMU_ID_1 = 21; 
end

% exceptions might exist but for the purposes of Leeeds 2.0 should hold

        
% allRawDataNew(1,1) = allRawDataNew(1,1);

% for w = 1:length...
        

% count = 1;
% for i = 1: ...
% ticks_zero(i) = tick_datum;
% ticks_zero(count) = tick_datum;
% count = count + 1;
% if ticks_zero(count) = ticks_zero(count-1);

tic

ticks_new = zeros(size(ticks_zero));
count = 0;
% tick_datum = 0;
tick_datum = ticks_zero(1);
% ticks_new = 0;
ticks_new(1,1) = tick_datum;
for i = 1:size(ticks_zero,1)-1 % -1 so it dpoesn't overlflow and crash
%     tick_datum = ticks_zero(i);
    % if r1 - r0
    if ticks_zero(i+1) - ticks_zero(i)
        if count
            ticks_inc = (ticks_zero(i+1) - tick_datum) / (count+1);
                for j = 1:count
                ticks_new(i+j-count,1) = tick_datum + round(j*ticks_inc); % tune vairbility
                end
            ticks_new(i+1,1) = ticks_zero(i+1);
        count = 0;
        tick_datum = ticks_zero(i+1);
        else
        ticks_new(i+1,1) = ticks_zero(i+1);   
        tick_datum = ticks_zero(i+1);
        end
        
    else
    count = count + 1;
        if ticks_zero(i+1) == ticks_zero(end)
            ticks_new(i+1:size(ticks_zero,1),1) = ticks_zero(end); % fill in the end
        end
    end
end
fprintf(['Time stretch 1: ']);
toc

% ticks_zero = ticks_zeroCopy(:,1);

% p_count = 0;
% for p = 1:1
%     p_count = p_count +1;
% end
% p_count = 1;

% % % figure; plot(ticks_zero,allRawDataNew); % us these to hghlight effects of time stretch on resolution
% % % figure; plot(ticks_new,allRawDataNew);  % s these to hghlight effects of time stretch on resolution

% %  SKELETON CODE AND IDEAS FOR TIME STRETCH FOR SEPARATE IMUS
% 
%        ticks_0 = ticks_new;
%        ticks_1 = ticks_new;
% 
% for w = 1:size(allRawDataNew,1)-1
%     if  allRawDataNew(1,1) == 
%     allRawDataNew(w,1) == 
% %     IMU_ID_1
% %     IMU_ID_0
%         if allRawDataNew(w,1) ~= allRawDataNew(w+1,1)
%         if allRawDataNew(w,1) == IMU_ID_0 && ...
%            allRawDataNew(w+1,1) == IMU_ID_1
%             
%        
%        imuNumber = allRawDataNew(:,1);       
%        
%        for w = 1:size(imuNumber,1)-1
%     if  imuNumber(1,1) == 
%     imuNumber(w,1) == 
%         if imuNumber(w,1) ~= imuNumber(w+1,1)
%         if imuNumber(w,1) == IMU_ID_0 && ...
%            imuNumber(w+1,1) == IMU_ID_1
%        
% while        (imuNumber(w,1) == imuNumber(w+1,1))
% 
%    imuNumber(1,1) 
%     
% if (imuNumber(w,1) - imuNumber(w+1,1)) > 0  % 65 to 61
%     if datum_count_2 = 1
%         datum_count_1 = datum_count_1 + 1;   % thigh IMU (geneallu)
% if (imuNumber(w,1) - imuNumber(w+1,1)) < 0  % 61 to 65
%     datum_count_2 = datum_count_2 + 1;   % shank IMU (generally)
%     
%     
% if (imuNumber(w,1) - imuNumber(w+1,1))   % 65 to 61
%     if datum_count_2 = 1
%         datum_count_1 = datum_count_1 + 1;   % thigh IMU (geneallu)
% if (imuNumber(w,1) - imuNumber(w+1,1)) < 0  % 61 to 65
%     datum_count_2 = datum_count_2 + 1;   % shank IMU (generally)
%  
% % END OF SKELETON CODE< CAN DELETE
    
    %% LATEST
tic % 
tt = ticks_new;
tt(size(tt,1)+1) = tt(end);      % ##
clear datum_1 datum_2 ticks_new_cont
imuNumber = allRawDataNew(:,1);  
ticks_new_cont = zeros(size(tt));

switch imuNumber(end)   % slightly untidy but adding this (and ## above) 
    case 43
    case IMU_ID_0       % will help recover end portions
    imuNumber(size(imuNumber,1)+1) = IMU_ID_1;
    case IMU_ID_1
    imuNumber(size(imuNumber,1)+1) = IMU_ID_0;
end

% HERE ENDETH ATTEMPTS AT INTEGRATING THE ONE IMU CONDITION, 43 for
% Seacroft, can be continued or a separate script composed as I believe at
% this stage the time ris already distributed, so dosn't need full
% algorithm

datum_1(1:2) = 0; % important as must exist for if statement below (if has value)
datum_2(1:2) = 0; % "if exist('datum_2(1,2)','var')" doesn't return true

if imuNumber(1)==IMU_ID_0   % slightly slower than switch case below, at 0.016214
    datum_1(2) = 1;
%     datum_2(2) = find(imuNumber==IMU_ID_1,1); % first instance of IMU#2
elseif imuNumber(1)==IMU_ID_1
    datum_2(2) = 1;
%     datum_1(2) = find(imuNumber==IMU_ID_0,1); % first instance of IMU#1
end

% switch imuNumber(1)     % slightly faster than if above, at 0.014222
%     case IMU_ID_0
%         datum_1(2) = 1;
% %   	  datum_2(2) = find(imuNumber==IMU_ID_1,1);
%     case IMU_ID_1
%         datum_2(2) = 1;
% %         datum_1(2) = find(imuNumber==IMU_ID_0,1);
% end

% % % % % ######################## % % % % % % % ZEROS ticks_new_cont

for w = 1:size(imuNumber,1)-1
  
if (imuNumber(w,1) - imuNumber(w+1,1))  
    if imuNumber(w+1,1) == IMU_ID_0
%         if exist('datum_1(2)','var')
        if datum_1(2)
            datum_1(1) = datum_1(2);
        end
        datum_1(2) = (w+1);
        if datum_1(:) %==true
            for x = datum_1(1) : datum_2(2)-1
%                 ticks_new_cont(x,1) = ((tt(x) - datum_1(1)) * (datum_1(2) - datum_1(1)) / (datum_2(2) - datum_1(1)) ) + datum_1(1);
                ticks_new_cont(x,1) = round(((tt(x) - tt(datum_1(1))) * (tt(datum_1(2)) - tt(datum_1(1))) / (tt(datum_2(2)) - tt(datum_1(1)))) + tt(datum_1(1)));
            %   newVALUE =          (( oldVALUE    - datum(0) ) * ( datum(+1-new) - datum(0) ) / ( datum(+1-old) - datum(0) )) + datum(0)
            end
        end
    elseif imuNumber(w+1,1) == IMU_ID_1
%         if exist('datum_2(2)','var')
        if datum_2(2)
            datum_2(1) = datum_2(2);
        end
        datum_2(2) = (w+1);
        if datum_2(:) % ==true
            for x = datum_2(1) : datum_1(2)-1 
%                 ticks_new_cont(x,1) = ((ticks_new(x) - datum_2(1)) * (datum_2(2) - datum_2(1)) / (datum_1(2) - datum_2(1)) ) + datum_2(1);
                ticks_new_cont(x,1) = round(((tt(x) - tt(datum_2(1))) * (tt(datum_2(2)) - tt(datum_2(1))) / (tt(datum_1(2)) - tt(datum_2(1)))) + tt(datum_2(1)));
            end
        end
    end
end
end

tt_end_min = min(datum_2(2),datum_1(2));
tt_end_max = max(datum_2(2),datum_1(2));
ticks_new_cont(tt_end_min : tt_end_max) = tt(tt_end_min : tt_end_max); %% minus one here not technically neat but a very close approximation
  
imuNumber(end) = [];
tt(end) = [];
ticks_new_cont(end) = [];
% if w == size(imuNumber,1)

% format long
% timing.' = [tt.';ticks_new_cont.'];
% % % % % % timing_col = [tt ticks_new_cont];
% ticks_cont_SF = round(ticks_new_cont * 10^21) / 10^21;

% with this method the end is a little ragged, not fully stretched in the
% last segment, but for these purposes, anything more would be superfluous

% figure; plot(ticks_zero,allRawDataNew); % us these to hghlight effects of time stretch on resolution
% figure; plot(ticks_new,allRawDataNew);  % s these to hghlight effects of time stretch on resolution
%%%%%%% figure; plot(ticks_new_cont,allRawDataNew);  

TIMData = ticks_new_cont - ticks_new_cont(1);
% T_2Data = ticks_new - ticks_new(1);
% T_3Data = ticks_zero;

fprintf('time stretch 2 algorithm time: ');
toc

% TESTING %%%%%%%%%%%%

% % if exist('datum_1(2)','var')
% if exist('datum_2(1,2)','var')
% % if datum_2(2) ~=0
%     r=7;
% end
%         
% if datum_2(:)
% %     datum_2(2) ~=0
% %         (imuNumber(w,1) - imuNumber(w+1,1))
%     r=2;
% end

% TESTING %%%%%%%%%%%%%

    
%   tic
%   imuNumber(w,1) == IMU_ID_0 && imuNumber(w+1,1) == IMU_ID_1
%   toc % slower at 0.029794 seconds
%        
%   tic
%   (imuNumber(w,1) - imuNumber(w+1,1)) > 0  
%   toc % faster at 0.020041 seconds
    
    
    
      
% %    SKELETON FUNCTIONS FOR NEW TIME STRETCH
%        
%        newVALUE = (( oldVALUE - datum(0) ) * ( datum(+1-new) - datum(0) ) / ( datum(+1-old) - datum(0) )) + datum(0)
%        newVALUE = (( oldVALUE - datum(0) ) * ( datum(+1-new) - datum(0) ) / ( datum(+1-old) - datum(0) )) + datum(0)
%        
%        datum(0)         = current mark
%        datum(+1-new)    = next current mark
%        datum(+1-old)    = next contra mark
%        
%        ( datum(+2) - datum(0) ) / ( datum(+1) - datum(0) )



%%%%%%%%%%%%%%%  end of ime stretch
tic

QTNData = zeros(size(allRawDataNew,1),4);
ADCData = zeros(size(allRawDataNew,1),8);
IMUData = zeros(size(allRawDataNew,1),9);
IMUDataShort = zeros(size(IMUData));


count = 1;
% for i = 36:39
for i = 37:40 % corrected for exp 2.2
    QTNData(:,count) = allRawDataNew(:,i);
    count = count + 1;
end

count = 1;
for i = 20:2:34
    ADCData(:,count) = allRawDataNew(:,i)*256 + allRawDataNew(:,i+1); % VERFIY !!!!!!!!!!!!!!!!!!!!!!!!!!!
    count = count + 1;
end

count = 1;
for i = 2:2:18
    IMUData(:,count) = allRawDataNew(:,i) + allRawDataNew(:,i+1)*256; % VERFIY!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    count = count + 1;
end

for i = 1:size(IMUData,1)
    for j = 1:9
        if(IMUData(i,j)>=32768)
            IMUDataShort(i,j) = IMUData(i,j)-65536;
        else
            IMUDataShort(i,j) = IMUData(i,j);
        end
    end    
end
fprintf('byte manipulation algorithm time: ');
toc

%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%

% % % % % % % IMU_ID_1 = IMU_IDs_active(2);
% % % % % % % IMU_ID_0 = IMU_IDs_active(1);
tic % separate

IMUData1 = zeros(size(IMUDataShort));
ADCData1 = zeros(size(ADCData));
QTNData1 = zeros(size(QTNData));
TIMData1 = zeros(size(TIMData));

IMUData2 = zeros(size(IMUDataShort));
ADCData2 = zeros(size(ADCData));
QTNData2 = zeros(size(QTNData));
TIMData2 = zeros(size(TIMData));

count1 = 1;
count2 = 1;
for i = 1:size(IMUDataShort,1)  % organising data into matrix for IMU 1 or 2 depending on the number of the first column
    if imuNumber(i,1) == IMU_ID_0 % && ADCData(i,1)~=0 && ADCData(i,8)~=0   %ADC values 1 and 8 should always have value (assumed to remove overlapping packets)
        IMUData1(count1,:) = IMUDataShort(i,:);
        ADCData1(count1,:) = ADCData(i,:);
        QTNData1(count1,:) = QTNData(i,:);
        TIMData1(count1,:) = TIMData(i,:);
        
%         T_2Data1(count1,:) = T_2Data(i,:);
%         T_3Data1(count1,:) = T_3Data(i,:);
        
        count1 = count1 + 1;
    elseif imuNumber(i,1) == IMU_ID_1 % && ADCData(i,1)~=0 && ADCData(i,8)~=0
        IMUData2(count2,:) = IMUDataShort(i,:);
        ADCData2(count2,:) = ADCData(i,:);
        QTNData2(count2,:) = QTNData(i,:);
        TIMData2(count2,:) = TIMData(i,:);
        
%         T_2Data2(count2,:) = T_2Data(i,:);
%         T_3Data2(count2,:) = T_3Data(i,:);
                
        count2 = count2 + 1;
    end
end

    IMUData1(~any(IMUData1,2),:) = [];  % remove zeros padding
    ADCData1(~any(ADCData1,2),:) = [];
    QTNData1(~any(QTNData1,2),:) = [];
%     TIMData1(~any(TIMData1,2),:) = []; %% !! THIS WILL CUT ALL ROWS WITH ZERO !!
    TIMData1(size(IMUData1,1)+1:end,:)=[];
    
    IMUData2(~any(IMUData2,2),:) = [];  % remove zeros padding
    ADCData2(~any(ADCData2,2),:) = [];
    QTNData2(~any(QTNData2,2),:) = [];
%     TIMData2(~any(TIMData2,2),:) = []; %% !! THIS WILL CUT ALL ROWS WITH ZERO !!
    TIMData2(size(IMUData2,1)+1:end,:)=[];    

fprintf('Separaaton (1/2) algorithm time: ');
toc
% CLEAN AND SORT
% concatenate time (do all this within one for loop?) 
% track IMUs

%%  ticks_zero = no spread
%%  ticks_new = spread to bounds of each IMU
%%  ticks_new_cont = spread totally

% % TIMData = ticks_new_cont - ticks_new_cont(1); %%###NOTE, TIM Data adjusted for start ime, shouldn't it keep UTC?
% % T_2Data = ticks_new - ticks_new(1);
% % T_3Data = ticks_zero;

%%% PLOTS
% these are the plots used for initil analysis, recreate as needed

% % % figure; plot(ADCData1); title('IMU#one original data, no manipulation, no tiem scale');  % s these to hghlight effects of time stretch on resolution   
% % % figure; plot(T_3Data1,ADCData1); title('IMU#one, plotted to unmodified tiem scale'); %no stretch
% % % figure; plot(T_2Data1,ADCData1); title('IMU#one, tiem stretched within segment'); % partial stretch
% % % figure; plot(TIMData1,ADCData1); title('IMU#one, time stretched for separate IMUs'); % us these to hghlight effects of time stretch on resolution
% % % set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); %  ' segment ' num2str(si)
 
%%%%% this set most sed previosuly
% % figure; plot(ADCData1); title('IMU#one/two overlaid, original data, no manipulation, no tiem scale'); hold on;
% %         plot(ADCData2); hold off; set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]);
% % figure; plot(TIMData1,ADCData1); title('IMU#one/two overliad, final tiem stretch'); hold on;
% %         plot(TIMData2,ADCData2); set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]); hold off;
% %         
% %   figure; plot(TIMData1,ADCData1); title('IMU#one, final tiem stretch'); set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]); 
% %   figure; plot(TIMData2,ADCData2); title('IMU#two, final time stretch'); set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]); 
%%%%% end of commonly used set

% % %     figure; plot(TIMData1,ADCData1(:,7)); title('IMU#one, switch, final tiem stretch'); set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]); 
% % %   figure; plot(TIMData2,ADCData2(:,7)); title('IMU#two, switch, final tiem stretch'); set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]); 
  
% % % % % figure; subplot(2,1,1); plot(TIMData1,ADCData1); title('IMU#one, final tiem stretch'); hold on;
% % % % %         subplot(2,1,2); plot(TIMData2,ADCData2); title('IMU#two, final tiem stretch');
% % % % %         set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]); hold off;
% % % % %         
% % % % % all_ha = findobj( gcf, 'type', 'axes', 'tag', '' );
% % % % % linkaxes( all_ha, 'xy' );

  %%% END OF PLOTS

%% assess the success of this algorithm when impulses are aded

% dlmwrite('my_file.csv',1.234567,'delimiter',',','precision',7)




% % REMOVED TO SAVE DISC SPACE
            dlmwrite([file '_IMUData1.csv'],IMUData1,'delimiter',',','precision',9) ;
            dlmwrite([file '_IMUData2.csv'],IMUData2,'precision',9) ;
            dlmwrite([file '_ADCData1.csv'],ADCData1,'precision',6) ;
            dlmwrite([file '_ADCData2.csv'],ADCData2,'precision',6) ;
            
            dlmwrite([file '_QTNData1.csv'],QTNData1,'precision',8) ;
            dlmwrite([file '_QTNData2.csv'],QTNData2,'precision',8) ; 
            dlmwrite([file '_TIMData1.csv'],TIMData1,'precision',32) ;
            dlmwrite([file '_TIMData2.csv'],TIMData2,'precision',32) ;

            
% fprintf('Current exp complete algorithm time:\n');
% toc            
% end    
% fprintf('Complete algorithm time:\n');
% toc


% currently no switch/button code
%% interp_trial_script_TIMIntp

tic

% exp = 28;
% file  = char(experiment(exp));

% clear IMUData1 IMUData2 ADCData1 ADCData2 QTNData1 QTNData2 TIMData1 TIMData2 Data1 Data2
% clear Intp1 Intp2 IMUIntp1 ADCIntp1 QTNIntp1 TIMIntp1 IMUIntp2 ADCIntp2 QTNIntp2 TIMIntp2
 

%             IMUData1 = csvread([file '_IMUData1.csv']) ;
%             IMUData2 = csvread([file '_IMUData2.csv']) ;
%             ADCData1 = csvread([file '_ADCData1.csv']) ;
%             ADCData2 = csvread([file '_ADCData2.csv']) ;
%             QTNData1 = csvread([file '_QTNData1.csv']) ;
%             QTNData2 = csvread([file '_QTNData2.csv']) ;
%             TIMData1 = csvread([file '_TIMData1.csv']) ;
%             TIMData2 = csvread([file '_TIMData2.csv']) ;
        
% TIMData1(1) = 0;
% TIMData2(1) = 0;

Data1 = [IMUData1 ADCData1 QTNData1 TIMData1];
Data2 = [IMUData2 ADCData2 QTNData2 TIMData2];



%% interpolate both IMUs' data to continuous

% count1 = 0 or 1;
% count2 = 0/1;
count1 = 2;
count2 = 2;
counter1 = 0;
counter2 = 0;
equal_count = 0;
lengthT = size(TIMData1,1) + size(TIMData2,1);
Intp1 = zeros(lengthT,22);
Intp2 = zeros(lengthT,22);

TIMIntp1 = zeros(lengthT,1);
TIMIntp2 = zeros(lengthT,1);

terminal_length = lengthT - equal_count;

terminate_time = min(size(TIMData1,1),size(TIMData2,1));

% TIMIntp1(1) = 0;
% TIMIntp2(1) = 0;
    
for T = 1:lengthT
  if count1 < terminate_time && count2 < terminate_time    
%     if TIMData1(T) ~= TIMData2(T)
%         min(TIMData1(T),TIMData2(T))
%         min(TIMData1(count1),TIMData2(count2))

% if count1 > size(TIMData1,1)
%      Intp1(~any(Intp1,2),:) = [];
% end
% if count2 > size(TIMData2,1)
%      Intp2(~any(Intp2,2),:) = [];
% end

% two options? truncate or falsely interplate fixed value

        if TIMData1(count1) < TIMData2(count2)
            counter2 = counter2 + 1;
            
% % % % %             for TT = count2 : count2 + count
% % % % %             TIMIntp2(TT) = TIMData1(TT);
% % % % %             
% % % % %             TIMIntp2(TT) =          TIMData1(count2) - (count1)
% % % % %             
% % % % %             transfer time stamps across from counted for loop (TIMData1(count1) - TIMData(count2)
% % % % %             new value = old value (TIMData2(TT)) * 
% % % % %                     (TIMData1(count1) - TIMData2(count2))
% % % % %             
% % % % %             % new times = time_stamp(

if counter1 ~= 0
    for TT = T-counter1:T-1
%         TTT = count2-counter1:count2-1;
% % %     for TT = count2-counter1+1:count2 % check BODMAS : (count 2 - counter1 ) +1    MARKED (might be the same)
% % %     for TT = count2-counter1:count2-1
    % Intp1(TT,:) = ((Data1(count1,:)-Data1(count1-1,:))*(TIMData2(TT)-TIMData1(count1-1))/(TIMData1(count1)-TIMData1(count1-1)))+(Data1(count1-1,:)); % simply interpolates Data basedon spacing of Time, original but flawed, see others 
TIMIntp1(TT,:) = TIMIntp2(TT); %%%START HERE DATA?INTP
Intp1(TT,:) = ((Data1(count1,:)-Data1(count1-1,:))*(TIMIntp2(TT)-TIMData1(count1-1))/(TIMData1(count1)-TIMData1(count1-1)))+(Data1(count1-1,:)); % simply interpolates Data basedon spacing of Time
% % % Intp1(TT,:) = ((Data1(count1,:)-Data1(count1-1,:))*(TIMData2(TT)-TIMData1(count1-1))/(TIMData1(count1)-TIMData1(count1-1)))+(Data1(count1-1,:)); % MARKED (might be the same)
%%%% new value equation
%%%% to counter2 count
    end
            counter1 = 0;            
end
   Intp1(T,:) = Data1(count1,:);
TIMIntp1(T,:) = TIMData1(count1,:);
% IMUIntp1(T) = IMUData1(count1);
% ADCIntp1(T) = ADCData1(count1);
% QTNIntp1(T) = QTNData1(count1);
% TIMIntp1(T) = TIMData1(count1);
count1 = count1 + 1;

% count = count1 - count2; % modulus?

%         end

        elseif TIMData2(count2) < TIMData1(count1)
    counter1 = counter1 + 1;
        if counter2 ~= 0
                for TT = T-counter2:T-1
%                 for TT = count1-counter2+1:count1 % checkED BODMAS / : (count 2 - counter1 ) +1    MARKED (might be the same)
% % %                 for TT = count1-counter2:count1-1
% Intp2(TT,:) = ((Data2(count2,:)-Data2(count2-1,:))*(TIMData1(TT)-TIMData2(count2-1))/(TIMData2(count2)-TIMData2(count2-1)))+(Data2(count2-1,:));
TIMIntp2(TT,:) = TIMIntp1(TT);
Intp2(TT,:) = ((Data2(count2,:)-Data2(count2-1,:))*(TIMIntp1(TT)-TIMData2(count2-1))/(TIMData2(count2)-TIMData2(count2-1)))+(Data2(count2-1,:));
% % % Intp2(TT,:) = ((Data2(count2,:)-Data2(count2-1,:))*(TIMData1(TT)-TIMData2(count2-1))/(TIMData2(count2)-TIMData2(count2-1)))+(Data2(count2-1,:));
%%%% new value equation
%%%% to counter 1count
                end
counter2 = 0;
        end
   Intp2(T,:) = Data2(count2,:);
TIMIntp2(T,:) = TIMData2(count2,:);
% IMUIntp2(T) = IMUData2(count2);
% ADCIntp2(T) = ADCData2(count2);
% QTNIntp2(T) = QTNData2(count2);
% TIMIntp2(T) = TIMData2(count2);
count2 = count2 + 1;
% end
 
elseif TIMData1(count1) == TIMData2(count2) % if to incremenet both, probs not necessary (reassess at END of loop (well, beginnignG)
        equal_count = equal_count + 1;
        if counter1 ~= 0
        for TT = T-counter1:T-1
%         for TT = count2-counter1+1:count2  % shoudl be the same as aove but allows use of TIMData2(TT) instead of TIMIntp2(TT)
% % %           for TT = count2-counter1:count2-1
% % %         Intp1(TT,:) = ((Data1(count1,:)-Data1(count1-1,:))*(TIMData2(TT)-TIMData1(count1-1))/(TIMData1(count1)-TIMData1(count1-1)))+(Data1(count1-1,:)); % simply interpolates Data basedon spacing of Time
        TIMIntp1(TT,:) = TIMIntp2(TT);
        Intp1(TT,:) = ((Data1(count1,:)-Data1(count1-1,:))*(TIMIntp2(TT)-TIMData1(count1-1))/(TIMData1(count1)-TIMData1(count1-1)))+(Data1(count1-1,:)); % simply interpolates Data basedon spacing of Time
        end
        counter1 = 0;            
        end
        if counter2 ~= 0
        for TT = T-counter2:T-1
%         for TT = count1-counter2+1:count1  % shoudl be the same as aove but allows use of TIMData2(TT) instead of TIMIntp2(TT)
% % %         for TT = count1-counter2:count1-1
% % %         Intp2(TT,:) = ((Data2(count2,:)-Data2(count2-1,:))*(TIMData1(TT)-TIMData2(count2-1))/(TIMData2(count2)-TIMData2(count2-1)))+(Data2(count2-1,:));
        TIMIntp2(TT,:) = TIMIntp1(TT);
        Intp2(TT,:) = ((Data2(count2,:)-Data2(count2-1,:))*(TIMIntp1(TT)-TIMData2(count2-1))/(TIMData2(count2)-TIMData2(count2-1)))+(Data2(count2-1,:));
        end
        counter2 = 0;
        end

   Intp1(T,:) = Data1(count1,:);
TIMIntp1(T,:) = TIMData1(count1,:);
% IMUIntp1(T) = IMUData1(count1);
% ADCIntp1(T) = ADCData1(count1);
% QTNIntp1(T) = QTNData1(count1);
% TIMIntp1(T) = TIMData1(count1);
count1 = count1 + 1;
   Intp2(T,:) = Data2(count2,:);
TIMIntp2(T,:) = TIMData2(count2,:);
% IMUIntp2(T) = IMUData2(count2);
% ADCIntp2(T) = ADCData2(count2);
% QTNIntp2(T) = QTNData2(count2);
% TIMIntp2(T) = TIMData2(count2);
count2 = count2 + 1;
    end
end
end

%     work in progress
% TIMData1
% TIMData2
% 
% ticks_new_cont


%%%not necssary
% if count1 > size(TIMData1,1)
%      Intp1(~any(Intp1,2),:) = [];
% end
% if count2 > size(TIMData2,1)
%      Intp2(~any(Intp2,2),:) = [];
% end
%% not necessary



% figure; plot(Intp1);
% figure; plot(Data1);


TIMIntp1(~any(TIMIntp1,2),:) = []; % NOTE THSI WILL ONLY WORK IF WE ARE TRUNCATING ROW ONE
TIMIntp2(~any(TIMIntp2,2),:) = [];
terminal_length_trunc = min(size(TIMIntp1,1),size(TIMIntp2,1));
Intp1(terminal_length_trunc+1:end,:)=[];
Intp2(terminal_length_trunc+1:end,:)=[];

% Intp1(~any(Intp1,2),:) = [];
% Intp2(~any(Intp2,2),:) = [];
% terminal_length_trunc = min(size(Intp1,1),size(Intp2,1));
%     Intp1(terminal_length_trunc+1:end,:)=[];

IMUIntp1 = Intp1(:,1:9);
ADCIntp1 = Intp1(:,10:17);
QTNIntp1 = Intp1(:,18:21);
TIMIntp1 = Intp1(:,22);

IMUIntp2 = Intp2(:,1:9);
ADCIntp2 = Intp2(:,10:17);
QTNIntp2 = Intp2(:,18:21);
TIMIntp2 = Intp2(:,22);

    

% figure; plot(TIMIntp1,ADCIntp1); title('IMU#one, final interpolation');
% figure; plot(TIMData1,ADCData1); title('IMU#one, time stretch, pre-interpolation');
%         set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]);figure; plot(TIMIntp1,ADCIntp1); title('IMU#one, final interpolation');
%         
% figure; subplot(211); plot(TIMIntp1,ADCIntp1); title('IMU#one, post-interpolation');
%         subplot(212); plot(TIMIntp2,ADCIntp2); title('IMU#two, post-interpolation');
%         set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]);
% 
% all_ha = findobj( gcf, 'type', 'axes', 'tag', '' );
% linkaxes( all_ha, 'xy' );
% 
% figure; plot(TIMIntp1,ADCIntp1); title('IMU#one, post-interpolation'); hold on;
%         plot(TIMIntp2,ADCIntp2); hold off;
%         set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]);
%         
% figure; subplot(211); plot(TIMIntp1,ADCIntp1); title('IMU#one, post-interpolation');
%         subplot(212); plot(TIMIntp2,ADCIntp2); title('IMU#two, post-interpolation');
%         
%         figure; subplot(221); plot(TIMIntp1,ADCIntp1); title('IMU#one, post-interpolation');
%         subplot(222); plot(TIMIntp2,ADCIntp2); title('IMU#two, post-interpolation');
%         subplot(223); plot(TIMData1,ADCData1); title('IMU#one, pre-interpolation');
%         subplot(224); plot(TIMData2,ADCData2); title('IMU#two, pre-interpolation');
%         set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]);
% 
% all_ha = findobj( gcf, 'type', 'axes', 'tag', '' );
% linkaxes( all_ha, 'xy' );
% 
%         figure; subplot(211); plot(TIMIntp1,ADCIntp1); title('IMU#one, post-interpolation'); hold on;
%                               plot(TIMIntp2,ADCIntp2); title('IMU#two, post-interpolation'); hold off;
%                 subplot(212); plot(TIMData1,ADCData1); title('IMU#one, pre-interpolation'); hold on;
%                               plot(TIMData2,ADCData2); title('IMU#two, pre-interpolation'); hold off;
%         set(gcf,'numbertitle','on','name',[file '; exp ' num2str(exp)]);
%         all_ha = findobj( gcf, 'type', 'axes', 'tag', '' );
%         linkaxes( all_ha, 'xy' );
%         

% % % %%REMOVED FOR DENSITY OF FIGURES
% % % figure;  plot(TIMIntp1,ADCIntp1); title('Amputee Subject 12's socket'); % hold on;
%         subplot(211); plot(TIMIntp2,ADCIntp2); title('IMU#two, post-interpolation'); hold off;
% subplot(211);









% %         REMOVED TO SAVE DISC SPACE
%  tic       
            dlmwrite([file '_Intp1.csv'],Intp1,'delimiter',',','precision',16) ;
            dlmwrite([file '_Intp2.csv'],Intp2,'precision',16) ;
            dlmwrite([file '_IMUIntp1.csv'],IMUIntp1,'precision',9) ;
            dlmwrite([file '_IMUIntp2.csv'],IMUIntp2,'precision',9) ; % max/min -32767 plus 3dp
            dlmwrite([file '_ADCIntp1.csv'],ADCIntp1,'precision',6) ; % to reduce number of decimal places (3) (otherwise 10sf)
            dlmwrite([file '_ADCIntp2.csv'],ADCIntp2,'precision',6) ;
            dlmwrite([file '_QTNIntp1.csv'],QTNIntp1,'precision',8) ; % 6sf/dp
            dlmwrite([file '_QTNIntp2.csv'],QTNIntp2,'precision',8) ; % 6sf/dp
            dlmwrite([file '_TIMIntp1.csv'],TIMIntp1,'precision',16) ; % 9 sf, int
            dlmwrite([file '_TIMIntp2.csv'],TIMIntp2,'precision',16) ; % 9 sf, int (space for very long ?? experiments)
%  toc
  





fprintf('INterpolation script time: ');
toc


%####################
% RESAMPLE 13/6/22


%             IMUData1 = csvread([file '_IMUData1.csv']) ;
%             IMUData2 = csvread([file '_IMUData2.csv']) ;
%             ADCData1 = csvread([file '_ADCData1.csv']) ;
%             ADCData2 = csvread([file '_ADCData2.csv']) ;
%             QTNData1 = csvread([file '_QTNData1.csv']) ;
%             QTNData2 = csvread([file '_QTNData2.csv']) ;
%             TIMData1 = csvread([file '_TIMData1.csv']) ;
%             TIMData2 = csvread([file '_TIMData2.csv']) ;

%{
%skip this, not necessary in _221, repeated
            TIMIntp1 = csvread([file '_TIMIntp1.csv']) ;
            TIMIntp2 = csvread([file '_TIMIntp2.csv']) ;
               Intp1 = csvread([file '_Intp1.csv']) ;
               Intp2 = csvread([file '_Intp2.csv']) ;
    %}
            tic
clear ReSamp1 ReSamp2

count_freq = 10000; % 1000 or 10,000 ? unit either microsecond (therefore millisecond) or 10th us (therefore tenth ms)
count = count_freq; % or 0 or = (2 * count_freq) or 10,000
% for T = 0:1000:TIMIntp1(end)

% ReSamp1 = zeros(size(Intp1,1)/10 ,22);
% end_ = find(Intp1(:,22),1,'last');

end_ = TIMIntp1(size(TIMIntp1,1));
end_short = floor (end_/count_freq);
ReSamp1 = zeros(end_short,22);
ReSamp2 = zeros(end_short,22);

    
%     ReSamp1(1) = Intp1(1);
for I = 2:size(TIMIntp1,1) % note this will define ReSamp1 approximately
   
    while TIMIntp1(I) >= count % check equal
%     ReSamp1a(count/count_freq,:) = (count-(TIMIntp1(I-1))/(TIMIntp1(I)-TIMIntp1(I-1))) * (Intp1(I,:)-Intp1(I-1,:));
    ReSamp1(count/count_freq,:) = Intp1(I-1,:) + ((Intp1(I,:)-Intp1(I-1,:)) * ((count-(TIMIntp1(I-1)))/(TIMIntp1(I)-TIMIntp1(I-1))));
    ReSamp2(count/count_freq,:) = Intp2(I-1,:) + ((Intp2(I,:)-Intp2(I-1,:)) * ((count-(TIMIntp2(I-1)))/(TIMIntp2(I)-TIMIntp2(I-1))));
    count = count + count_freq;

% count = count
% i = TIMIntp1/2(I)
% i-1 = TIMIntp1/2(I-1)
% data = Intp1/2
% WHQT ABOUT I=0 ?
% Is Intp1 = INtp2 ?
    end % while count
%  TIMData1(end)
 %  NOTE INTP 1/2 now do 2
end % for I
            
% % % toc
% 1290.707669 seconds (exp 64, freq 1000)


% figure; plot(ReSamp1(:,22));
% figure;
% subplot(4,1,1); plot(ReSamp1(:,1:9));
% subplot(4,1,2); plot(ReSamp1(:,10:17));
% subplot(4,1,3); plot(ReSamp1(:,8:21));
% subplot(4,1,4); plot(ReSamp1(:,22));
% 
% figure; plot(ReSamp2(:,22));
% figure;
% subplot(4,1,1); plot(ReSamp2(:,1:9));
% subplot(4,1,2); plot(ReSamp2(:,10:17));
% subplot(4,1,3); plot(ReSamp2(:,8:21));
% subplot(4,1,4); plot(ReSamp2(:,22));
% 
% figure; plot(Intp1(:,22));
% figure;
% subplot(4,1,1); plot(Intp1(:,1:9));
% subplot(4,1,2); plot(Intp1(:,10:17));
% subplot(4,1,3); plot(Intp1(:,8:21));
% subplot(4,1,4); plot(Intp1(:,22));
% 
% figure; plot(Intp2(:,22));
% figure;
% subplot(4,1,1); plot(Intp2(:,1:9));
% subplot(4,1,2); plot(Intp2(:,10:17));
% subplot(4,1,3); plot(Intp2(:,8:21));
% subplot(4,1,4); plot(Intp2(:,22));

tic
            dlmwrite([file '_ReSamp1_1k.csv'],ReSamp1,'delimiter',',','precision',16) ;
            dlmwrite([file '_ReSamp2_1k.csv'],ReSamp2,'delimiter',',','precision',16) ;
            
%             dlmwrite([file '_ReSamp1.csv'],ReSamp1,'delimiter',',','precision',16) ;
%             dlmwrite([file '_ReSamp2.csv'],ReSamp2,'delimiter',',','precision',16) ;
toc         


fprintf('Current exp complete algorithm time: ');
toc            
end    
fprintf('Complete algorithm time:\n');
% toc
  
  
% % % %%REMOVED FOR DENSITY OF FIGURES
% % % figure; plot(Intp1(:,22));
% % % figure; plot(TIMIntp1);
% plot((stretched1(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.2,0.9,0.4]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); ylim(yl); 

% % COULD BE USEFUL FOR PLOTS
% 
% colour{1} = [0.2 0.3 0.4];
% colour{2} = [0.33 0.44 0.55];
% colour{3} = [0.46 0.57 0.69];
% colour{4} = [0.59 0.71 0.84];
% 
% figure; subplot(5,1,1); plot(KneeDisplacement_func_, 'LineWidth',1,'Color',[0.2,0.3,0.4]); title(['Knee Angle derived from gyroscope; LP:' num2str(LP_freq) ' Hz, HP:' num2str(highpassthresh) ' Hz']); grid on; grid minor; set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp) '; LP freq threshold: ' num2str(LP_freq) ' Hz']); yl = ylim; hold on; 
% [PKS_ang,LOCS_ang] = findpeaks(KneeDisplacement_func_); scatter(LOCS_ang,PKS_ang); [PKS_ang_neg,LOCS_ang_neg] = findpeaks(-KneeDisplacement_func_); scatter(LOCS_ang_neg,-PKS_ang_neg);
% 
% subplot(5,1,1); plot((stretched1(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.2,0.9,0.4]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); ylim(yl); 
% subplot(5,1,1); plot((stretched2(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.9,0.3,0.4]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]);  ylim(yl); hold off;
% 
% subplot(5,1,2); plot(+ang_cor_for_noise, 'LineWidth',1,'Color',[0.2,0.3,0.4]); title('Knee Angle derived from Quaternions [corrected for noise]'); grid on; grid minor; set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp) '; LP freq threshold: ' num2str(LP_freq) ' Hz']); yl = ylim; hold on; 
% subplot(5,1,2); plot((stretched1(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.2,0.9,0.4]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); ylim(yl);  
% subplot(5,1,2); plot((stretched2(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.9,0.3,0.4]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); ylim(yl); 
% [PKS_ang,LOCS_ang] = findpeaks(ang_cor_for_noise); scatter(LOCS_ang,PKS_ang); [PKS_ang_neg,LOCS_ang_neg] = findpeaks(-ang_cor_for_noise); scatter(LOCS_ang_neg,-PKS_ang_neg); hold off;
%  
% subplot(5,1,3); plot(IMUData2(:,7:9));  yl = ylim;  grid on; grid minor; hold on;                  
% subplot(5,1,3); plot((stretched1(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.2,0.9,0.4]); grid on; grid minor; set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); ylim(yl);  
% subplot(5,1,3); plot((stretched2(:,17,si)*(yl(2)-yl(1))/1000)+yl(1), 'LineWidth',1,'Color',[0.9,0.3,0.4]); grid on; grid minor; set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); ylim(yl); hold off; 
%                          
% subplot(5,1,4); plot(stretched1(:,10,si), 'LineWidth',1,'Color',colour{4}); title('Stretched and Normalised data segment, IMU1 MMGs 1:4');  grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); hold on; 
% subplot(5,1,4); plot(stretched1(:,11,si), 'LineWidth',1,'Color',[colour{3}]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp) ' segment ' num2str(si)]); 
% subplot(5,1,4); plot(stretched1(:,12,si), 'LineWidth',1,'Color',[colour{2}]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp) ' segment ' num2str(si)]); 
% subplot(5,1,4); plot(stretched1(:,13,si), 'LineWidth',1,'Color',[colour{1}]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp) ' segment ' num2str(si)]); 
% subplot(5,1,4); plot(stretched1(:,17,si), 'LineWidth',1,'Color',[0.2,0.9,0.4]); grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); hold off;
%  
% subplot(5,1,5); plot(stretched2(:,10,si), 'LineWidth',1,'Color',colour{4}); title('Stretched and Normalised data segment, IMU2 MMGs 5:8');  grid on; grid minor; ylim([100 400]); set(gcf,'numbertitle','on','name',[filename '; exp ' num2str(exp)]); hold on; 
% subplot(5,1,5); plot(stretched2(:,11,si), 'LineWidth',1,'Color',colour{3}); grid on; grid minor; ylim([100 400]); 
% subplot(5,1,5); plot(stretched2(:,12,si), 'LineWidth',1,'Color',colour{2}); grid on; grid minor; ylim([100 400]); 
% subplot(5,1,5); plot(stretched2(:,13,si), 'LineWidth',1,'Color',colour{1}); grid on; grid minor; ylim([100 400]); 
% subplot(5,1,5); plot(stretched2(:,17,si), 'LineWidth',1,'Color',[0.9,0.3,0.4]); grid on; grid minor; ylim([100 400]); hold off;
%  
% all_ha = findobj( gcf, 'type', 'axes', 'tag', '' );
% linkaxes( all_ha, 'x' );



toc



