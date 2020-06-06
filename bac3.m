function bac3(X,Y)
i1=length(X);
i2=sum(X);
i3=sum(X.^2);
j1=sum(X);
j2=sum(X.^2);
j3=sum(X.^3);
k1=sum(X.^2);
k2=sum(X.^3);
k3=sum(X.^4);
resu=[sum(Y);X*Y';(X.^2)*Y'];
mt=[i1 i2 i3;j1 j2 j3;k1 k2 k3];
ketqua=inv(mt)*resu;
fprintf('Xap xi ham bac 3:')
alpha=double(ketqua(1))
beta=double(ketqua(2))
gamma=double(ketqua(3))
figure
plot(X,Y,'.','markersize',20)
hold on
syms x
y=alpha+beta*x+gamma*(x.^2);
plot(X,alpha+beta*X+gamma*(X.^2))
title(strcat('y=',char(y)))