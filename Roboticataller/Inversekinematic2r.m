function [theta1,theta2] = Inversekinematic2r(l1,l2,Px,Py)

b= sqrt(Px^2+Py^2)

%theta2
cos_theta2=(b^2-l2^2-l1^2)/(2*l1*l2);
sen_theta2=sqrt(1-(cos_theta2)^2);
theta2= atan2(sen_theta2,cos_theta2);
fprintf('theta 2 = %.4f \n',rad2deg(theta2));

%theta1
alpha=atan2(Py,Px);
phi=atan2(l2*sen_theta2,l1+l2*cos_theta2);
theta1=abs(alpha-phi)
fprintf('theta 1 = %.4f \n',rad2deg(theta1));

end