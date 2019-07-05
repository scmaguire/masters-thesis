% generate .fig files for Eastman final slides

% data import
file1 = 'MIT Sample 1.xls';
file2 = 'MIT Sample 2.xls';



data1 = xlsread(file1);
f1 = data1(70:794,1);
Absorp_coeff1 = data1(70:794,2);

data2 = xlsread(file2);
f2 = data2(70:794,1);
Absorp_coeff2 = data2(70:794,2);


% plots
figure
hold on
plot(f1,Absorp_coeff1,'b','LineWidth',2)
plot(f2,Absorp_coeff2,'k','LineWidth',2)



axis([0, 6300, 0, 1])
xlabel('f (Hz)')
ylabel('\alpha_c')

legend('MIT Sample #1','MIT Sample #2')
title('MIT Sample Data')