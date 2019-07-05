%{

Data plots for Exploration of Acetate Tow for Acoustic Control

Sean Maguire
20OCT2014

Jing Research

%}

% clc;
% close all;
clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% flags
normalize = 0;          % set to 1 to normalize data wrt weight
paper = 1;              % paper on the filter rods or not
overlap = 1;            % over lay the day or cut off frequency
remove_oring = 0;       % remove oring info from data
number_of_lines = 1;    % 1 is single line, 2 is both high and low lines


% variable configuration
line_thickness = 2; % set thickness of line in plots
legend_location = 'NorthWest'; % set location of legned for plots
axis_values = [0, 6300, 0, 1];
if overlap == 1
    f_index_low = 32:807;
    f_index_high = 32:807;
else
    f_cutoff = 500; % set cutoff frequency
    f_index_low = 32:257;
    f_index_high = 70:794;
end

if normalize == 1
    load sample_weights.mat % load weights data
    load filterRod_weights.mat % load filter rod weight data
end

if remove_oring == 1
    oring_dataLARGE = xlsread('ORING large.xls');
    oring_dataSMALL = xlsread('ORING small.xls');
    oring_LOW_f = oring_dataLARGE(f_index_low,1);
    oring_LOW_a = oring_dataLARGE(f_index_low,2);
    oring_HIGH_f = oring_dataSMALL(70:794,1);
    oring_HIGH_a = oring_dataSMALL(70:794,2);
end


%  plots toggles
toggle_empty  = 0;
toggle_oring  = 0;
toggle_BKfoam = 0;
toggle_BKfoamANDoring = 0;

toggle_ex1054_9_1  = 1;
toggle_ex1054_9_3  = 0;
toggle_ex1054_9_5  = 0;
toggle_ex1054_9_6  = 0;
toggle_ex1054_9_8  = 0;
toggle_ex1054_9_9  = 0;
toggle_ex1054_15_1 = 0;
toggle_ex1054_15_2 = 0;
toggle_ex1054_15_3 = 0;
toggle_ex1054_18_1 = 0;
toggle_ex1054_18_2 = 0;
toggle_ex1054_18_3 = 0;
toggle_ex1054_18_4 = 0;

toggle_filter_white = 0;
toggle_filter_black = 0;

toggle_relatedMass_all = 0;
toggle_relatedMass = 0;
toggle_rawTow_all = 0;
toggle_rawTow = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
    INPUT FILE ORDER
data 1 = Large/Low Frequency - top plot
data 2 = Small/High Frequency - top plot
data 3 = Large/Low Frequency - bottom plot
data 4 = Small/High Frequenecy - bottom plot
data 5 = Total plot title
data 6 = top subplot title
data 7 = bottom subplot title
%}


% empty
if toggle_empty == 1
    data1 = xlsread('empty large.xls');
    data2 = xlsread('empty small.xls');
    data5 = 'Empty Tube';
    f_index_low = f_index_low-3; % adjust indexing
    aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines);
    f_index_low = f_index_low-3; % adjust back to how it was before
end

% o ring only
if toggle_oring == 1
%     data1 = xlsread('ORING large.xls');
%     data2 = xlsread('ORING small.xls');
    data1 = xlsread('BKFoam_large_nofoam_ringonly.xls'); % retested solo oring on 11-19-14
    data2 = xlsread('BKFoam_small_nofoam_ringonly.xls'); % retested solo oring on 11-19-14
    data5 = '70-Dura O-Ring';
    aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines);
end

% foam from B & K
if toggle_BKfoam == 1
%     data1 = xlsread('test large foam.xls');
%     data2 = xlsread('test small foam.xls');
    data1 = xlsread('BKFoam_large_noring.xls'); % retested foam on 11-19-14
    data2 = xlsread('BKFoam_small_noring.xls'); % retested foam on 11-19-14
    data5 = 'B&K Acoustic Foam';
    f_index_low = f_index_low-3; % adjust indexing
    f_index_high = f_index_high-3; % adjust indexing
    aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines);
    f_index_low = f_index_low-3; % adjust back to how it was before
    f_index_high = f_index_high-3; % adjust back to how it was before
end

