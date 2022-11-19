%% THIS ALGORITHM TAKES RESAMPLED DATA FROM EXPERIMENT 2.2 AND SENDS IT TO 
%  THE CLASSIFIER AFTER SUITABLE PROCESSING SUCH AS FEATURE EXTRACTION...
%  IT IS DESIGNED FOR EXP 2.2 (Leeds) ONLY
tic

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
'fri2_rampx10-faridhadafault'
'fri2_ramp4_x10'
'fri2_stsx20'
'fri2_stsx20LOST'
'fri2_sts3x20'
'fri2_flexex'
'sat2_walkx20'
'sat2_walk2x20'
'sat2_ramptrial'
'sat2_rampx19crashfarid'
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
'20180910142744-m4dg' % 10th Septemebr 2018, Amputee subject day one, testing
'20180910143805-m4dg'
'20180910145034-m4dg' % 100
...
'20180911140907-m4dg' % 101 % 11th September Amputee subject day one experimnt
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
'20180912114220-  save3  ' % 115 % Amputee subject day two experiment 
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

clear HEELTOETABLE CONF_MAT_MAT RESULTS_table_MAT win_table
Toe_count = 0;
A = 1;
B = 1:2;
C = 3;
D = [1,3];

[A B C D];

% Toe = [1:1; 1:2; 3:3; 1:3]
% for Toe = [A; B; C; D]
%     Toe
% end

% ZEROS FOR INCREMENT ARRAYS AT END?
for win = 1000 % 1000 % 50:50:1150 %1000 %  350:50:450
    increment = 100; % win; % win; % 1000 ; % for removal of increment algorithm, make incremment = to win
for TOE = 3 % 3 % [1,3] %1 % 3 %  3 %  [1,3] % for isolated gait events 
% win_scheme = 20;    
for win_scheme = 0 % next 1  20 % 1 % [0,1] % 201 % %  0:1;
% for Toe =  1,2
    Toe_count = Toe_count + 1;

clear C class Fs

H = [];   % hard copy final feature matrix
HH = [];  % soft copy 
Hc = [];  % class row

J = []; % intermediate feature matrix concatenation
Jc = []; % class array

G = []; % initialising the first level conctenated matrix of feature values
Gc = [];

% LIST OF VARIABLES:
%  win_scheme, features, (if switch_ch(T))
%  TOE, EXP, day 
%  win, 

% for conglomerated gait events
for TOE = TOE % [1,3] %  3  %  [1,3] %   TOE %  TOE %  [1,3] % 1:2 % Toe
        if TOE == 1
           toe = [];
        elseif TOE == 2  % toe strike
           toe = 1;        
        elseif TOE == 3  % toe off
           toe = 1;
        end
%     end % place after EXP loop
    
% clear J Jc

% EXP = 4;
for EXP = 2 % :-1:0     % 2    
day = 'two';

% ch = 4; % note cant set here if runnign part two only.
% win_scheme_ = 20;

array221 = 1:221;
% array_exc = [1:103 114:115 133:134 153:155 179:188 191 202:203];
if EXP == 4
        array_exc = [1:104];
elseif EXP == 3
        if day == 'all'
        array_exc = [1:188 191 202:203];
    elseif day == 'one'
        array_exc = [1:188 191 202:221]; 
    elseif day == 'two'
        array_exc = [1:203]; end
elseif EXP == 2
        if day == 'all'
        array_exc = [1:134 140 142 152:155 165 179:221];
    elseif day == 'one'
        array_exc = [1:134 140 142 152:221]; 
    elseif day == 'two'
        array_exc = [1:155 165 179:221]; end
% array_exc = [1:134 153:155 179:221]; %day one [1:134 153:221]; % day two [1:155 179:221];
elseif EXP == 1  % contralateral side / right side
        if day == 'all'

    if toe
    array_exc = [1:124 133:221]; % JUST EXPs WHEN RightToe WORKS
    else
    array_exc = [1:104 105 114:115 133:221]; % ORIGINAL BEFORE 'RT' CHANNEL USED
    end                 % ditch 105 for now, causes endless problems every time

    elseif day == 'one'     % NOTE set (day=all) if running EXP or TOE loops
        array_exc = [1:104 114:221]; 
    elseif day == 'two'
        array_exc = [1:115 124 133:221]; end % 12 or 
% array_exc = [1:103 114:115 133:221]; %day one [1:104 114:221]; % day two [1:115 133:221];
elseif EXP == 0 % ipsilateral side / left side
        if day == 'all'
%         array_exc = [1:104 110 114:115 133:221]; % remove 110 due to unidentified error
        
    if toe
    array_exc = [1:104 110 114:115 124 133:221]; % remove 110 due to unidentified error
    else
    array_exc = [1:104 110 114:115 133:221]; % remove 110?? due to unidentified error
    end
    
    elseif day == 'one' 
        array_exc = [1:104 110 114:221]; 
    elseif day == 'two'
        array_exc = [1:115 133:221]; end
% array_exc = [1:103 114:115 133:221]; %day one [1:104 114:221]; % day two [1:115 133:221];
end
exc = array_exc';
array221';
array221(array_exc) = [];



% clear G Gc

for exp = array221 % [142 145 152 165] %  %[189:190 192:201 204:221]
    
filename = char(experiment{exp});
    
complete_exp1 = csvread([filename '_ReSamp1_1k.csv']) ;
complete_exp2 = csvread([filename '_ReSamp2_1k.csv']) ;

