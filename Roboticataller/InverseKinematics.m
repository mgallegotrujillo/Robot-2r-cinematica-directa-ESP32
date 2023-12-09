function [theta1,theta2,theta3] = InverseKinematics(l1,l2,l3,Px,Py,Pz)

b= sqrt(Px^2+Py^2)
c=Pz-l1;
e=sqrt(b^2+c^2);

%theta1
theta1=atan2(Py,Px);
fprintf('theta 1 = %.4f \n',rad2deg(theta1));

%theta3
cos_theta3=(e^2-l2^2-l3^2)/(2*l2*l3);
sen_theta3= sqrt(1-(cos_theta3)^2);
theta3= atan2(sen_theta3,cos_theta3);
fprintf('theta 3 = %.4f \n',rad2deg(theta3));

%theta2
alpha=atan2(c,b);
phi=atan2(l3*sen_theta3,l2+l3*cos_theta3);
theta2=alpha-phi
fprintf('theta 1 = %.4f \n',rad2deg(theta2));

end