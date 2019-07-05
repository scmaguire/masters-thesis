function [] = acetatePlots3(data1,data2,data5)
%full data

% low - 4 layer
%f = data1(32:257,1); % index cuts out overlayed data (500Hz)
%testAVG = data1(32:257,2); % index cuts out overlayed data
f = data1(32:807,1); % full 1600 Hz
testAVG = data1(32:807,2);
figure
hold on
plot(f,testAVG,'k','LineWidth',1.2)

% high - 4 layer
%f = data2(70:794,1);
%testAVG = data2(70:794,2);
f = data2(32:807,1); % full 1600 Hz
testAVG = data2(32:807,2);
plot(f,testAVG,'b','LineWidth',1.2)
axis([0,6300,0,1])
xlabel('f (Hz)')
ylabel('\alpha_c')
legend('Large Tube','Small Tube','Location','EastOutside')
title('Absorption Coefficient - Normalized w.r.t. Weight')
hold off

suptitle(data5)

return
end