clearvars     IMUData1 IMUData2 ADCData1 ADCData2 QTNData1 QTNData2 TIMData1 TIMData2...
                ADCData1_BPfilt ADCData2_BPfilt IMUData1_LPfilt IMUData2_LPfilt

    IMUData1 = complete_exp1(:,1:9);
    IMUData2 = complete_exp2(:,1:9);
    ADCData1 = complete_exp1(:,10:17);  % note: ADC currently unfiltered in previous code
    ADCData2 = complete_exp2(:,10:17);
    QTNData1 = complete_exp1(:,18:21);
    QTNData2 = complete_exp2(:,18:21);
    TIMData1 = complete_exp1(:,22);
    TIMData2 = complete_exp2(:,22);
    
size(IMUData1,1);
    


    freq = 1000;
    samplePeriod = 1/freq;
    freq_MMG = 1000;
    samplePeriod_MMG = 1/freq_MMG;  %###
    freq_IMU = 1000;
    samplePeriod_IMU = 1/freq_IMU;  %###
    order = 4;
    filtcutlow = 1;
    filtcuthigh = 100; % 50;
    filter_multiplier = 0.08;   %???

    highpassthresh = 0.04;
	LP_freq = 4; 

    [dd,cc] = butter(order,(2*highpassthresh/freq_IMU),'high');
    [ff,ee] = butter(order,(2*LP_freq/freq_IMU),'low');
    [hh,gg] = butter(order,[(2*highpassthresh)/freq_IMU (2*LP_freq)/freq_IMU],'bandpass');    
    
    % bandpass for MMG
    [bb,aa] = butter(order,[(2*filtcutlow)/freq_MMG (2*filtcuthigh)/freq_MMG],'bandpass');
 
    
%     IMUData1_LPfilt = filtfilt(hh,gg,IMUData1);   % 4Hz LOWPASS
%     IMUData2_LPfilt = filtfilt(hh,gg,IMUData2);   % filtfilt for offline, filter for real-time    

    IMUData1_LPfilt = IMUData1; % bypas filter as A) not used B) better without (for my purposes)
    IMUData2_LPfilt = IMUData2;
    
    ADCData1_BPfilt = filtfilt(bb,aa,ADCData1);
    ADCData2_BPfilt = filtfilt(bb,aa,ADCData2);
    
%     ADCData1_BPfilt = ADCData1;
%     ADCData2_BPfilt = ADCData2;

                colour{1} = [0.2 0.3 0.4];
                colour{2} = [0.33 0.44 0.55];
                colour{3} = [0.46 0.57 0.69];
                colour{4} = [0.59 0.71 0.84];
                
         si = 1;   

clearvars stretched1 stretched2


%% I HAVE CHOSEN OT REMOVE THE FILTER UNTIL SUCH TIMES AS IT IS NCESSARY FOR CLAIFICATION
% % i HAVE DONE THIS BECUASE I WANT TO SASSESS THE FOOT SWITCH AND BUTTON/SWITCH SSTEM.

% stretched1(:,10:15) = ADCData1_BPfilt(:,1:6); % original
% stretched1(:,16:17) = ADCData1(:,7:8);

%% RENAME THIS FROM STRECTHED
stretched1(:,10:15) = ADCData1(:,1:6);
stretched1(:,16:17) = ADCData1(:,7:8);


% stretched2(:,10:15) = ADCData2_BPfilt(:,1:6); % ,si   % original
% stretched2(:,16:17) = ADCData2(:,7:8); % ,si

stretched2(:,10:15) = ADCData2(:,1:6); % ,si
stretched2(:,16:17) = ADCData2(:,7:8); % ,si


% figure; histogram(ADCData1(:,6),1000); 




% EXP = 1, day = one

    if exp ==	105	
    act =	'RS';
elseif exp ==	106	
    act =	'ST';
elseif exp ==	107	
    act =	'WN';
elseif exp ==	108	
    act =	'WF';
elseif exp ==	109	
    act =	'WS';
elseif exp ==	110	
    act =	'RN';
elseif exp ==	111	
    act =	'RN';
elseif exp ==	112	
    act =	'RS';
elseif exp ==	113	
    act =	'RS';
% elseif exp ==	104	
% act =	'RN';
				

% EXP = 1, day = two
					
elseif exp ==	116	
    act =	'WN';
elseif exp ==	117	
    act =	'WF';
elseif exp ==	118	
    act =	'WS';
elseif exp ==	119	
    act =	'RN';
elseif exp ==	120	
    act =	'RN';
elseif exp ==	121	
    act =	'RS';
elseif exp ==	122	
    act =	'RS';
elseif exp ==	123	
    act =	'RS';
elseif exp ==	124	
    act =	'ST';
elseif exp ==	125	
    act =	'WN';
elseif exp ==	126	
    act =	'WF';
elseif exp ==	127	
    act =	'WS';
elseif exp ==	128	
    act =	'RN';
elseif exp ==	129	
    act =	'RN';
elseif exp ==	130	
    act =	'RS';
elseif exp ==	131	
    act =	'RS';
elseif exp ==	132	
    act =	'ST';
end					




% EXP = 2, day = one

if exp ==	135	
    act =	'WN';
elseif exp ==	136	
    act =	'WF';
elseif exp ==	137	
    act =	'WS';
elseif exp ==	138	
    act =	'RN';
elseif exp ==	139	
    act =	'RN';
elseif exp ==	140	
    act =	'RS';
elseif exp ==	141	
    act =	'RS';
elseif exp ==	142	
    act =	'ST';
elseif exp ==	143	
    act =	'ST';
elseif exp ==	144	
    act =	'WN';
elseif exp ==	145	
    act =	'WF';
elseif exp ==	146	
    act =	'WS';
    
elseif exp ==	147	
    act =	'RN';
elseif exp ==	148	
    act =	'RN';
elseif exp ==	149	
    act =	'RS';
elseif exp ==	150	
    act =	'RS';
elseif exp ==	151	
    act =	'ST';
