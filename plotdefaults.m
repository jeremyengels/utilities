function plotdefaults(fontsize,markersize,linewidth,location)
% plotdefaults() changes the default text interpreter to latex, and gives 
% easy ability to change global values for fontsize, markersize, 
% linewidth, and legend location to any plot generated after the function
% is called. plotdefaults() can be called with 0 through 4 arguments, given
% in order of appearance.
% 
%       default fontsize = 12
%       default markersize = 6
%       default linewidth = 0.5
%       default location = 'best'


    set(0,'defaulttextinterpreter','latex');
    set(0,'defaultlegendinterpreter','latex')
    set(groot,'defaultaxestickLabelinterpreter','latex')
    set(0,'defaultaxesbox','on')
    
    switch nargin
        case 1
            set(0,'defaultaxesfontsize',fontsize);
        case 2
            set(0,'defaultaxesfontsize',fontsize);
            set(0,'defaultlinemarkersize',markersize);
        case 3
            set(0,'defaultaxesfontsize',fontsize);
            set(0,'defaultlinemarkersize',markersize);
            set(0,'defaultlinelinewidth',linewidth);
        case 4
            set(0,'defaultaxesfontsize',fontsize);
            set(0,'defaultlinemarkersize',markersize);
            set(0,'defaultlinelinewidth',linewidth);
            set(groot,'defaultlegendlocation',location);
    end
    
end
