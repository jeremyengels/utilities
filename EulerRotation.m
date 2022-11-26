function out = EulerRotation(axis,angle)

    if strcmp(axis,'x')
        out = [1 0 0; 0 cos(angle) sin(angle); 0 -sin(angle) cos(angle)];
    elseif strcmp(axis,'y')
        out = [cos(angle) 0 -sin(angle); 0 1 0; sin(angle) 0 cos(angle)];
    elseif strcmp(axis,'z')
        out = [cos(angle) sin(angle) 0; -sin(angle) cos(angle) 0; 0 0 1];
    else 
        error("'axis' input must be 'x' 'y' or 'z'");
    end
    
end