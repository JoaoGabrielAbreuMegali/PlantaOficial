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
EV.WheelRadius = 0.30; 
EV.GearRatio = 8.89;


MTR.Speed  = [0 461 565 670 775 880 942 943];
MTR.Torque = [13.1	13.1	10.6	9.0     7.7     6.8     6.4     0.1];
MTR.Overpower = 3.5;
MTR.MaxTorque = 13.1*MTR.Overpower;



% === Coefficient for friction calculation ===

%Asphalt, dry
C1 = 1.2801;
C2 = 23.99;
C3 = 0.52;
%Asphalt, wet
% C1 = 0.857;
% C2 = 33.822;
% C3 = 0.347;




