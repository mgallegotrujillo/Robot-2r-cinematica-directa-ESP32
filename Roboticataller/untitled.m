rad_angle2 = acos((sq(x)+ sq(y) - sq(L1) - sq(L2)) / (2*L1*L2));
      rad_angle1= atan(y / x) - atan((L2*sin(rad_angle2)) / (L1+ L2*cos(rad_angle2)));