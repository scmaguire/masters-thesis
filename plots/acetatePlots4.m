function [] = acetatePlots4(data2,data5)
%full data

figure

% high - 4 layer
%f = data2(70:794,1);
%testAVG = data2(70:794,2);
f = data2(32:807,1); % full 1600 Hz
testAVG = data2(32:807,2);
plot(f,testAVG,'b','LineWidth',1.2)
axis([0,6300,0,1])
xlabel('f (Hz)')
ylabel('\alpha_c')
legend('Small Tube','Location','EastOutside')
title('Absorption Coefficient - Normalized w.r.t. Weight')
hold off

suptitle(data5)

return
end