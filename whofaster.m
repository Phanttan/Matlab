function n = whofaster
% Have 2 functions. Draw the plot to find out whether model is faster
% Finding the initial status of err
for i = 0: 10
    if isnan(f1(i)) || isnan(f2(i))
        continue
    end
    idx_initial = i + 1;
    err_initial = f1(i) - f2(i);
    sign_initial = sign(err_initial);
    break
end

for i = idx_initial:1000
    model1 = f1(i);
    model2 = f2(i);
    err = model1 - model2;
    sign_real = sign(err);
    if sign_real ~=  sign_initial
        n = i;
        break
    end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  result = f1(n)
    result = n^2;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function result = f2(n)
    result = power(2,n);
end



