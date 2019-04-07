clc
clear all
close all

%% ����ת���ɽǶ�
RTD = 180 / pi;
%% ��������
load yaw pitch roll;
load u u_yaw u_pitch u_roll;
load t;
load v0_yaw v0_pitch v0_roll;

%% ��ͼ
figure('name','ƫ������ʱ��仯����')
plot(t,v0_yaw * RTD,'b:',t,yaw,'r-','LineWidth',2);
xlabel('ʱ��(s)');
ylabel('ƫ����(��)');
legend('����ֵ','ʵ��ֵ');
grid on;
title('ƫ������ʱ��仯����');

figure('name','��������ʱ��仯����')
plot(t,v0_pitch * RTD,'b:',t,pitch,'r-','LineWidth',2);
xlabel('ʱ��(s)');
ylabel('������(��)');
legend('����ֵ','ʵ��ֵ');
grid on;
title('��������ʱ��仯����');

figure('name','��ת����ʱ��仯����')
plot(t,v0_roll * RTD,'b:',t,roll,'r-','LineWidth',2);
xlabel('ʱ��(s)');
ylabel('��ת��(��)');
legend('����ֵ','ʵ��ֵ');
grid on;
title('��ת����ʱ��仯����');

figure('name','��������ʱ��仯����')
plot(t,u(:,1),'b:',t,u(:,2),'r-',t,u(:,3),'g-.',t,u(:,4),'m--','LineWidth',2);
xlabel('ʱ��(s)');
ylabel('������(V)');
legend('v_f','v_b','v_r','v_l');
grid on;
title('��������ʱ��仯����');