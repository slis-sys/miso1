clc
clear
close all

dataStruct = importdata('MIS1_SS24_Gruppe4_statisch-complete.mat');

kurts = zeros(1,13);
skews = zeros(1,13);

for i = 1:13
    fieldName = sprintf('LDAdata_stat_%02d_%02d', i, abs(175 - 25 * i));
    dataField = dataStruct.(fieldName);

    figure(i)
    histogram(dataField(:,7));
    kurts(i) = kurtosis(dataField(:,7));
    skews(i) = skewness(dataField(:,7));
    %print(i,kurt, skew)
    title(sprintf('Histogram of %s(:,7)', fieldName));
end

