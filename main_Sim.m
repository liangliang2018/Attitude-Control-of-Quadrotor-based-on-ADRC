clc
clear all
close all

%% ��ʼ����
sim('Attitude_Control_ADRC');

%% ��������
save yaw; save pitch; save roll;
save u; save u_yaw; save u_pitch; save u_roll;
save t;
save v0_yaw; save v0_pitch; save v0_roll;

%% ��ͼ
plot_figure;