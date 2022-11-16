% X, Y as input
% corellation between X and Y
% time lag value 
% xcoor(time_lag) = 
X = [1 2 3 4];
Y = [1 2 3 4];
[corr,lags] = MyXcorr(X,X);
subplot(1,1,1);
plot(lags,corr);
hold on;
[cr,lg] = xcorr(X,Y);
plot(lg,cr);