elseif exp ==	152	
    act =	'ST';												
					
    
% EXP = 2, day = two    
    
elseif exp ==	156	
    act =	'WN';
elseif exp ==	157	
    act =	'WF';
elseif exp ==	158	
    act =	'WS';
elseif exp ==	159	
    act =	'RN';
elseif exp ==	160	
    act =	'RN';
elseif exp ==	161	
    act =	'RS';
elseif exp ==	162	
    act =	'RS';
elseif exp ==	163	
    act =	'ST';
elseif exp ==	164	
    act =	'ST';
elseif exp ==	165	
    act =	'ST';
elseif exp ==	166	
    act =	'ST';
elseif exp ==	167	
    act =	'ST';
elseif exp ==	168	
    act =	'ST';
elseif exp ==	169	
    act =	'ST';
elseif exp ==	170	
    act =	'ST';
elseif exp ==	171	
    act =	'WN';
elseif exp ==	172	
    act =	'WF';
elseif exp ==	173	
    act =	'WS';
elseif exp ==	174	
    act =	'RN';
elseif exp ==	175	
    act =	'RN';
elseif exp ==	176	
    act =	'RN';
elseif exp ==	177	
    act =	'RS';
elseif exp ==	178	
    act =	'RS';
end





% EXP = 3, day = one

    if exp ==	189	
    act =	'WN';
elseif exp ==	190	
    act =	'WF';
elseif exp ==	191	
    act =	'WS';
elseif exp ==	192	
    act =	'WS';
elseif exp ==	193	
    act =	'RN';
elseif exp ==	194	
    act =	'RS';
elseif exp ==	195	
    act =	'RS';
elseif exp ==	196	
    act =	'RN';
elseif exp ==	197	
    act =	'RN';
elseif exp ==	198	
    act =	'RS';
elseif exp ==	199
    act =	'ST';
elseif exp ==	200	
    act =	'ST';
elseif exp ==	201	
    act =	'ST';
					
				
 
% EXP = 3, day = two    
    
elseif exp ==	204	
    act =	'WN';
elseif exp ==	205	
    act =	'WN';
elseif exp ==	206	
    act =	'WF';
elseif exp ==	207	
    act =	'WS';
elseif exp ==	208	
    act =	'RN';
elseif exp ==	209	
    act =	'RS';
elseif exp ==	210	
    act =	'RN';
elseif exp ==	211	
    act =	'RS';
elseif exp ==	212	
    act =	'WN';
elseif exp ==	213	
    act =	'WF';
elseif exp ==	214	
    act =	'WS';
elseif exp ==	215	
    act =	'WS';
elseif exp ==	216	
    act =	'RN';
elseif exp ==	217	
    act =	'RS';
elseif exp ==	218	
    act =	'RN';
elseif exp ==	219	
    act =	'RS';
elseif exp ==	220	
    act =	'ST';
elseif exp ==	221	
    act =	'ST';
end					
				
	
    if act=='WS' 
                 a=1; % end
elseif act=='WN' 
                 a=2; % end
elseif act=='WF' 
                 a=3; % end
elseif act=='RN' 
                 a=4; % end
elseif act=='RS' 
                 a=5; % end
elseif act=='ST' 
                 a=6; N=6;   end

clear MMGs

% set variables for each EXP (of which there are 3)
if EXP == 3 % Control 1
    heel_dom = ADCData1(:,1); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    toe_dom = ADCData1(:,2); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    switch_ch = ADCData1(:,6);
%     MMGs = ADCData2(:,1:7);
    MMGs = ADCData2_BPfilt(:,1:7);
elseif EXP == 2 % COntrol 2
    heel_dom = ADCData2(:,1); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    toe_dom = ADCData2(:,2); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    switch_ch = ADCData2(:,8);
    MMGs = ADCData1_BPfilt(:,1:7);
    
%     if exp ==	147	
%     MMGs(:,2) = [];
% elseif exp ==	148	
%     MMGs(:,2) = [];
% elseif exp ==	149	
%     MMGs(:,2) = [];
% elseif exp ==	150	
%     MMGs(:,2) = [];
% elseif exp ==	151	
%     MMGs(:,[2,6]) = [];
% elseif exp ==	152	
%     MMGs(:,[2,6]) = [];	

    if exp ==	145	
    heel_dom = ADCData2(:,1);   % could select a different channel, as this one seems messy
elseif exp ==	147	
    MMGs(:,2) = MMGs(:,1);
elseif exp ==	148	
    MMGs(:,2) = MMGs(:,1);
elseif exp ==	149	
    MMGs(:,2) = MMGs(:,1);
elseif exp ==	150	
    MMGs(:,2) = MMGs(:,1);
elseif exp ==	151	
    MMGs(:,2) = MMGs(:,1);
    MMGs(:,6) = MMGs(:,5);
elseif exp ==	152	
    MMGs(:,2) = MMGs(:,1);
    MMGs(:,6) = MMGs(:,5);
    end

elseif EXP == 1  % amputee contralateral side
    heel_dom = ADCData1(:,6); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    toe_dom = ADCData1(:,7); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    switch_ch = ADCData2(:,8); % latching switch channel
    MMGs(:,1:5) = ADCData1_BPfilt(:,1:5); % current MMG channels
        MMGs(:,6:7) = ADCData1_BPfilt(:,4:5); % padding to make matrix the right size

elseif EXP == 0 % amputee ipsalateral side
    heel_dom = ADCData2(:,6); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    toe_dom = ADCData2(:,7); % heel_dom = dominant heel strike channel, where dominannt is the instrumented leg.
    switch_ch = ADCData2(:,8);
    MMGs(:,1:4) = ADCData2_BPfilt(:,[1:3,5]);
        MMGs(:,5:7) = ADCData2_BPfilt(:,[2:3,5]); % padding to make matrix the right size

