
%{

Data plots for acoustics data

Sean Maguire
27AUG2014

Jing Research

%}
clc; clear all; close all;
normalize = 1; % set to 1 to normalize data wrt weight
paper = 1; % paper on the filter rods or not

if normalize == 1;
    load sample_weights.mat % load weights data
    load filterRod_weights.mat % load filter rod weight data
end
%% Empty impedance tube

% alignment check
data1 = xlsread('empty large.xls');
data2 = xlsread('empty small.xls');
data5 = 'Empty tube';

%f = data1(29:254,1);
%testAVG = data1(29:254,2);
f = data1(29:804,1);
testAVG = data1(29:804,2);
figure
hold on
plot(f,testAVG,'k','LineWidth',1.2)

f = data2(70:794,1);
testAVG = data2(70:794,2);
plot(f,testAVG,'b','LineWidth',1.2)
axis([0,6300,0,1])
xlabel('f')
ylabel('\alpha_c')
legend('Large Tube','Small Tube','Location','NorthWest')
title(data5)
hold off

%% foam alignment check B&K apparatus

% alignment check
data1 = xlsread('test large foam.xls');
data2 = xlsread('test small foam.xls');
data5 = 'foam test';

%f = data1(29:254,1);
%testAVG = data1(29:254,2);
f = data1(29:804,1);
testAVG = data1(29:804,2);
figure
hold on
plot(f,testAVG,'k','LineWidth',1.2)

f = data2(70:794,1);
testAVG = data2(70:794,2);
plot(f,testAVG,'b','LineWidth',1.2)
axis([0,6300,0,1])
xlabel('f')
ylabel('\alpha_c')
legend('Large Tube','Small Tube','Location','NorthWest')
title(data5)
hold off

%% ORING only testing

% alignment check
data1 = xlsread('ORING large.xls');
data2 = xlsread('ORING small.xls');
data5 = 'ORING test';

%f = data1(29:254,1);
%testAVG = data1(29:254,2);
f = data1(29:804,1);
testAVG = data1(29:804,2);
figure
hold on
plot(f,testAVG,'k','LineWidth',1.2)

f = data2(70:794,1);
testAVG = data2(70:794,2);
plot(f,testAVG,'b','LineWidth',1.2)
axis([0,6300,0,1])
xlabel('f')
ylabel('\alpha_c')
legend('Large Tube','Small Tube','Location','NorthWest')
title(data5)
hold off

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-9-1-SOCK  %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-9-1-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-9-1-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-9-1-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-1-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-9-1-SOCK';
if normalize == 1;
    index = 1;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-9-3-SOCK  %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-9-3-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-9-3-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-9-3-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-3-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-9-3-SOCK';
if normalize == 1;
    index = 2;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-9-5-SOCK  %
