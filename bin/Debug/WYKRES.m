close all;
clear all;
fileID=fopen('Global k=6 2.txt')
formatSpec = '%f'

pr=fscanf(fileID,formatSpec);
fileID=fopen('Local k=6 2.txt')
prl=fscanf(fileID,formatSpec);
figure(1);

hold on;
X = 1:100;
Y = pr(:,1);
Z = prl(:,1);
ylim([0 1800])
L=plot(X,Z);
G=plot(X,Y);
G.LineWidth=1.3
L.LineWidth=1.3
ylabel('Funkcja celu','FontSize',15);
xlabel('iteracja','FontSize',15);
legend('\fontsize{13} Rozwiązanie globalne','\fontsize{13} Rozwiązanie lokalne')
grid on ;
hold on




