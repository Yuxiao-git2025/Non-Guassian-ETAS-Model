function Non_GPlotLambda0(fai,Mu0,time,mag,minID)
figure;tiledlayout('flow','TileSpacing','compact','Padding','compact');
nexttile;hold on;
% plot(time,Mu0(:,minID),'LineWidth',1.5,'Color',[.2 .2 .2]);
WY_ShadedPlot(gca,time,Mu0(:,minID),[.8 .8 .8],[.2 .2 .2],0.2, 1e-1);
xlim([min(time) 12.7]);
xticks(0:4:12);
% ax=gca;
% ax.YScale='log';
xlabel('Time (day)','FontSize',22);
ylabel('$\lambda_0(t)$ (/day)','FontSize',22,'Interpreter','Latex');
Fun_defaultAxes;


nexttile([1,1]); Fun_defaultAxes;hold on;xticks([0 1]); 
colormap((slanCM('RdBu',20)));
ylim([-1.02 3.2]);yticks(-1:2:3);xlim([-0.05 1.05]);
scatter(fai(:,minID),mag(),8.^(mag+1)+5,fai(:,minID),'filled','o','LineWidth',0.1, ...
    'MarkerFaceAlpha',1); 
set(gca,'color',[.99 .99 .99]);
ylabel('Magnitude','FontSize',22);
xlabel('$PBI$','Interpreter','latex');

set(gcf, 'Position', [200, 100, 600, 680]);