end

if toe
    heel_dom = toe_dom;
end

% identify heel strikes from heel switch
clear heel_strike rr class Fs C feature_
hs_count = 1;

if TOE == 1 || TOE == 2
for T = 2:size(heel_dom,1)
    if exp ==	142	
        switch_ch(T) = 1;
    end
    if switch_ch(T)
        if (heel_dom(T) ~= 0) && (heel_dom(T-1) == 0) % > 999
            heel_strike(hs_count) = T;
%             if toe && (toe_dom(T) ~= 0) && (toe_dom(T-1) == 0)
%                 toe_strike(hs_count) = T;
%             end % dont think this if section is correct (firstly it is inside the if heel loop, also toe must be separated from heel otherwise they think toe strike is just heel strike and features mix
            hs_count = hs_count + 1;
        end
    end
end
elseif TOE == 3
for T = 2:size(heel_dom,1)
    if exp ==	142	
        switch_ch(T) = 1;
    end
    if switch_ch(T)
        if (heel_dom(T) == 0) && (heel_dom(T-1) ~= 0) % > 999
            heel_strike(hs_count) = T;
%             if toe && (toe_dom(T) ~= 0) && (toe_dom(T-1) == 0)
%                 toe_strike(hs_count) = T;
%             end % dont think this if section is correct (firstly it is inside the if heel loop, also toe must be separated from heel otherwise they think toe strike is just heel strike and features mix
            hs_count = hs_count + 1;
        end
    end
end    
end

% 
  

win = win; % 250-1; % 200-1;
increment = increment; % 50; % miliseconds % 1000 or 'win' nullifies window increment loop

% if (heel_strike(size(heel_strike,2)) + win) > size(TIMData1,1)
%     heel_strike(size(heel_strike,2)) = [];
% end

for r = size(heel_strike,2):-1:1
if (heel_strike(r) + ((2*win)-increment)) > size(TIMData1,1) ...
    || (heel_strike(r) - ((2*win)-increment)) <= 0
    heel_strike(r) = [];
end
end

for rr = 1:size(heel_strike,2)
%     idx = floor(heel_strike(rr)/1000); % should work for old and new Leeds2.0
% increment = 1000; % 50; % miliseconds % 1000 nullifies window increment loop
for idx_inc = 0:increment:win-increment
    idx = heel_strike(rr) + idx_inc; % should work for old and new Leeds2.0
    clearvars WW 

IDX = (idx_inc/increment); % +1
WIN = (win / increment)+1; % number of increments/incemental windows
    
% % %         win_scheme = 3;
% % %     if win_scheme == 1
% % %         offset = 0;
% % %         mult =1;
% % %         mult1 = 2; mult2 = 2;
% % %     elseif win_scheme == 2
% % %         offset = win;  
% % %         mult = 1;
% % %         mult1 = 2; mult2 = 2;
% % %     elseif win_scheme == 3
% % %         offset = win;
% % %             if     (idx+offset*2) <=  size(TIMData1,1)
% % %                 mult = 3;
% % %                 mult2 = 3;  % (end of mult array)
% % %             elseif (idx+offset) <=  size(TIMData1,1)
% % %                 mult = 2;
% % %                 mult2 = 2;  % (end of mult array)
% % %             end
% % %             if (idx-offset) >= 1
% % %                 mult1 = 1; 
% % %             elseif (idx-offset) < 1
% % %                 mult1 = 2; end
% % % %                 mult1 = 1; end
% % %     end
    
    
%        win_scheme = 3;
%        if win_scheme == 1






% % % % THIS VARIATION HAS BEEN SUPERSEDED BY A GOD ONE
% % % if win_scheme == 3
% % % if     (idx+offset*2) <=  size(TIMData1,1) && (idx-offset) >= 1
% % %            offset = win; 
% % % %            mult = 0:2; MULT = 1:3 
% % %            mult = 0:2; MULT = 1:3 
% % % end
% % % 
% % % elseif win_scheme == 2 || win_scheme == 3
% % %     if (idx+offset*2) <=  size(TIMData1,1) && (idx-offset) < 1
% % %            offset = win; 
% % %            mult = 1:2; MULT = 1:2
% % % elseif (idx+offset) <=  size(TIMData1,1) && (idx-offset) >= 1
% % %            offset = win; 
% % %            mult = 0:1; MULT = 1:2  
% % % % elseif (idx+offset) <=  size(TIMData1,1) && (idx-offset) >= 1
% % % %            offset = win; 
% % % %            mult = 0:1; MULT = 1:2
% % %     end
% % % elseif win_scheme == 1 || win_scheme == 2 || win_scheme == 3
% % %     if (idx+offset) <=  size(TIMData1,1) && (idx-offset) < 1
% % %            offset = win; 
% % %            mult = 1; MULT = 1
% % % % elseif (idx+offset*2) <=  size(TIMData1,1)




% win_scheme = 20; % number of windows: 3, 2a, 2b, 1 ; 20=2b=2before 21=2a=2after
win_scheme = win_scheme;
offset = win; 

if (win_scheme == 3) && ((idx+offset*2) <= size(TIMData1,1)) && ((idx-offset) >= 1)
           offset = win; 
           mult = 1:3; MULT = 0:2;
elseif (win_scheme == 20 || win_scheme == 3) && ((idx+offset) <=  size(TIMData1,1)) && ((idx-offset) >= 1)
           offset = win; 
           mult = 1:2; MULT = 0:1;  
elseif (win_scheme == 21 || win_scheme == 3) && ((idx+offset*2) <=  size(TIMData1,1))
           offset = win; 
           mult = 1:2; MULT = 1:2;
elseif (win_scheme == 1 || win_scheme == 21 || win_scheme == 20 || win_scheme == 3) && ((idx+offset) <=  size(TIMData1,1))
           offset = win; 
           mult = 1; MULT = 1;
% elseif (win_scheme == 1 || win_scheme == 2 || win_scheme == 3) && ((idx+offset) >  size(TIMData1,1)) && ((idx-offset) >= 1)
%            offset = win; 
%            mult = 1; MULT = 0;
% elseif ((idx+offset) >  size(TIMData1,1)) 
     % no longer necesary as short end sample cropped now

     elseif (win_scheme == 0) && ((idx-offset) >= 1)
           offset = win; 
           mult = 1; MULT = 0;
end

% %        if win_scheme == 2
%            offset = win; 
%            MULT = 1:2
%            if     (idx+offset*2) <=  size(TIMData1,1)
%                 mult = 1; MULT = 1:2
           
for win_numb = mult  % 1:win_scheme
          wn = win_numb;
    for MULT = MULT
%     for MULT = mult1:mult2
%         WW(:,1:8) = ADCIntp1((idx+offset*(MULT-2):idx+offset*(MULT-1)),1:8);  % ADJUST CHANNELS FOR ACTIVE SIGNALS
%         WW(:,1:8) = ADCIntp2((idx+offset*(MULT-2):idx+offset*(MULT-1)),1:8); 
   if EXP == 3
%       WW(:,1:7) = ADCData1((idx+offset*(MULT-1):idx+offset*(MULT)),1:8);  % ADJUST CHANNELS FOR ACTIVE SIGNALS
%         WW(:,1:7) = ADCData2((idx+offset*(MULT-1):idx+offset*(MULT)),1:7);  % ORIG b4 FILTERING
% % %         WW(:,1:7) = ADCData2_BPfilt((idx+offset*(MULT-1):idx+offset*(MULT)),1:7); % ORIGINAL BEFORE PADDING APPLIED
        WW(:,1:7) = MMGs((idx+offset*(MULT-1):idx+offset*(MULT)),1:7); 
        M = 7; m = 1:M; 
% % % %         WW(:, 5:7) = []; % cropped to 4 channels for concatenation with other EXPs
% % % %         M = 4; m = 1:M;
        
   elseif EXP == 2
% % %         WW(:,1:7) = ADCData1_BPfilt((idx+offset*(MULT-1):idx+offset*(MULT)),1:7); % ORIGINAL BEFORE PADDING APPLIED
        WW(:,1:7) = MMGs((idx+offset*(MULT-1):idx+offset*(MULT)),1:7); 
        M = 7; m = 1:M;
% % % %         WW(:, 5:7) = []; % cropped to 4 channels for concatenation with other EXPs
% % % %         M = 4; m = 1:M;
        WW(:,[1,4:7]) = []; % cropped to 4 channels for concatenation with other EXPs
        M = 2; m = 1:M;
        
%     if exp ==	147	
%     WW(:,2) = [];         M = 6; m = 1:M;
% elseif exp ==	148	
%     WW(:,2) = [];         M = 6; m = 1:M;
% elseif exp ==	149	
%     WW(:,2) = [];         M = 6; m = 1:M;
% elseif exp ==	150	
%     WW(:,2) = [];         M = 6; m = 1:M;
% elseif exp ==	151	
%     WW(:,[2,6]) = [];     M = 5; m = 1:M;
% elseif exp ==	152	
%     WW(:,[2,6]) = [];     M = 5; m = 1:M;
%    end
  
   elseif EXP == 1    
       
%         WW(:,1:5) = ADCData1_BPfilt((idx+offset*(MULT-1):idx+offset*(MULT)),1:5); % ORIGINAL BEFORE PADDING APPLIED
%         M = 5; m = 1:M; %         
        WW(:,1:5) = ADCData1_BPfilt((idx+offset*(MULT-1):idx+offset*(MULT)),1:5); % ORIGINAL BEFORE PADDING APPLIED
        M = 5; m = 1:M; 
% % % %         WW(:,5) = []; % cropped to 4 channels for concatenation with other EXPs
% % % %         M = 4; m = 1:M;
        
        WW(:,1:7) = MMGs((idx+offset*(MULT-1):idx+offset*(MULT)),1:7);  %   removed
        M = 7; m = 1:M;
   elseif EXP == 0
%         WW(:,1:4) = ADCData2_BPfilt((idx+offset*(MULT-1):idx+offset*(MULT)),[1:3,5]); % ORIGINAL BEFORE PADDING APPLIED
%         M = 4; m = 1:M;       
        WW(:,1:4) = ADCData2_BPfilt((idx+offset*(MULT-1):idx+offset*(MULT)),[1:3,5]); % ORIGINAL BEFORE PADDING APPLIED
        M = 4; m = 1:M;       
        WW(:,1:7) = MMGs((idx+offset*(MULT-1):idx+offset*(MULT)),1:7);  %   removed
        M = 7; m = 1:M;

   end
    end
  
    W_N = max(mult);
    
for m = m
    clearvars W PKS_maxW LOCS_maxW PKS_minW LOCS_minW
    W = WW(:,m);
                LL = size(W,1);
                X = W;
                counter = 0;
                WAMP_count = 0;

                [PKS_maxW,LOCS_maxW] = findpeaks(W);
                [PKS_minW,LOCS_minW] = findpeaks(-W);
                maxW_ = max(W); minW_ = min(W);
                rangeW_ = (( maxW_ + minW_ ) * 0.5 );

                class(1,rr) = a; % use this when class labels implemented :: BE AWARE WHEN EXPs DIVIDED SAY RAMP OR STAIR.
          
%     f = 5;
%    GGG = 0:f;
%    for GGG = 0:f
%        GGG
%    end
%     
%    GGG = 0:2;
%    for GGG = GGG
%        GGG+5
%    end
     
    
     feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,1) = sum(PKS_maxW > rangeW_)  + sum(-PKS_minW > rangeW_);           
     feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,2) = sum(-PKS_minW < rangeW_) +  sum(PKS_maxW < rangeW_);        
                                
     feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,3) = sum(abs(X-mean(X)));     % normalises       % IMMG 3.1.1

                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,4) = sum(X);     % no normlaisation     % IMMG 3.1.1
                       
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,5) = mean(abs(X-mean(X)));    % normalisation    % MAV  3.1.2
                             
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,6) = mean(X);    % no mormalisation % MAV  3.1.2
                 
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,7) = sum(X.*X);   % simple square integral     % 3.1.6
                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,8) = mean(X.*X);    % Variance (1/(N-1)) ?       % 3.1.7
                    
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,9) = sqrt(mean(X.*X));    % RMS    Root Mean Square    % 3.1.8
              
                
              % counting functions
                
                for h = 1:length(W)-1   % note clipping, unnecessary for most functions % note h use as index may be used in previosu scripts
                X = W(h);               % h used in sme other script, check for clearvars if so
                
                if h < LL/4 || h > 3*LL/4
                w = 0.5;
                else w = 1;
                end
                sum_3(h)  = w*abs(X-mean(W)); % normalisation    % MMAV1 3.1.3
                sum_3b(h) = (w*X);            % no normalisation % MMAV1 3.1.3
                      
                if h < LL/4
                w = 4*h/LL;
                elseif h > 3*LL/4
                w = 4*(LL-h)/LL;
                elseif h >= LL/4 && h <= 3*LL/4
                w = 1;
                end
                sum_4(h)  = (w*abs(X-mean(W))); % normalisation    % MMAV2 3.1.4
                sum_4b(h) = (w*X);              % no normalisation % MMAV2 3.1.4
                                
                sum_9(h) = abs( W(h+1) - W(h) );     % Wvefrm length % 3.1.9
                
                    if     ((W(h,1) <= rangeW_) && (W((h+1),1) >= rangeW_)) ... %   make this a hard boundary for realtime (or window range??)
                        || ((W(h,1) >= rangeW_) && (W((h+1),1) <= rangeW_)) % why rangeW? % if tiem allows, determine if rangeW was offsetting results
                    counter = counter +1;                                   % cos it should be rangeM, surely? 
                    end % if
                sum_10(h) = counter;

                thresh_WAMP = 3;  % came with 0(prev exp), but prev data shows 3 good (in increments of 1)  % 10mV (0mV)
                if abs(W(h+1)-W(h)) >= thresh_WAMP      %% Willsion Amplitude        % 3.1.12
                WAMP_count = WAMP_count +1;
                end
                
                end
                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,10) = mean(sum_3);      % normalisation    % MMAV1 3.1.3
                                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,11) = mean(sum_3b);     % no normalisation % MMAV1 3.1.3 
                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,12) = mean(sum_4);      % normalisation     % MMAV2 3.1.4
                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,13) = mean(sum_4b);     % no normalisation  % MMAV2 3.1.4
                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,14) = sum(sum_9);       % Waveform length % 3.1.9
                 
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,15) = sum(sum_10);      % midline crossings  REMEMBER, WHEN FLTERED, USE ZERO CROSSINGS
                
                feature_((m+(M*(wn-1))+(IDX*M*W_N)),rr,16) = WAMP_count;       %% Willsion Amplitude    3.1.12