% foam from B & K and o ring
if toggle_BKfoamANDoring == 1
%     data1 = xlsread('BKFoamANDoring_large_front.xls');
%     data2 = xlsread('BKFoamANDoring_small_front.xls');
    data1 = xlsread('BKFoam_large_ring.xls');
    data2 = xlsread('BKFoam_small_ring.xls');
    data5 = '70-Dura O-Ring on B&K Foam';
    aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines);
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOCK samples
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% EX1054-9-1-SOCK  %
%%%%%%%%%%%%%%%%%%%%
if toggle_ex1054_9_1 == 1
    data1 = xlsread('EX1054-9-1-SOCK_LargeTube_4layer.xls');
    data2 = xlsread('EX1054-9-1-SOCK_SmallTube_4layer.xls');
    data3 = xlsread('EX1054-9-1-SOCK_LargeTube_8layer.xls');
    data4 = xlsread('EX1054-9-1-SOCK_SmallTube_8layer.xls');
    data5 = 'EX1054-9-1-SOCK';
    data6 = '4 Layers';
    data7 = '8 Layers';
    if overlap == 1
        if remove_oring == 1
            data1(32:807,2) = data1(32:807,2) - oring_LOW_a;
            data2(70:794,2) = data2(70:794,2) - oring_HIGH_a;
            data3(32:807,2) = data3(32:807,2) - oring_LOW_a;
            data4(70:794,2) = data4(70:794,2) - oring_HIGH_a;
        end
    end
    if normalize == 1
        index = 1;
        w1 = sample_weights(1,index); % grams
        w2 = sample_weights(2,index); % grams
        w3 = sample_weights(3,index); % grams
        w4 = sample_weights(4,index); % grams
        data1(:,2:7) = data1(:,2:7)/w1;
        data2(:,2:7) = data2(:,2:7)/w2;
        data3(:,2:7) = data3(:,2:7)/w3;
        data4(:,2:7) = data4(:,2:7)/w4;
        data5 = 'EX1054-9-1-SOCK - Normalized w.r.t. Weight';
        aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)
    else
        aT4AC_subplots(data1,data2,data3,data4,data5,data6,data7,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)
    end
    
end


%%%%%%%%%%%%%%%%%%%%
% EX1054-9-3-SOCK  %
%%%%%%%%%%%%%%%%%%%%

% etc






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% filter rods
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% Filter Rod - WHT %
%%%%%%%%%%%%%%%%%%%%
if toggle_filter_white == 1
    if paper == 1
        data1 = xlsread('FilterRod_White_LargeTube_Short.xls');
        data2 = xlsread('FilterRod_White_SmallTube_Short.xls');
        data3 = xlsread('FilterRod_White_LargeTube_Long.xls');
        data4 = xlsread('FilterRod_White_SmallTube_Long.xls');
        data5 = 'Filter Rod - White';
        data6 = 'short';
        data7 = 'long';
    elseif paper == 0
        data1 = xlsread('filterrods_nopaper_white_small_short.xls');
        data2 = xlsread('filterrods_nopaper_white_small_long.xls');
        data5 = 'Filter Rod - White - No paper';
    end
    
    if overlap == 1
        if remove_oring == 1
            data1(32:807,2) = data1(32:807,2) - oring_LOW_a;
            data2(70:794,2) = data2(70:794,2) - oring_HIGH_a;
            data3(32:807,2) = data3(32:807,2) - oring_LOW_a;
            data4(70:794,2) = data4(70:794,2) - oring_HIGH_a;
        end
    end
    if normalize == 1
        if paper == 1
            w1 = filterRod_weights(1,5); % grams
            w2 = filterRod_weights(1,1); % grams
            w3 = filterRod_weights(2,5); % grams
            w4 = filterRod_weights(2,1); % grams
            data1(:,2:7) = data1(:,2:7)/w1;
            data2(:,2:7) = data2(:,2:7)/w2;
            data3(:,2:7) = data3(:,2:7)/w3;
            data4(:,2:7) = data4(:,2:7)/w4;
            aT4AC_subplots(data1,data2,data3,data4,data5,data6,data7,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)
        else
            w1 = filterRod_weights(1,1); % grams
            w2 = filterRod_weights(2,1); % grams
            data1(:,2:7) = data2(:,2:7)/w1;
            data2(:,2:7) = data4(:,2:7)/w2;
            aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)
        end
    else
        if paper == 1
            aT4AC_subplots(data1,data2,data3,data4,data5,data6,data7,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)
        else
            aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)
        end
    end
    
end


%%%%%%%%%%%%%%%%%%%%
% Filter Rod - BLK %
%%%%%%%%%%%%%%%%%%%%













