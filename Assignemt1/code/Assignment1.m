function [mean, meanApproximations] = meanEstimation(data)
	total = 0;
	len   = length(data);
	meanApproximations = [];
		
	for i = 1:len 
		total = total + data(i);
		meanApproximations(i) = total / i;		
	end

	mean = total / len;

endfunction

data = textread("DataA1.txt", "%f");

figure()
plot(data)

[mean, meanApproximations] = meanEstimation(data);

figure()
plot(meanApproximations)
mean

pause()
