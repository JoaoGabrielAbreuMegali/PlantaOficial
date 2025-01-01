% It is good practice to clear the Command Window and workspace 
% every time you run a code in MATLAB.
clc
clear


VelRef = 30;                %[m/s]
EV.FrontAxlePositionfromCG = 0.775;
EV.RearAxlePositionfromCG = 0.775;
EV.CornerStiffFront =   50420.286;        %[N/rad]
EV.CornerStiffRear =    50420.286; 
EV.WheelBase = EV.FrontAxlePositionfromCG + EV.RearAxlePositionfromCG;
EV.Mass = 357;
EV.UnderSteerGradient = (EV.RearAxlePositionfromCG*EV.Mass)/(EV.CornerStiffFront *EV.WheelBase)-(EV.FrontAxlePositionfromCG*EV.Mass)/(EV.CornerStiffRear*EV.WheelBase);




% === Coefficient for friction calculation ===

%Asphalt, dry
C1 = 1.2801;
C2 = 23.99;
C3 = 0.52;
%Asphalt, wet
% C1 = 0.857;
% C2 = 33.822;
% C3 = 0.347;




