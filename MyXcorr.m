function [output, lags] = MyXcorr(X,Y)
    yBar = flip(Y);
    
    output = zeros(1,length(X)+length(Y)+1);
    
    for i = 1:length(X)
        for j = 1:length(yBar)
            
            output(i+j) = output(i+j) + X(i)*yBar(j);
        end
    end
    lags = -1*length(Y):length(X);
end