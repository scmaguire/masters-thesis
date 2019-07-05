%Empty (2x)
    data2 = xlsread('empty small.xls'); %2
    f2 = data2(70:794,1);    % 500Hz to 6300 Hz

%Auralex foam
%     data1 = xlsread('Auralex_foam_small.xls'); %10
%     A_c10 = data1(70:794,7);
% % %Auralex Cotton
%     data1 = xlsread('Auralex_cotton_small.xls'); %11
%     A_c11 = data1(70:794,7);
% %Auralex comp poly
%     data1 = xlsread('Auralex_CompPoly_small.xls'); %12
%     A_c12 = data1(70:794,7);
%     
% %Fiberglass 2inches (2x)
%     data1 = xlsread('FIBERGLASS_largethick2-11.xls'); %13
%     data1 = xlsread('FIBERGLASS_SmallThickPanel-2-11.xls'); %14
%     A_c13 = data1(29:804,2);
%     A_c14 = data1(67:791,2);
% %Fiberglass 1inch (2x)
%     data1 = xlsread('FIBERGLASS_largethinpanel-2-11.xlsx'); %15
    data1 = xlsread('FIBERGLASS_SmallThinPanel-2-11.xlsx'); %16
%     A_c15 = data1(29:804,2);
    A_c16 = data1(67:791,2);
    

figure
hold on
% Auralex
% plot(f2,A_c10,'b','LineWidth',6) % 29mm
% plot(f2,A_c11,'b','LineWidth',6) % 29mm
% plot(f2,A_c12,'b','LineWidth',6) % 29mm
% % Raw Fiberglass
% plot(f2,A_c14,'b','LineWidth',6) % 29mm     Thick
plot(f2,A_c16,'b','LineWidth',6) % 29mm     Thin
    
axis([0, 6300, 0, 1])
xlabel('f (Hz)')
ylabel('\alpha_c')
title('Raw Fiberglass Panel (Thin) - High Frequency')
