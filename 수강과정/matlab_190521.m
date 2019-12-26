% for loop
for k = 1:3:10
    x=k^2;
    y=k.^2;
    disp(x)
    disp(y)
end

% while loop
x=1
while x<=15
    x=2*x;
    disp(x)
end

% for escape infinity loop > ctrl+C

% break : when inside a loop, terminate execution of loop. if inside nested
% loop, just nested terminated. if outside loop, terminate script of
% function
% continue : stop present process and goto next turn

% Ex 24-1
x=1;
y=0;
n=input('input maximum integer : ')
for x=1:n
    y=y+x;
    fprintf('if x is %d, sum is %d\n',x,y)
    x=x+1;
end

% Ex while1 24-1
s=1; % initial of no.
n=1; % initial of sum

% while s<1000
%     n=n+1;
%     s=s+n;
%     d1=floor(s/100);
%     % 10^2 th value of s
%     d2=floor((x-d1*100)/10);
%     % 10^1 th value of s
%     d3=s-d1*100-d2*10;
%     % 10^0 th value of s
%     if d1==d2 & d2==d3
%         fprintf('added all %i num and sum of all is %i\n',n,s)
%     end     
% end
% cant operate

% Ex while1 24-2
s=1; % initial of no.
n=1; % initial of sum

% while s<1000
%     n=n+1;
%     s=s+n;
%     d1=floor(s/100);
%     % 10^2 th value of s
%     d2=floor((x-d1*100)/10);
%     % 10^1 th value of s
%     d3=s-d1*100-d2*10;
%     % 10^0 th value of s
%     if d1==d2 & d2==d3
%         break
%     end     
% end
% fprintf('added all %i num and sum of all is %i\n',n,s)
% cant operate

% Ex while1 24-3
s=1; % initial of no.
n=1; % initial of sum

% while s<1000
%     n=n+1;
%     s=s+n;
%     d1=floor(s/100);
%     % 10^2 th value of s
%     d2=floor((x-d1*100)/10);
%     % 10^1 th value of s
%     d3=s-d1*100-d2*10;
%     % 10^0 th value of s
%     if d1~=d2 | d2~=d3
%         continue
%     end     
% end
% fprintf('added all %i num and sum of all is %i\n',n,s)
% cant operate