%%%%%%%%%%%%%%%%%%%%
%{
data1 = xlsread('EX1054-9-5-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-9-5-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-9-5-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-5-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-9-5-SOCK';
acetatePlots(data1,data2,data3,data4,data5);
%}

% redo
data1 = xlsread('9-5_4layer-large_take2');
data2 = xlsread('9-5_4layer-small_take2');
data3 = xlsread('9-5_8layer-large_take2');
data4 = xlsread('9-5_8layer-small_take2');
data5 = 'EX1054-9-5-SOCK';
if normalize == 1;
    index = 3;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-9-6-SOCK  %
%%%%%%%%%%%%%%%%%%%%
%{
data1 = xlsread('EX1054-9-6-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-9-6-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-9-6-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-6-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-9-6-SOCK';
acetatePlots(data1,data2,data3,data4,data5);
%}

% redo
data1 = xlsread('9-6_large_4layer_take2');
data2 = xlsread('9-6_small_4layer_take2');
data3 = xlsread('9-6_large_8layer_take2');
data4 = xlsread('9-6_small_8layer_take2');
data5 = 'EX1054-9-6-SOCK';
if normalize == 1;
    index = 4;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-9-8-SOCK  %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-9-8-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-9-8-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-9-8-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-8-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-9-8-SOCK';
if normalize == 1;
    index = 5;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-9-9-SOCK  %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-9-9-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-9-9-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-9-9-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-9-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-9-9-SOCK';
if normalize == 1;
    index = 6;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-15-1-SOCK %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-15-1-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-15-1-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-15-1-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-15-1-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-15-1-SOCK';
if normalize == 1;
    index = 7;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-15-2-SOCK %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-15-2-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-15-2-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-15-2-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-15-2-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-15-2-SOCK';
if normalize == 1;
    index = 8;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-15-3-SOCK %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-15-3-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-15-3-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-15-3-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-15-3-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-15-3-SOCK';
if normalize == 1;
    index = 9;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-18-1-SOCK %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-18-1-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-18-1-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-18-1-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-18-1-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-18-1-SOCK';
if normalize == 1;
    index = 10;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-18-2-SOCK %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('EX1054-18-2-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-18-2-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-18-2-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-18-2-SOCK_SmallTube_8layer.xls');
data5 = 'EX1054-18-2-SOCK';
if normalize == 1;
    index = 11;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-18-3-SOCK %
%%%%%%%%%%%%%%%%%%%%
%{
data1 = xlsread('EX1054-18-3-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-18-3-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-18-3-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-18-3-SOCK_SmallTube_8layer_take2.xls');
data5 = 'EX1054-18-3-SOCK';
acetatePlots(data1,data2,data3,data4,data5);
%}

% redo
data1 = xlsread('ex1054-18-3-4layer-large_take2.xls');
data2 = xlsread('ex1054-18-3-4layer-small_take2.xls');
data3 = xlsread('ex1054-18-3-8layer-large_take2.xls');
data4 = xlsread('ex1054-18-3-8layer-small_take2.xls');
data5 = 'EX1054-18-3-SOCK';
if normalize == 1;
    index = 12;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1054-18-4-SOCK %
%%%%%%%%%%%%%%%%%%%%
%{
data1 = xlsread('EX1054-18-4-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1054-18-4-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1054-18-4-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-18-4-SOCK_SmallTube_8layer_take2.xls');
data5 = 'EX1054-18-4-SOCK';
acetatePlots(data1,data2,data3,data4,data5);
%}

% redo
data1 = xlsread('ex1054-18-4-4layer-large_take2.xls');
data2 = xlsread('ex1054-18-4-4layer-small_take2.xls');
data3 = xlsread('ex1054-18-4-8layer-large_take2.xls');
data4 = xlsread('ex1054-18-4-8layer-small_take2.xls');
data5 = 'EX1054-18-4-SOCK';
if normalize == 1;
    index = 13;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% EX1153-8-2-SOCK  %
%%%%%%%%%%%%%%%%%%%%
%{
data1 = xlsread('EX1153-8-2-SOCK_LargeTube_4layer.xls');
data2 = xlsread('EX1153-8-2-SOCK_SmallTube_4layer.xls');
data3 = xlsread('EX1153-8-2-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1153-8-2-SOCK_SmallTube_8layer.xls');
data5 = 'EX1153-8-2-SOCK';
acetatePlots(data1,data2,data3,data4,data5);
%}
% no paper
data1 = xlsread('ex1153-8-2-4layer-largetube_take2.xls');
data2 = xlsread('ex1153-8-2-4layer-smalltube_take2.xls');
data3 = xlsread('ex1153-8-2-8layer-largetube_take2.xls');
data4 = xlsread('ex1153-8-2-8layer-smalltube_take2.xls');
data5 = 'EX1153-8-2-SOCK';
if normalize == 1;
    index = 14;
    w1 = sample_weights(1,index); % grams
    w2 = sample_weights(2,index); % grams
    w3 = sample_weights(3,index); % grams
    w4 = sample_weights(4,index); % grams
    data1(:,2:7) = data1(:,2:7)/w1;
    data2(:,2:7) = data2(:,2:7)/w2;
    data3(:,2:7) = data3(:,2:7)/w3;
    data4(:,2:7) = data4(:,2:7)/w4;
end
%acetatePlots(data1,data2,data3,data4,data5);
acetatePlots3(data1,data2,data5);

%%
%%%%%%%%%%%%%%%%%%%%
% Filter Rod - BLK %
%%%%%%%%%%%%%%%%%%%%
%{
data2 = xlsread('FilterRod_Black_SmallTube_Short.xls');
data4 = xlsread('FilterRod_Black_SmallTube_Long.xls');
data5 = 'Filter Rod - Black';
acetatePlots2(data2,data4,data5);
%}
% no paper
data2 = xlsread('filterrod_black_nopaper_smalltube_short.xls');
data4 = xlsread('filterrod_black_nopaper_smalltube_long.xls');
data5 = 'Filter Rod - Black - No paper';
acetatePlots2(data2,data4,data5);

if normalize == 1;
    if paper == 1;
        w2 = filterRod_weights(1,2); % grams
        w4 = filterRod_weights(2,2); % grams
        data2(:,2:7) = data2(:,2:7)/w2;
        data4(:,2:7) = data4(:,2:7)/w4;
        data5 = 'Filter Rod - Black';
        acetatePlots4(data2,data5);
    else
        w2 = filterRod_weights(1,4); % grams
        w4 = filterRod_weights(2,4); % grams
        data2(:,2:7) = data2(:,2:7)/w2;
        data4(:,2:7) = data4(:,2:7)/w4;
        data5 = 'Filter Rod - Black - No paper';
        acetatePlots4(data2,data5);
    end
end

%%
%%%%%%%%%%%%%%%%%%%%
% Filter Rod - WHT %
%%%%%%%%%%%%%%%%%%%%

data1 = xlsread('FilterRod_White_LargeTube_Short.xls');
data2 = xlsread('FilterRod_White_SmallTube_Short.xls');
data3 = xlsread('FilterRod_White_LargeTube_Long.xls');
data4 = xlsread('FilterRod_White_SmallTube_Long.xls');
data5 = 'Filter Rod - White';
acetatePlots(data1,data2,data3,data4,data5);

%{
% no paper
data2 = xlsread('filterrods_nopaper_white_small_short.xls');
data4 = xlsread('filterrods_nopaper_white_small_long.xls');
data5 = 'Filter Rod - White - No paper';
acetatePlots2(data2,data4,data5);
%}

if normalize == 1;
    if paper == 1;
        w1 = filterRod_weights(1,5); % grams
        w2 = filterRod_weights(1,1); % grams
        w3 = filterRod_weights(2,5); % grams
        w4 = filterRod_weights(2,1); % grams
        data1(:,2:7) = data1(:,2:7)/w1;
        data2(:,2:7) = data2(:,2:7)/w2;
        data3(:,2:7) = data3(:,2:7)/w3;
        data4(:,2:7) = data4(:,2:7)/w4;
        data5 = 'Filter Rod - White';
        acetatePlots3(data1,data2,data5);
    else
        w2 = filterRod_weights(1,1); % grams
        w4 = filterRod_weights(2,1); % grams
        data2(:,2:7) = data2(:,2:7)/w2;
        data4(:,2:7) = data4(:,2:7)/w4;
        data5 = 'Filter Rod - White - No paper';
        acetatePlots4(data2,data5);
    end
end
%acetatePlots(data1,data2,data3,data4,data5);

%% relate mass plots
% 183 and 91
% (2 layer - 8 layer)
data1 = xlsread('ex1054-18-3-2layer-large.xls');
data2 = xlsread('ex1054-18-3-2layer-small.xls');
data3 = xlsread('EX1054-9-1-SOCK_LargeTube_8layer.xls');
data4 = xlsread('EX1054-9-1-SOCK_SmallTube_8layer.xls');
data5 = '2 layers of 18-3 and 8 layers of 9-1';
acetatePlots(data1,data2,data3,data4,data5);

% 183 and 99
% (2 layer - 9 layer)
data1 = xlsread('ex1054-18-3-2layer-large.xls');
data2 = xlsread('ex1054-18-3-2layer-small.xls');
data3 = xlsread('ex1054-9-9-9layer-large.xls');
data4 = xlsread('ex1054-9-9-9layer-small.xls');
data5 = '2 layers of 18-3 and 9 layers of 9-9';
acetatePlots(data1,data2,data3,data4,data5);

% 184 and 93
% (1 layer - 7 layer)
data1 = xlsread('ex1054-18-4-1layer-large.xls');
data2 = xlsread('ex1054-18-4-1layer-small.xls');
data3 = xlsread('ex1054-9-3-7layer-large.xls');
data4 = xlsread('ex1054-9-3-7layer-small.xls');
data5 = '1 layer of 18-4 and 7 layers of 9-3';
acetatePlots(data1,data2,data3,data4,data5);

