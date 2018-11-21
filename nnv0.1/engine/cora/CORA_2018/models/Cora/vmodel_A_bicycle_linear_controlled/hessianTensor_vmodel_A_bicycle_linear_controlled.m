function Hf=hessianTensor_vmodel_A_bicycle_linear_controlled(x,u)



 Hf{1} = interval(sparse(34,34),sparse(34,34));

Hf{1}(3,3) = x(5)*sin(x(3)) - x(4)*cos(x(3));
Hf{1}(4,3) = -sin(x(3));
Hf{1}(5,3) = -cos(x(3));
Hf{1}(3,4) = -sin(x(3));
Hf{1}(3,5) = -cos(x(3));


 Hf{2} = interval(sparse(34,34),sparse(34,34));

Hf{2}(3,3) = - x(5)*cos(x(3)) - x(4)*sin(x(3));
Hf{2}(4,3) = cos(x(3));
Hf{2}(5,3) = -sin(x(3));
Hf{2}(3,4) = cos(x(3));
Hf{2}(3,5) = -sin(x(3));


 Hf{3} = interval(sparse(34,34),sparse(34,34));



 Hf{4} = interval(sparse(34,34),sparse(34,34));

Hf{4}(6,5) = 1;
Hf{4}(5,6) = 1;


 Hf{5} = interval(sparse(34,34),sparse(34,34));

Hf{5}(4,4) = (((118300*x(7))/27 - 126603971613897557/1159641169920)*(x(5) + (143*x(6))/100))/(875*x(4)^3) - ((x(5) - (127*x(6))/100)*((205975*x(7))/27 + 198563491276212095/927712935936))/(875*x(4)^3);
Hf{5}(5,4) = ((205975*x(7))/27 + 198563491276212095/927712935936)/(1750*x(4)^2) - ((118300*x(7))/27 - 126603971613897557/1159641169920)/(1750*x(4)^2);
Hf{5}(6,4) = - (143*((118300*x(7))/27 - 126603971613897557/1159641169920))/(175000*x(4)^2) - (127*((205975*x(7))/27 + 198563491276212095/927712935936))/(175000*x(4)^2) - 1;
Hf{5}(7,4) = (1177*(x(5) - (127*x(6))/100))/(270*x(4)^2) - (338*(x(5) + (143*x(6))/100))/(135*x(4)^2);
Hf{5}(4,5) = ((205975*x(7))/27 + 198563491276212095/927712935936)/(1750*x(4)^2) - ((118300*x(7))/27 - 126603971613897557/1159641169920)/(1750*x(4)^2);
Hf{5}(7,5) = -167/(90*x(4));
Hf{5}(4,6) = - (143*((118300*x(7))/27 - 126603971613897557/1159641169920))/(175000*x(4)^2) - (127*((205975*x(7))/27 + 198563491276212095/927712935936))/(175000*x(4)^2) - 1;
Hf{5}(7,6) = 82049/(9000*x(4));
Hf{5}(4,7) = (1177*(x(5) - (127*x(6))/100))/(270*x(4)^2) - (338*(x(5) + (143*x(6))/100))/(135*x(4)^2);
Hf{5}(5,7) = -167/(90*x(4));
Hf{5}(6,7) = 82049/(9000*x(4));
Hf{5}(8,7) = -338/135;
Hf{5}(7,8) = -338/135;


 Hf{6} = interval(sparse(34,34),sparse(34,34));

