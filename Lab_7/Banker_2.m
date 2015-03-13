% Author : Hemil Modi(121016) Kavan Patel(121023)
% Date   : 13-03-2015

cMatrix = xlsread('claim.xlsx');
aMatrix = xlsread('allocate.xlsx');
aVector = xlsread('avail.xlsx');



bankers(cMatrix,aMatrix,aVector)