%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% related mass plots
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if toggle_relatedMass_all == 1
    
    % 183 and 91
    % (2 layer - 8 layer)
    data1 = xlsread('ex1054-18-3-2layer-large.xls');
    data2 = xlsread('ex1054-18-3-2layer-small.xls');
    data3 = xlsread('EX1054-9-1-SOCK_LargeTube_8layer.xls');
    data4 = xlsread('EX1054-9-1-SOCK_SmallTube_8layer.xls');
    data5 = 'Equivalent Weights Comparison';
    data6 = '2 Layers - EX1054-18-3-SOCK';
    data7 = '8 Layers - EX1054-9-1-SOCK';
    
    % 183 and 99
    % (2 layer - 9 layer)
    data8 = xlsread('ex1054-18-3-2layer-large.xls');
    data9 = xlsread('ex1054-18-3-2layer-small.xls');
    data10 = xlsread('ex1054-9-9-9layer-large.xls');
    data11 = xlsread('ex1054-9-9-9layer-small.xls');
    data12 = 'Equivalent Weights Comparison';
    data13 = '2 Layers - EX1054-18-3-SOCK';
    data14 = '9 Layers - EX1054-9-9-SOCK';
    
    % 184 and 93
    % (1 layer - 7 layer)
    data15 = xlsread('ex1054-18-4-1layer-large.xls');
    data16 = xlsread('ex1054-18-4-1layer-small.xls');
    data17 = xlsread('ex1054-9-3-7layer-large.xls');
    data18 = xlsread('ex1054-9-3-7layer-small.xls');
    data19 = 'Equivalent Weights Comparison';
    data20 = '1 Layer - EX1054-18-4-SOCK';
    data21 = '7 Layers - EX1054-9-3-SOCK';
    
    figure
    hold on
    
    %183-2
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    h1 = plot(f,testAVG,'b','LineWidth',line_thickness);
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    
    %91-8
    f = data3(f_index_low,1);
    testAVG = data3(f_index_low,2);
    h2 = plot(f,testAVG,'k','LineWidth',line_thickness);
    f = data4(f_index_high,1);
    testAVG = data4(f_index_high,2);
    plot(f,testAVG,'k','LineWidth',line_thickness)
    
    %99-9
    f = data10(f_index_low,1);
    testAVG = data10(f_index_low,2);
    h3 = plot(f,testAVG,'m','LineWidth',line_thickness);
    f = data11(f_index_high,1);
    testAVG = data11(f_index_high,2);
    plot(f,testAVG,'m','LineWidth',line_thickness)
    
    %184-1
    f = data15(f_index_low,1);
    testAVG = data15(f_index_low,2);
    h4 = plot(f,testAVG,'c','LineWidth',line_thickness);
    f = data16(f_index_high,1);
    testAVG = data16(f_index_high,2);
    plot(f,testAVG,'c','LineWidth',line_thickness)
    
    %93-1
    f = data17(f_index_low,1);
    testAVG = data17(f_index_low,2);
    h5 = plot(f,testAVG,'r','LineWidth',line_thickness);
    f = data18(f_index_high,1);
    testAVG = data18(f_index_high,2);
    plot(f,testAVG,'r','LineWidth',line_thickness)
    
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend([h1 h2 h3 h4 h5],{data6,data7,data14,data20,data21},'Location',legend_location)
    title(data5)
    
    
end

