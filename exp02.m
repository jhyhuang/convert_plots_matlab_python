% IDRE workshop - Advanced Garphics with Matlab
% example 02 - stackedplot

clc; clear;

% data - atmospheric condation (matlab internal dataset)
load outdoors;
array_time = outdoors.Time;
array_data = table2array(outdoors);
Ylabels = {'RH (%)','T (F)','P (mmHg)'};

% regular subplots
figure(1)
subplot(3,2,1)
plot(array_time,array_data(:,1),'-ob','LineWidth',2,'MarkerSize',6,'MarkerFaceColor','b'); grid on;
set(gca,'FontSize',14,'xlim',[min(array_time) max(array_time)],'XTickLabel','','ylim',[47 50]);
ylabel(Ylabels(1),'FontSize',14); title('Weather data','FontSize',16);
subplot(3,2,3)
plot(array_time,array_data(:,2),'-or','LineWidth',2,'MarkerSize',6,'MarkerFaceColor','r'); grid on;
set(gca,'FontSize',14,'xlim',[min(array_time) max(array_time)],'XTickLabel','','ylim',[50.5 52.0]);
ylabel(Ylabels(2),'FontSize',14);
subplot(3,2,5)
plot(array_time,array_data(:,3),'-ok','LineWidth',2,'MarkerSize',6,'MarkerFaceColor','k'); grid on;
set(gca,'FontSize',14,'xlim',[min(array_time) max(array_time)],'ylim',[29.59 29.63]);
xlabel('Time','FontSize',14); ylabel(Ylabels(3),'FontSize',14);

% stackedplot
figure(2)
subplot(1,2,1)
s = stackedplot(outdoors,'DisplayLabels',Ylabels,'Fontsize',14,'title','Weather data'); grid on;
s.LineWidth = 2;
s.Marker = 'o'; 
s.LineProperties(1).Color = 'b';
s.LineProperties(1).MarkerFaceColor = 'b'; s.LineProperties(1).MarkerEdgeColor = 'b';
s.AxesProperties(1).YLimits = [47 50];
s.LineProperties(2).Color = 'r'; 
s.LineProperties(2).MarkerFaceColor = 'r'; s.LineProperties(2).MarkerEdgeColor = 'r';
s.AxesProperties(2).YLimits = [50.5 52];
s.LineProperties(3).Color = 'k'; 
s.LineProperties(3).MarkerFaceColor = 'k'; s.LineProperties(3).MarkerEdgeColor = 'k';
s.AxesProperties(3).YLimits = [29.59 29.63];

