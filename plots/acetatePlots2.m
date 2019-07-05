function [] = acetatePlots2(data2,data4,data5)
% filter rods function

% high - short
figure
subplot(2,1,1)
hold on
f = data2(70:794,1);
testAVG = data2(70:794,2);
plot(f,testAVG,'b')
axis([0,6300,0,1])
xlabel('f (Hz)')
ylabel('\alpha_c')
legend('Small Tube','Location','EastOutside')
title('High f - 7 rods - short (1.33")')
hold off


% high - long
subplot(2,1,2)
hold on
f = data4(70:794,1);
testAVG = data4(70:794,2);
plot(f,testAVG,'b')
axis([0,6300,0,1])
xlabel('f (Hz)')
ylabel('\alpha_c')
legend('Small Tube','Location','EastOutside')
title('High f - 7 rods - long (2.67")')
hold off

suptitle(data5)

return
end

