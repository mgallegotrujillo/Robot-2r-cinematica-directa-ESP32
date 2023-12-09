function [MTH] =DirectKinematics_PCc(l1,l2,q1,q2)

R(1)=Link('revolute','d',0,'alpha',0,'a',l1,'offset',0);
R(2)=Link('revolute','d',0,'alpha',0,'a',l2,'offset',0);

Robot= SerialLink(R,'name','ROBOT 2R');

Robot.plot([q1,q2],'scale',1.0,'workspace',[-50 50 -50 50 -50 50]);
Robot.teach([q1,q2]);                                                            
MTH =Robot.fkine([q1,q2]);

end