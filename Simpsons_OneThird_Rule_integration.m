% Load the data set and convert it into an array. 
var = datadromcolumn(:,1); % select your column
var = table2array(var);

a = var(1); 
n = length(var); 
f = var(n); 
h = 0.01; %Spacing
Sum_odd = 0; 
Sum_even = 0; 

for i = 2:n-1
    if mod(i,2) == 0
        even_arr(i/2) = var(i);
    else
        odd_arr((i-1)/2) = var(i);
    end
end

for i1 = 1:length(odd_arr)
    Sum_odd = Sum_odd + odd_arr(i1);
end

for i2 = 1:length(even_arr)
    Sum_even = Sum_even + even_arr(i2);
end

sum = (h/3)*(a+f + 4*(Sum_odd) + 2*(Sum_even))

