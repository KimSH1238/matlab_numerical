%% data 받아오기는 직접 상단메뉴에서 열기해서 진행
% 변수이름 B

% joint 1 2 3과 4 5 6을 따로 계산.
B1=360-B{:,1}.*340./5;
B2=360-B{:,2}.*340./5;
B3=360-B{:,3}.*340./5;

% joint 4 5 6 계산
B4=B{:,4}.*340./5;
B5=B{:,5}.*340./5;
B6=B{:,6}.*340./5;

% 각도행렬로 변환
A=[B1 B2 B3 B4 B5 B6];

%% 행렬을 기반하여 for루프로 벡터 도출하기
i=length(B1);
% 빈 배열 정의
C=zeros(320,4);

% 3차원 측정기에서 거리 재기
for k=1:i
    a6=B6(k);
    L1=[1 0 0 0;
        0 cosd(a6) -sind(a6) 33*cosd(a6);
        0 sind(a6) cosd(a6) 33*sind(a6);
        0 0 0 1];

    a5=B5(k);
    L2=[cosd(a5) 0 sind(a5) 205*sind(a5);
        0 1 0 0;
        -sind(a5) 0 cosd(a5) 205*cosd(a5);
        0 0 0 1];

    a4=B4(k);
    L3=[cosd(a4) 0 sind(a4) 200*sind(a4);
        0 1 0 0;
        -sind(a4) 0 cosd(a4) 200*cosd(a4);
        0 0 0 1];

    a3=B3(k);
    L4=[cosd(a3) 0 sind(a3) 20*sind(a3);
        0 1 0 30;
        -sind(a3) 0 cosd(a3) 20*cosd(a3);
        0 0 0 1];

    a2=B2(k);
    L5=[cosd(a2) -sind(a2) 0 190*cosd(a2);
        sind(a2) cosd(a2) 0 190*sind(a2);
        0 0 1 45;
        0 0 0 1];
   % 마지막 J1항은 쭉 이어져있으므로 L5의 연장선으로 본다.
   % 빈 배열에 그래프 받기.
   C(k,:)=L1*L2*L3*L4*L5*[0; 0; 0; 1];
end

%% 배열 부분을 그래프로 그리기
figure()
X=C(:,1); X=X-X(1);
Y=C(:,2); Y=Y-Y(1);
Z=C(:,3); Z=Z-Z(1);
plot3(X,Y,Z); grid on