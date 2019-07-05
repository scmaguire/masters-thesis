function [] = aT4AC_subplots(data1,data2,data3,data4,data5,data6,data7,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)

if number_of_lines == 2
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    figure
    subplot(2,1,1)
    hold on
    plot(f,testAVG,'k','LineWidth',line_thickness)
    
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend('Large Tube','Small Tube','Location',legend_location)
    title(data6)
    hold off
    
    f = data3(f_index_low,1);
    testAVG = data3(f_index_low,2);
    subplot(2,1,2)
    hold on
    plot(f,testAVG,'k','LineWidth',line_thickness)
    
    f = data4(f_index_high,1);
    testAVG = data4(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend('Large Tube','Small Tube','Location',legend_location)
    title(data7)
    hold off
    
    suptitle(data5)
    
elseif number_of_lines == 1;
    
    
    
    
end
return
end