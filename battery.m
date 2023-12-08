% 입력값 받기
initialSOC = input('초기 충전 상태 (%) : ');
maxSOC = input('최대 충전 상태 (%): ');

% 배터리 용량 및 전압 설정
batteryCapacity = 60; % 배터리 용량 (kWh)
batteryVoltage = 400; % 배터리 전압 (V)

% 초기값 설정
currentSOC = initialSOC;
timeElapsed = 0;

i=1;

% 전기차 배터리 충전 시뮬레이션 루프
while currentSOC < maxSOC

    % 현재 충전 가능한 용량 계산
    chargeableCapacity = batteryCapacity * (maxSOC - currentSOC) / 100;

    % 최적 충전 전류 계산 (간단히 가정)
    optimalChargingCurrent = 50 - 0.2 * (maxSOC - currentSOC); % 전류가 감소하는 흐름

    % 최소 충전 시간을 1초로 설정
    minChargingTime = 1;

    % 충전 시간 계산 (최대로 충전 가능한 경우는 minChargingTime을 사용하고, 그 외의 경우에는 기존의 계산 방식 사용)
    chargingTime = min(chargeableCapacity / (optimalChargingCurrent * batteryVoltage), minChargingTime);

    i=i+1;

    % 충전량 갱신
    currentSOC = [currentSOC, currentSOC(i-1) + (optimalChargingCurrent * chargingTime) / batteryCapacity * 100];

    % 시간 갱신
    timeElapsed = [timeElapsed, timeElapsed(i-1) + chargingTime];

    % 최적 전류, 시간, SOC 출력
    disp(['현재 충전 상태: ', num2str(currentSOC(i-1)), '%']);
    disp(['최적 충전 전류: ', num2str(optimalChargingCurrent(i-1)), ' A']);
    disp(['예상 충전 시간: ', num2str(chargingTime), ' 시간']);

    

    % 최대 SOC에 도달하면 종료
    if currentSOC >= maxSOC
        break;
    end
end

    % 그래프 업데이트
    plot(timeElapsed, currentSOC, 'bo-');
    title('전기자동차 배터리 충전 시뮬레이션');
    xlabel('시간 (시간)');
    ylabel('충전 상태 (%)');
    grid on;
    drawnow;

% 최종 결과 출력
disp(['전기차 배터리 충전 완료!']);
disp(['총 충전 시간: ', num2str(timeElapsed), ' 시간']);