Hf{6}(4,4) = (143*((118300*x(7))/27 - 126603971613897557/1159641169920)*(x(5) + (143*x(6))/100))/(125000*x(4)^3) + (127*(x(5) - (127*x(6))/100)*((205975*x(7))/27 + 198563491276212095/927712935936))/(125000*x(4)^3);
Hf{6}(5,4) = - (143*((118300*x(7))/27 - 126603971613897557/1159641169920))/(250000*x(4)^2) - (127*((205975*x(7))/27 + 198563491276212095/927712935936))/(250000*x(4)^2);
Hf{6}(6,4) = (16129*((205975*x(7))/27 + 198563491276212095/927712935936))/(25000000*x(4)^2) - (20449*((118300*x(7))/27 - 126603971613897557/1159641169920))/(25000000*x(4)^2);
Hf{6}(7,4) = - (1046353*(x(5) - (127*x(6))/100))/(270000*x(4)^2) - (169169*(x(5) + (143*x(6))/100))/(67500*x(4)^2);
Hf{6}(4,5) = - (143*((118300*x(7))/27 - 126603971613897557/1159641169920))/(250000*x(4)^2) - (127*((205975*x(7))/27 + 198563491276212095/927712935936))/(250000*x(4)^2);
Hf{6}(7,5) = 574343/(90000*x(4));
Hf{6}(4,6) = (16129*((205975*x(7))/27 + 198563491276212095/927712935936))/(25000000*x(4)^2) - (20449*((118300*x(7))/27 - 126603971613897557/1159641169920))/(25000000*x(4)^2);
Hf{6}(7,6) = -12040721/(9000000*x(4));
Hf{6}(4,7) = - (1046353*(x(5) - (127*x(6))/100))/(270000*x(4)^2) - (169169*(x(5) + (143*x(6))/100))/(67500*x(4)^2);
Hf{6}(5,7) = 574343/(90000*x(4));
Hf{6}(6,7) = -12040721/(9000000*x(4));
Hf{6}(8,7) = -169169/67500;
Hf{6}(7,8) = -169169/67500;


 Hf{7} = interval(sparse(34,34),sparse(34,34));

Hf{7}(9,1) = -1;
Hf{7}(10,2) = -1;
Hf{7}(11,3) = -1;
Hf{7}(12,4) = -1;
Hf{7}(13,5) = -1;
Hf{7}(14,6) = -1;
Hf{7}(15,7) = -1;
Hf{7}(16,8) = -1;
Hf{7}(1,9) = -1;
Hf{7}(25,9) = 1;
Hf{7}(2,10) = -1;
Hf{7}(26,10) = 1;
Hf{7}(3,11) = -1;
Hf{7}(27,11) = 1;
Hf{7}(4,12) = -1;
Hf{7}(28,12) = 1;
Hf{7}(5,13) = -1;
Hf{7}(29,13) = 1;
Hf{7}(6,14) = -1;
Hf{7}(30,14) = 1;
Hf{7}(7,15) = -1;
Hf{7}(31,15) = 1;
Hf{7}(8,16) = -1;
Hf{7}(32,16) = 1;
Hf{7}(9,25) = 1;
Hf{7}(10,26) = 1;
Hf{7}(11,27) = 1;
Hf{7}(12,28) = 1;
Hf{7}(13,29) = 1;
Hf{7}(14,30) = 1;
Hf{7}(15,31) = 1;
Hf{7}(16,32) = 1;


 Hf{8} = interval(sparse(34,34),sparse(34,34));

Hf{8}(17,1) = -1;
Hf{8}(18,2) = -1;
Hf{8}(19,3) = -1;
Hf{8}(20,4) = -1;
Hf{8}(21,5) = -1;
Hf{8}(22,6) = -1;
Hf{8}(23,7) = -1;
Hf{8}(24,8) = -1;
Hf{8}(1,17) = -1;
Hf{8}(25,17) = 1;
Hf{8}(2,18) = -1;
Hf{8}(26,18) = 1;
Hf{8}(3,19) = -1;
Hf{8}(27,19) = 1;
Hf{8}(4,20) = -1;
Hf{8}(28,20) = 1;
Hf{8}(5,21) = -1;
Hf{8}(29,21) = 1;
Hf{8}(6,22) = -1;
Hf{8}(30,22) = 1;
Hf{8}(7,23) = -1;
Hf{8}(31,23) = 1;
Hf{8}(8,24) = -1;
Hf{8}(32,24) = 1;
Hf{8}(17,25) = 1;
Hf{8}(18,26) = 1;
Hf{8}(19,27) = 1;
Hf{8}(20,28) = 1;
Hf{8}(21,29) = 1;
Hf{8}(22,30) = 1;
Hf{8}(23,31) = 1;
Hf{8}(24,32) = 1;