if toggle_relatedMass == 1;
    
    % 183 and 91
    % (2 layer - 8 layer)
    data1 = xlsread('ex1054-18-3-2layer-large.xls');
    data2 = xlsread('ex1054-18-3-2layer-small.xls');
    data3 = xlsread('EX1054-9-1-SOCK_LargeTube_8layer.xls');
    data4 = xlsread('EX1054-9-1-SOCK_SmallTube_8layer.xls');
    data5 = 'Equivalent Weights Comparison';
    data6 = '2 Layers - EX1054-18-3-SOCK';
    data7 = '8 Layers - EX1054-9-1-SOCK';
    
    figure
    hold on
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    h1 = plot(f,testAVG,'b','LineWidth',line_thickness);
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    
    f = data3(f_index_low,1);
    testAVG = data3(f_index_low,2);
    h2 = plot(f,testAVG,'k','LineWidth',line_thickness);
    f = data4(f_index_high,1);
    testAVG = data4(f_index_high,2);
    plot(f,testAVG,'k','LineWidth',line_thickness)
    
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend([h1 h2],{data6,data7},'Location',legend_location)
    title(data5)
    
    
    % 183 and 99
    % (2 layer - 9 layer)
    data1 = xlsread('ex1054-18-3-2layer-large.xls');
    data2 = xlsread('ex1054-18-3-2layer-small.xls');
    data3 = xlsread('ex1054-9-9-9layer-large.xls');
    data4 = xlsread('ex1054-9-9-9layer-small.xls');
    data5 = 'Equivalent Weights Comparison';
    data6 = '2 Layers - EX1054-18-3-SOCK';
    data7 = '9 Layers - EX1054-9-9-SOCK';
    
    
    figure
    hold on
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    h1 = plot(f,testAVG,'b','LineWidth',line_thickness);
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    
    f = data3(f_index_low,1);
    testAVG = data3(f_index_low,2);
    h2 = plot(f,testAVG,'k','LineWidth',line_thickness);
    f = data4(f_index_high,1);
    testAVG = data4(f_index_high,2);
    plot(f,testAVG,'k','LineWidth',line_thickness)
    
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend([h1 h2],{data6,data7},'Location',legend_location)
    title(data5)
    
    
    % 184 and 93
    % (1 layer - 7 layer)
    data1 = xlsread('ex1054-18-4-1layer-large.xls');
    data2 = xlsread('ex1054-18-4-1layer-small.xls');
    data3 = xlsread('ex1054-9-3-7layer-large.xls');
    data4 = xlsread('ex1054-9-3-7layer-small.xls');
    data5 = 'Equivalent Weights Comparison';
    data6 = '1 Layer - EX1054-18-4-SOCK';
    data7 = '7 Layers - EX1054-9-3-SOCK';
    
    
    figure
    hold on
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    h1 = plot(f,testAVG,'b','LineWidth',line_thickness);
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    
    f = data3(f_index_low,1);
    testAVG = data3(f_index_low,2);
    h2 = plot(f,testAVG,'k','LineWidth',line_thickness);
    f = data4(f_index_high,1);
    testAVG = data4(f_index_high,2);
    plot(f,testAVG,'k','LineWidth',line_thickness)
    
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend([h1 h2],{data6,data7},'Location',legend_location)
    title(data5)
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if toggle_rawTow_all == 1
    % RAW Large
    % RAW Small 1
    % RAW Small 2
    % Filter Rod Large
    % Filter Rod Small (paper)
    % Filter Rod Small (no paper)
    
    data1 = xlsread('RAWTOW_Large_24point6gram.xls');
    data2 = xlsread('RAWTOW_Small_1point6gram.xls');
    data3 = xlsread('RAWTOW_Small_1point5gram.xls');
    data4 = xlsread('FilterRod_White_LargeTube_Short.xls');
    data5 = xlsread('FilterRod_White_SmallTube_Short.xls');
    data6 = xlsread('filterrods_nopaper_white_small_short.xls');
    
    data7 = 'Equivalent Weights Comparison';
    
    data8 = 'RAW Tow Large - 24.6g';
    data9 = 'RAW Tow Small - 1.6g';
    data10 = 'RAW Tow Small - 1.5g';
    data11 = 'Filter Rod Large - 24.47g';
    data12 = 'Filter Rod Small - 1.55g';
    data13 = 'Filter Rod Small (no paper) - 1.45g';
    
    data14 = xlsread('RAWTOW_large_24point4grams_multiSample.xls');
    data15 = 'Raw Tow Large - 24.4grams - multi sample';
    data16 = xlsread('RAWTOW_small_1point5gram_multiSample.xls');
    data17 = 'Raw Tow Small - 1.5grams - multi sample';
    
    figure
    hold on
    %{
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    h1 = plot(f,testAVG,'LineWidth',line_thickness);
    %}
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    h2 = plot(f,testAVG,'LineWidth',line_thickness);
    
    f = data3(f_index_high,1);
    testAVG = data3(f_index_high,2);
    h3 = plot(f,testAVG,'LineWidth',line_thickness);
    %{
    f = data4(f_index_low,1);
    testAVG = data4(f_index_low,2);
    h4 = plot(f,testAVG,'LineWidth',line_thickness);
    %}
    f = data5(f_index_high,1);
    testAVG = data5(f_index_high,2);
    h5 = plot(f,testAVG,'LineWidth',line_thickness);
    
    f = data6(f_index_high,1);
    testAVG = data6(f_index_high,2);
    h6 = plot(f,testAVG,'LineWidth',line_thickness);
    
    f = data14(f_index_low,1);
    testAVG = data14(f_index_low,2);
    h7 = plot(f,testAVG,'LineWidth',line_thickness);
    
    f = data16(f_index_high,1);
    testAVG = data16(f_index_high,2);
    h8 = plot(f,testAVG,'LineWidth',line_thickness);
    
    
    
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend([ h2 h5 h3 h6 h7 h8],{data9,data12,data10,data13,data15,data17},'Location',legend_location)
    title(data7)
end

if toggle_rawTow == 1
    
end