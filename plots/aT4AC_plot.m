function [] = aT4AC_plot(data1,data2,data5,f_index_low,f_index_high,line_thickness,legend_location,axis_values,number_of_lines)

if number_of_lines == 2
    
    f = data1(f_index_low,1);
    testAVG = data1(f_index_low,2);
    figure
    hold on
    plot(f,testAVG,'k','LineWidth',line_thickness);
    
    f = data2(f_index_high,1);
    testAVG = data2(f_index_high,2);
    plot(f,testAVG,'b','LineWidth',line_thickness)
    axis(axis_values)
    xlabel('f (Hz)')
    ylabel('\alpha_c')
    legend('Large Tube','Small Tube','Location',legend_location)
    title(data5)
    hold off
    
elseif number_of_lines == 1
    

    
end

return
end