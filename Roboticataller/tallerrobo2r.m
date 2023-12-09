clear all
close all
clc

l1=8;
l2=6.5;

q1=0:0.1:pi;
q2=0:0.1:pi;
q22=0;
q11=pi;

qq1=-pi:0.1:-0;
qq2=-pi:0.1:0;
qq22=pi;
qq11=pi;

 for i=1:length(q1) 
     [MTH]=DirectKinematics_PCc(l1,l2,q1(i),q22)
     hold on;
     plot(MTH.t(1),MTH.t(2),'.r')
 end

 for i=1:length(q2)
     [MTH]=DirectKinematics_PCc(l1,l2,q11,q2(i))
     hold on;
     plot(MTH.t(1),MTH.t(2),'.r');
 end


 for i=1:length(qq1)
     [MTH]=DirectKinematics_PCc(l1,l2,qq1(i),qq22)
     hold on;
     plot(MTH.t(1),MTH.t(2),'.r');
 end

for i=1:length(qq2)
     [MTH]=DirectKinematics_PCc(l1,l2,q22,-qq2(i))
     hold on;
     plot(MTH.t(1),MTH.t(2),'.r');
 end





P1x=-10.087;
P1y=10.627;


P2x=-10.087;
P2y=13.486;



P3x=-10.087;
P3y=15.486;


P4x=-8.107;
P4y=13.486;


P5x=-8.181;
P5y=15.486;



Px_P1toP2= linspace(P1x, P2x, 10);
Py_P1toP2= linspace(P1y, P2y, 10);

for i=1:length(Px_P1toP2)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P1toP2(i),Py_P1toP2(i));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P2toP3= linspace(P2x, P3x, 10);
Py_P2toP3= linspace(P2y, P3y, 10);

for j=1:length(Px_P2toP3)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P2toP3(j),Py_P2toP3(j));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%

Px_P2toP4= linspace(P2x, P4x, 10);
Py_P2toP4= linspace(P2y, P4y, 10);

for k=1:length(Px_P2toP4)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P2toP4(k),Py_P2toP4(k));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P3toP5= linspace(P3x, P5x, 10);
Py_P3toP5= linspace(P3y, P5y, 10);

for l=1:length(Px_P3toP5)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P3toP5(l),Py_P3toP5(l));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end




%%%%%%%%%%%%%%%%%%  A

% %punto 6
P6x=-7.260;
P6y=10.627;
%punto 7
P7x=-7.260;
P7y=13.486;
%punto 8
P8x=-7.260;
P8y=15.486;
 
%punto 9
P9x=-5.28;
P9y=13.486;
%punto 10
P10x=-5.28;
P10y=15.486;


% %punto 11
P11x=-5.28;
P11y=10.627;
%punto 12
P12x=-5.28
P12y=13.486;
%punto 13
P13x=-5.28
P13y=15.486;

%%%%%%%%%%%%%%%%%%%%%%%%
Px_P6toP7= linspace(P6x, P7x, 10);
Py_P6toP7= linspace(P6y, P7y, 10);

for m=1:length(Px_P6toP7)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P6toP7(m),Py_P6toP7(m));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P7toP8= linspace(P7x, P8x, 10);
Py_P7toP8= linspace(P7y, P8y, 10);

for p=1:length(Px_P7toP8)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P7toP8(p),Py_P7toP8(p));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P7toP9= linspace(P7x, P9x, 10);
Py_P7toP9= linspace(P7y, P9y, 10);

for q=1:length(Px_P7toP9)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P7toP9(q),Py_P7toP9(q));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P8toP10= linspace(P8x, P10x, 10);
Py_P8toP10= linspace(P8y, P10y, 10);

for w=1:length(Px_P8toP10)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P8toP10(w),Py_P8toP10(w));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P11toP12= linspace(P11x, P12x, 10);
Py_P11toP12= linspace(P11y, P12y, 10);

for r=1:length(Px_P11toP12)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P11toP12(r),Py_P11toP12(r));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P12toP13= linspace(P12x, P13x, 10);
Py_P12toP13= linspace(P12y, P13y, 10);

for t=1:length(Px_P12toP13)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P12toP13(t),Py_P12toP13(t));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%  B

% %punto 14
P14x=-4.433;
P14y=10.627;
%punto 15
P15x=-4.433;
P15y=13.486;
%punto 16
P16x=-4.433;
P16y=15.486;

%punto 17
P17x=-1.933;
P17y=13.486;
%punto 18
P18x=-2.453;
P18y=15.486;

%punto 19
P19x=-1.933;
P19y=10.627;

%punto 20
P20x=-1.933;
P20y=10.627;
%punto 21
P21x=-1.933;
P21y=13.486;

%punto 22
P22x=-2.453;
P22y=13.486;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P14toP15= linspace(P14x, P15x, 10);
Py_P14toP15= linspace(P14y, P15y, 10);

for y=1:length(Px_P14toP15)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P14toP15(y),Py_P14toP15(y));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P15toP16= linspace(P15x, P16x, 10);
Py_P15toP16= linspace(P15y, P16y, 10);

for u=1:length(Px_P15toP16)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P15toP16(u),Py_P15toP16(u));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P15toP17= linspace(P15x, P17x, 10);
Py_P15toP17= linspace(P15y, P17y, 10);

