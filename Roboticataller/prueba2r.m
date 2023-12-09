%%Interpolando Angulos
clear all
close all
clc

l1=8;
l2=6.5;


%cinematicaminversa
%punto 1

P1x=5.276;
P1y=2.483;


[theta1_P1,theta2_P1]=Inversekinematic2r(l1,l2,P1x,P1y);

%punto 2

P2x=-10.264;
P2y=9.639;


[theta1_P2,theta2_P2]= Inversekinematic2r(l1,l2,P2x,P2y);

theta1_P1toP2= linspace(theta1_P1, theta1_P2,10);
theta2_P1toP2= linspace(theta2_P1, theta2_P2,10);


for i=1:length(theta1_P1toP2)
    [MTH]=DirectKinematics_PCc(l1,l2,theta1_P1toP2(i),theta2_P1toP2(i))
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

% % Trayectoria 2(interpolado posicion)

clear all
close all
clc

l1=10;
l2=10;


%punto 1

P1x=5.276;
P1y=2.483;

%punto 2

P2x=-10.264;
P2y=9.639;

Px_P1toP2= linspace(P1x, P2x, 10);
Py_P1toP2= linspace(P1y, P2y, 10);

for i=1:length(Px_P1toP2)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P1toP2(i),Py_P1toP2(i));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end