% heel_strike;
% 
% for a = 1:6
% end


end % for m
end % for win_numb = mult




end % for idx
end % for rr

Fs = feature_(:,:,:);
C = [class]; % nore still not asigned

Gc = [ Gc C ];
G  = [ G Fs ];


% conc acts here

end % for exp

% conc exp here
Jc = [ Jc Gc ];
J = [ J G ];

G = [];
Gc = [];

% Hc = Jc;
% H = J;

end % for EXP

% conc exp here
Hc = [ Hc Jc ];
H = [ H J ];
HH = H; % stores original as H, HH can be manipulated
HHc = Hc;

H_hold = H;   % make temp version to modify whilst keeping orignal safe

J = [];
Jc = [];

end % TOE/toe

% ABOVE IS TRAINING (ijn that it creates the feature matrix)
% BELOW IS TESTING (in that it classifies)
% RESTART CODE FROM HERE FOR CLASSIFICATION

for activities = [2,6] %

% for K = 1:16
% KK = H(:,:,K); % somhign wrong here
% end

% FF = [Hc; KK];
HH = H; % stores original as H, HH can be manipulated
HHc = Hc;
H_hold = H; % placed here becuas the stored values of HH and HHc are edited

if activities == 2
q = Hc(1,:);
for qqq = 1:6
qq(qqq)= sum(q==qqq);
end
qq.'
end

