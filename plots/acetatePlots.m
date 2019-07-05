function [] = acetatePlots(data1,data2,data3,data4,data5)
%full data

% low - 4 layer
%f = data1(32:257,1); % index cuts out overlayed data (500Hz)
%testAVG = data1(32:257,2); % index cuts out overlayed data
f = data1(32:807,1); % full 1600 Hz
testAVG = data1(32:807,2);
figure
subplot(2,1,1)
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
title('Absorption Coefficient - 4 layer')
hold off

% low 8 layer
%f = data3(32:257,1); % index cuts out overlayed data
%testAVG = data3(32:257,2); % index cuts out overlayed data
f = data3(32:807,1); % full 1600 Hz
testAVG = data3(32:807,2);
subplot(2,1,2)
hold on
plot(f,testAVG,'k','LineWidth',1.2)

% high 8 layer
%f = data4(70:794,1);
%testAVG = data4(70:794,2);
f = data4(32:807,1); % full 1600 Hz
testAVG = data4(32:807,2);
plot(f,testAVG,'b','LineWidth',1.2)
axis([0,6300,0,1])
xlabel('f (Hz)')
ylabel('\alpha_c')
legend('Large Tube','Small Tube','Location','EastOutside')
title('Absorption Coefficient - 8 layer')
hold off

suptitle(data5)

return
end