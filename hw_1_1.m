% 4
q_1_4_a=(24.5+64/(3.5^2)+8.3^(12.5^3))/(sqrt(76.4)-28/15)
a=5.9^2-2.4^2;
b=log10(12890)/exp(0.3);
q_1_4_b=a/3+b^2

% 7
t=3.2;
q_1_7_a=56*t-9.81/2*t^2
q_1_7_b=14*exp(-t*0.1)*sin(2*t*pi)

% 11
a=11;
b=9;
c=1/2*sqrt(b^2+16*a^2)
d=b^2/(8*a)*log((4*a+sqrt(b^2+16*a^2))/b)
q_1_11=a+b

% 12
x=pi/12
q_1_12_a=sin(5*x)
q_1_12_a=5*sin(x)-20*sin(x)^3+16*sin(x)^5
q_1_12_b=(sin(x)^2)*(cos(x)^2)
q_1_12_b=(1-cos(4*x))/8

% 16
a=5.3;
b=6;
thc=42;
q_1_16_a=sqrt(a^2+b^2-2*a*b*cosd(thc))
c=q_1_16_a;
q_1_16_b=acosd(-(b^2-c^2-a^2)/(2*c*a))
thb=q_1_16_b
q_1_16_b=acosd(-(a^2-c^2-b^2)/(2*c*b))
tha=q_1_16_b
q_1_16_c=tha+thb+thc

% 22
num_bus=ceil(315/37)
% 1st : find how may bus exist
q_1_22=num_bus*37-315

% 27
q_1_27_a=factorial(49)/(factorial(6)*factorial(49-6))
a=factorial(6)/(factorial(2)*factorial(6-2));
b=factorial(43)/(factorial(4)*factorial(43-4));
c=q_1_27_a;
q_1_27_b=a*b/c
% not case but probability

% 31
% f(0)=0.7745 이용해 이양하여 진행
% 손으로 푼 계산과정 첨부
k=log(0.5)/5740
q_1_31_a=log(0.7745)/k
q_1_31_b=round(q_1_31_a)

% 36
% t를 기준으로 T를 변수로 하여 연립방정식 추론
% t는 시간단위로 시작
% 손으로 쓴 계산과정 첨부
k_t1= -log((26.4-20)/(37-20));
k_t2= -log((25.5-20)/(37-20));
% k*t2=k*(t1+1)을 이용
% 두 식을 빼서 계산
k=k_t2-k_t1
% 구해진 k를 바탕으로 t 추산
delta_t=k_t1/k
% t를 시간단위에서 분단위로 변경
delta_t_min=round(60*delta_t)
% ceil 함수를 이해하지 못해 그냥 계산기로 진행
q_1_26='9시 18분 - 387분 = 2시 51분'

% 38
% 여러모로 이양해서 풀었고 손으로 계산과정 첨부
q_1_38_a=log(2)/0.15
q_1_38_a='그러므로 4.621분 후에 두배'
q_1_38_b=log(1000000)/0.15 