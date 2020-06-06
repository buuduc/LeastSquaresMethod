function tuyentinh(X,Y)
i1=length(X); 
i2=sum(X);
j1=sum(X);
j2=sum(X.^2);
mt=[i1 i2;j1 j2];
resu=[sum(Y);X*Y'];
ketqua=inv(mt)*resu;12
fprintf('Xap xi ham tuyen tinh :')
alpha=round(ketqua(1),4)
beta=round(ketqua(2),4)
plot(X,Y,'.','markersize',20)
hold on
plot(X,alpha+beta*X)
syms x
y=alpha+beta*x;
title(strcat('y=',char(y)))