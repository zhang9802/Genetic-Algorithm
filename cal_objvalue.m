%计算函数目标值
%输入变量：二进制数值
%输出变量：目标函数值
function [objvalue] = cal_objvalue(pop,M)
% x = binary2decimal(pop);
%转化二进制数为x变量的变化域范围的数值
[row,col] = size(pop); 
objvalue = zeros(row,1);
for i = 1:row
objvalue(i)= 1/((sum(pop(i,:)~=0)-M)^2+eps);
end