function y=global_test(x)
% disp diffirence of global & local
%
% x=vector
% y=x.^num

% xnum=2; > conventional method
global xnum
% global variable conventionallty typed to HIGHER LETTER
y=x.^xnum;

% cant do like local
% function y=local_test(x)
% % disp diffirence of global & local
% %
% % x=vector
% % y=x.^num
% 
% y=x.^xnum;