for s=1:length(Px_P15toP17)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P15toP17(s),Py_P15toP17(s));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P16toP18= linspace(P16x, P18x, 10);
Py_P16toP18= linspace(P16y, P18y, 10);

for d=1:length(Px_P16toP18)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P16toP18(d),Py_P16toP18(d));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

Px_P14toP19= linspace(P14x, P19x, 10);
Py_P14toP19= linspace(P14y, P19y, 10);

for f=1:length(Px_P14toP19)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P14toP19(f),Py_P14toP19(f));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P20toP21= linspace(P20x, P21x, 10);
Py_P20toP21= linspace(P20y, P21y, 10);

for ff=1:length(Px_P20toP21)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P20toP21(ff),Py_P20toP21(ff));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P18toP22= linspace(P18x, P22x, 10);
Py_P18toP22= linspace(P18y, P22y, 10);

for g=1:length(Px_P18toP22)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P18toP22(g),Py_P18toP22(g));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% I

% %punto 23
P23x=-1.606;
P23y=10.627;
%punto 24
P24x=-1.606;
P24y=13.486;
%punto 25
P25x=-1.606;
P25y=15.486;


Px_P23toP24= linspace(P23x, P24x, 10);
Py_P23toP24= linspace(P23y, P24y, 10);

for y=1:length(Px_P23toP24)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P23toP24(y),Py_P23toP24(y));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P24toP25= linspace(P24x, P25x, 10);
Py_P24toP25= linspace(P24y, P25y, 10);

for uu=1:length(Px_P24toP25)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P24toP25(uu),Py_P24toP25(uu));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%  A

% %punto 26
P26x=-0.759;
P26y=10.627;
%punto 27
P27x=-0.759;
P27y=13.486;
%punto 28
P28x=-0.759;
P28y=15.486;
 
%punto 29
P29x=1.221;
P29y=13.486;
%punto 30
P30x=1.221;
P30y=15.486;


% %punto 31
P31x=1.221;
P31y=10.627;
%punto 32
P32x=1.221;
P32y=13.486;
%punto 33
P33x=1.221;
P33y=15.486;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P26toP27= linspace(P26x, P27x, 10);
Py_P26toP27= linspace(P26y, P27y, 10);

for mm=1:length(Px_P26toP27)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P26toP27(mm),Py_P26toP27(mm));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P27toP28= linspace(P27x, P28x, 10);
Py_P27toP28= linspace(P27y, P28y, 10);

for pp=1:length(Px_P27toP28)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P27toP28(pp),Py_P27toP28(pp));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P27toP29= linspace(P27x, P29x, 10);
Py_P27toP29= linspace(P27y, P29y, 10);

for qq=1:length(Px_P27toP29)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P27toP29(qq),Py_P27toP29(qq));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P28toP30= linspace(P28x, P30x, 10);
Py_P28toP30= linspace(P28y, P30y, 10);

for ww=1:length(Px_P28toP30)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P28toP30(ww),Py_P28toP30(ww));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P31toP32= linspace(P31x, P32x, 10);
Py_P31toP32= linspace(P31y, P32y, 10);

for rr=1:length(Px_P31toP32)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P31toP32(rr),Py_P31toP32(rr));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P32toP33= linspace(P32x, P33x, 10);
Py_P32toP33= linspace(P32y, P33y, 10);

for tt=1:length(Px_P32toP33)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P32toP33(tt),Py_P32toP33(tt));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% n
% %punto34
P34x=2.068;
P34y=10.627;
%punto 35
P35x=2.068;
P35y=13.486;
%punto 36
P36x=2.068;
P36y=15.486;

%punto37
P37x=4.048;
P37y=15.486;

% %punto38
P38x=4.048;
P38y=10.627;
%punto 39
P39x=4.048;
P39y=13.486;
%punto 40
P40x=4.048;
P40y=15.486;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Px_P34toP35= linspace(P34x, P35x, 10);
Py_P34toP35= linspace(P34y, P35y, 10);

for h=1:length(Px_P34toP35)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P34toP35(h),Py_P34toP35(h));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P35toP36= linspace(P35x, P36x, 10);
Py_P35toP36= linspace(P35y, P36y, 10);

for hh=1:length(Px_P35toP36)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P35toP36(hh),Py_P35toP36(hh));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P36toP37= linspace(P36x, P37x, 10);
Py_P36toP37= linspace(P36y, P37y, 10);

for g=1:length(Px_P36toP37)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P36toP37(g),Py_P36toP37(g));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Px_P38toP39= linspace(P38x, P39x, 10);
Py_P38toP39= linspace(P38y, P39y, 10);

for jj=1:length(Px_P38toP39)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P38toP39(jj),Py_P38toP39(jj));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.b');
end

Px_P39toP40= linspace(P39x, P40x, 10);
Py_P39toP40= linspace(P39y, P40y, 10);

for kk=1:length(Px_P39toP40)

    [theta1,theta2]=Inversekinematic2r(l1,l2,Px_P39toP40(kk),Py_P39toP40(kk));
    [MTH]=DirectKinematics_PCc(l1,l2,theta1,theta2)
    hold on;
    plot(MTH.t(1),MTH.t(2),'.r');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%