conf_mat = zeros(6,6);
clear RESULTS_table

A = 2;

if A == 1
for Cc = size(H_hold,2):-1:1
array_cut = [1:6]; % actually those to keep
if ismember(HHc(1,Cc),array_cut) ~= 1
H_hold(:,Cc,:) = [];
HHc(:,Cc) = [];
end
end
HH = H_hold;
end

if A ==2 
D = nchoosek([1:6],activities); %remove semicolon to express    % try this as 5 choose 5
for E = 1:size(D,1)  % ADDITIONS test ech combination separately
array_cut = D(E,:); % ctualy those to kep
H_hold = H;
HHc = Hc;
for Cc = size(H_hold,2):-1:1  
if ismember(HHc(1,Cc),array_cut) ~= 1
H_hold(:,Cc,:) = [];
HHc(:,Cc) = [];
end
end
HH = H_hold;

% % % % taken out for new no padding algorithm
% % % q = HHc(1,:); % repeated right?  
% % % for qqq = 1:6
% % % qq(qqq)= sum(q==qqq);
% % % end
% % % qq.' 

% end % presumably here? if A~=2

if A ==3    % this is for running the training set 10 times (5ch2) so every instance of testing matrix (TEST) is run. A=2 would just run it once.
%     H_hold = H;
%     HHc = Hc;
train_acts = 6;
row = [1:train_acts];
test_acts = 2;
test_length = nchoosek(6,test_acts); %remove semicolon toexpress % size(nchoosek(1:5,2),1) ; % corresponds to 5choose2 or ten tsts
D = [];
   for d = 1:test_length
       D = [D; row] ;
   end  % now the training script will run 10 times thus
   
 for E = 1:size(D,1)  % ADDITIONS test ech combination separately
     array_cut = D(E,:); % ctualy those to kep
     H_hold = H;
