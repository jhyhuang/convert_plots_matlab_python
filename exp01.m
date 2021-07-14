% IDRE workshop - Advanced Garphics with Matlab
% example 01 - 2D line plot 

clc; clear;

% data - Exponential functions
x = [0:0.5:10];
y1 = exp(x/2); e1 = 10*rand(1,length(y1)); % errors
y2 = exp(x/3); e2 =  8*rand(1,length(y2));
y3 = exp(x/4); e3 =  6*rand(1,length(y3));
y4 = exp(x/5); e4 =  4*rand(1,length(y4));

% plots
figure(1) % simple line plot
subplot(2,2,1)
plot(x,y1,'-','LineWidth',1); hold;
plot(x,y2,'-.','LineWidth',1);
plot(x,y3,'--','LineWidth',1);
plot(x,y4,':','LineWidth',1);
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n}','FontSize',22);

subplot(2,2,2)
plot(x,y1,'-','Color','k','LineWidth',1); hold; grid on;
plot(x,y2,'-.','Color','b','LineWidth',2);
plot(x,y3,'--','Color','r','LineWidth',3);
plot(x,y4,':','Color','g','LineWidth',4);
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n}','FontSize',22);
legend('n=2','n=3','n=4','n=5','Location','NorthWest','FontSize',18);

subplot(2,2,3)
plot(x,y1,'-','Color','k','LineWidth',2,'Marker','o','MarkerSize',6,'MarkerFaceColor','y'); hold; grid on;
plot(x,y2,'-','Color','b','LineWidth',2,'Marker','s','MarkerSize',8,'MarkerFaceColor','y');
plot(x,y3,'-','Color','r','LineWidth',2,'Marker','d','MarkerSize',10,'MarkerFaceColor','y');
plot(x,y4,'-','Color','g','LineWidth',2,'Marker','^','MarkerSize',12,'MarkerFaceColor','y');
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n}','FontSize',22);
legend('n=2','n=3','n=4','n=5','Location','NorthWest','FontSize',18);
 
subplot(2,2,4) % line plot with errorbar
errorbar(x,y1,e1,'-o','Color','k','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','k'); hold; grid on;
errorbar(x,y2,e2,'-.s','Color','b','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','b');
errorbar(x,y3,e3,'--d','Color','r','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','r');
errorbar(x,y4,e4,':^','Color','g','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','g');
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n}','FontSize',22);
legend('n=2','n=3','n=4','n=5','Location','NorthWest','FontSize',18);

figure(2) 
subplot(2,2,1) % semilogx
semilogx(x,y1,'-o','Color','k','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','k'); hold; grid on;
semilogx(x,y2,'-.s','Color','b','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','b');
semilogx(x,y3,'--d','Color','r','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','r');
semilogx(x,y4,':^','Color','g','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','g');
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n} (semilogx)','FontSize',22);
legend('n=2','n=3','n=4','n=5','Location','NorthWest','FontSize',18);

subplot(2,2,2) % semilogy
semilogy(x,y1,'-o','Color','k','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','k'); hold; grid on;
semilogy(x,y2,'-.s','Color','b','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','b');
semilogy(x,y3,'--d','Color','r','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','r');
semilogy(x,y4,':^','Color','g','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','g');
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n} (semilogy)','FontSize',22);
legend('n=2','n=3','n=4','n=5','Location','NorthWest','FontSize',18);

subplot(2,2,3) % loglog
loglog(x,y1,'-o','Color','k','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','k'); hold; grid on;
loglog(x,y2,'-.s','Color','b','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','b');
loglog(x,y3,'--d','Color','r','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','r');
loglog(x,y4,':^','Color','g','LineWidth',1,'MarkerSize',6,'MarkerFaceColor','g');
set(gca,'XTick',[0:1:10],'YTick',[0:25:150],'FontSize',14);
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
title('Function y = e^{x/n} (loglog)','FontSize',22);
legend('n=2','n=3','n=4','n=5','Location','NorthWest','FontSize',18);