HHc = Hc;
   for Cc = size(H_hold,2):-1:1  
if ismember(HHc(1,Cc),array_cut) ~= 1
H_hold(:,Cc,:) = [];
HHc(:,Cc) = [];
end
   end
%    HH = H_hold.';
   HH = H_hold;
 end
 
 q = HHc(1,:);
for qqq = 1:6
qq(qqq)= sum(q==qqq);
end
qq.'

end




for i = 1
nf = 16;
for numb = ((2^nf)-1)
number = (numb) * (16^(i-1));
clearvars F Column1_n Column2_n Column3_n 
F=HHc;
for n = (1:nf)+(4*(i-1)) % [1,2,15,16]
if bi2de(bitand(bitget(number,1:16),bitget(2^(n-1),1:16))) * 2^(1-n) % == 1; %2^(n-1)
f = HH(:,:,n);    % feature matrix (16 leaves)
F =[F; f];
end
end
feature_matrix{numb} = F.' ; % extract feature matrix, train and test
trainingData = feature_matrix{numb};
size_ = size(feature_matrix{numb},2);

% end % for numb
% end % for i




%%ASSESS THIS for nf = 16:: is it masive load?

















% THis code geenrates the string of column numbered text in the
% classification algorithm code
col_txt_full = '';
for size_index = 1:size_
col_num = num2str(size_index);
% col_txt = sprintf(['''column_' num2str(size_index) ''', ']);
col_txt{size_index} = sprintf(['''column_' col_num ''', ']);
col_txt_full = sprintf([col_txt_full col_txt{size_index}]);
end
col_txt_full = sprintf([col_txt_full '']);
% col_txt_str = genvarname(col_txt_full);

col_txt_full_2 = '{';
for size_index = 2:size_
col_num = num2str(size_index);
% col_txt = sprintf(['''column_' num2str(size_index) ''', ']);
col_txt{size_index} = sprintf(['''column_' col_num ''', ']);
col_txt_full_2 = sprintf([col_txt_full_2 col_txt{size_index}]);
end
col_txt_full_2 = sprintf([col_txt_full_2 '}']);

col_txt_full_false = '[';
for size_index = 2:size_
col_num = num2str(size_index);
% col_txt = sprintf(['''column_' num2str(size_index) ''', ']);
col_txt{size_index} = sprintf(['false, ']);
col_txt_full_false = sprintf([col_txt_full_false col_txt{size_index}]);
end
col_txt_full_false = sprintf([col_txt_full_false ']']);

for size_index = 1:size_
Column1_n{size_index} = ['column_' num2str(size_index)];
end

for size_index = 1:size_-1
Column2_n{size_index} = ['column_' num2str(size_index+1)];
end

for size_index = 1:size_-1
Column3_n{size_index} = ['false, '];
end

clearvars Row1_n
for size_index = numb % (1:number) % 1:(2^nf)-1 + 15
% Row1_n{size_index} = [num2str(bitget(number,1:8))];
Row1_n{1} = [num2str(bitget(size_index*(16^(i-1)),1:16))];
end

% Extract predictors and response
% This code processes the data into the right shape for training the
% classifier.
% Convert input to table
inputTable = array2table(trainingData, 'VariableNames', Column1_n);

predictorNames = Column2_n;
predictors = inputTable(:, predictorNames);
response = inputTable.column_1;
isCategoricalPredictor = [Column3_n];

% DEFINE 'ClassNames', [1; 2; 3]);
% % % CN_code = [1; 2; 3; 4] ; % number of classes (gait phases in LW...)
% abov, original, below, new
CN_code = array_cut ;

% testingData = testingData_mat{E};

[trainedClassifier, validationAccuracy, accuracy_, validationPredictions, validationScores] = Experiment_4e_D_phase_RERUN_cSVM(trainingData, predictors, response, predictorNames, CN_code);





%{


%% Cubic SVM 8        
n_Class = 8 ;
% Train a classifier
% This code specifies all the classifier options and trains the classifier.
template = templateSVM(...
    'KernelFunction', 'polynomial', ...
    'PolynomialOrder', 3, ...
    'KernelScale', 'auto', ...
    'BoxConstraint', 1, ...
    'Standardize', true);
classificationSVM = fitcecoc(...
    predictors, ...
    response, ...
    'Learners', template, ...
    'Coding', 'onevsone', ...
    'ClassNames', CN_code);

% Create the result struct with predict function
predictorExtractionFcn = @(x) array2table(x, 'VariableNames', predictorNames);
svmPredictFcn = @(x) predict(classificationSVM, x);
trainedClassifier.predictFcn = @(x) svmPredictFcn(predictorExtractionFcn(x));

% Add additional fields to the result struct
trainedClassifier.ClassificationSVM = classificationSVM;
trainedClassifier.About = 'This struct is a trained classifier exported from Classification Learner R2016b.';
trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  yfit = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedClassifier''. \n \nX must contain exactly 48 columns because this classifier was trained using 48 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into \nClassification Learner. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');

% Perform cross-validation
partitionedModel = crossval(trainedClassifier.ClassificationSVM, 'KFold', 5);

% Compute validation accuracy
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');

% Compute validation predictions and scores
[validationPredictions, validationScores] = kfoldPredict(partitionedModel);

%% yfit testing of just predictor data

trainingData_test(:,:) = trainingData(:,2:end);

yfit = trainedClassifier.predictFcn(trainingData_test);

%% calculate accuacy fom yfit

count = 0;
for yfit_ = 1:length(yfit)
    
    if yfit(yfit_)==trainingData(yfit_,1)
        count = count + 1;
    end
end
        accuracy_(n_Class) = (count/length(yfit))*100 ; %LDA n=classifier code (1-23)
        
                accuracy_(n_Class) = validationAccuracy;
    
                

     %}           
                
                
                
                
                
                
                
                
                
                

%%
accuracy{numb,:} = accuracy_ ;
accuracy_tab(numb,:) = accuracy_ ;

end % nunber
end % i 

accuracy_tab_end = accuracy_tab(end,:);

size(accuracy_tab_end);
size(accuracy_tab);


validationClass = HHc';
validationTrue(1:size(validationClass(:,1),1),E) = validationClass(:,1);
validationPredictions_e(1:size(validationPredictions(:,1),1),E) = validationPredictions(:,1);



CLASS = unique(validationPredictions(:,1));
for V = 1:size(validationPredictions(:,1),1)
%     if validationTrue(E,V) == validationPredictions_e(E,V)
            if CLASS(1) == validationTrue(V,E)...
            && CLASS(1) == validationPredictions_e(V,E)
        
            conf_mat(CLASS(1),CLASS(1)) = ...
            conf_mat(CLASS(1),CLASS(1)) + 1;
        
        elseif CLASS(1) == validationTrue(V,E)...
            && CLASS(2) == validationPredictions_e(V,E)            
        
            conf_mat(CLASS(1),CLASS(2)) = ...
            conf_mat(CLASS(1),CLASS(2)) + 1;
        
        elseif CLASS(2) == validationTrue(V,E)...
            && CLASS(1) == validationPredictions_e(V,E)
        
            conf_mat(CLASS(2),CLASS(1)) = ...
            conf_mat(CLASS(2),CLASS(1)) + 1;
        
        elseif CLASS(2) == validationTrue(V,E)...
            && CLASS(2) == validationPredictions_e(V,E)            
        
            conf_mat(CLASS(2),CLASS(2)) = ...
            conf_mat(CLASS(2),CLASS(2)) + 1;
        
            end       
end



% RESULTS_table(E,1:22,EXP) = accuracy_tab_end;
RESULTS_table(E,1:22) = accuracy_tab_end;


% RESULTS_TABLE(0.5 + activites/4) = RESULTS_table % work in progress


RESULTS = array2table(accuracy_tab_end, 'VariableNames', {...
'Complex_Tree', ...
'Medium_Tree', ...
'Simple_Tree', ...
'Linear_Discriminant', ...
'Quadratic_Discriminant', ...
'Linear_SVM', ...
'Quadratic_SVM', ...
'Cubic_SVM', ...
'Fine_Gaussian_SVM', ...
'Medium_Gaussian_SVM', ...
'Coarse_Gaussian_SVM', ...
'Fine_KNN', ...
'Medium_KNN', ...
'Coarse_KNN', ...
'Cosine_KNN', ...
'Cubic_KNN', ...
'Weighted_KNN', ...
'Boosted_Trees', ...
'Bagged_Trees', ...
'Subspace_Discriminant', ...
'Subspace_KNN', ...
'RUSBoosted_Trees'},...
'RowNames', Row1_n);

RESULTS;

end % for E = 1:D choose?


if activities == 2

 conf_sum = sum(conf_mat(:,:),'all');
 
conf_cols = sum(conf_mat(:,:),1);
conf_rows = sum(conf_mat(:,:),2);

 sum(conf_cols);
 conf_size = sum(conf_rows);
 
% for conf=1:5
CONF_MAT = [conf_size, conf_cols; ...
    conf_rows(1), conf_mat(1,:);...
    conf_rows(2), conf_mat(2,:);...
    conf_rows(3), conf_mat(3,:);...
    conf_rows(4), conf_mat(4,:);...
    conf_rows(5), conf_mat(5,:);...
    conf_rows(6), conf_mat(6,:)]; % supress semicolon for display of conf mat



conf_pc = conf_mat*100/conf_sum;

CONF_MAT_MAT(:,:,Toe_count) = CONF_MAT;

end % conf mat



end % A==2


% RESULTS_table_MAT(:,:,(0.5 + activities/4),Toe_count) = RESULTS_table;
if activities == 2 
    RESULTS_table_MAT_2a(:,:,Toe_count) = RESULTS_table;
end
if activities == 6
    RESULTS_table_MAT_6a(:,:,Toe_count) = RESULTS_table;
end

HEELTOETABLE(Toe_count, (0.5 + activities/4)) = sum(RESULTS_table(:,8)) * 100 / nchoosek(6,activities) ;



end % activities 2,6



win_table((win/50),1) = win;
TOE_table(Toe_count,1) = TOE;
TOE_table(Toe_count,2) = win_scheme;

% end % TOe
end % win_scheme
end % for TOE
end % for win
HEELTOETABLE
toc    