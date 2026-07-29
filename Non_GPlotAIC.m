function minID=Non_GPlotAIC(dTs,AICnp,fs,paramfs)
figure;tiledlayout('flow','TileSpacing','compact','Padding','compact');
nexttile;hold on;
minID=find(AICnp==min(AICnp));
plot(dTs,AICnp,'LineWidth',2.5,'Color','k','Marker','diamond','MarkerSize',15, ...
    'LineStyle','-','MarkerFaceColor',[.5 .5 .5]);
xline(dTs(minID),'LineWidth',3.5,'Color',[0.4941    0.1843    0.5569],'LineStyle','--');
xlabel('$\delta{t}$','Interpreter','latex');
ylabel('$AIC(np)$','Interpreter','latex');

yyaxis right;
plot(dTs,fs*100,'LineWidth',1.6,'Color',[0.2784    0.7882    0.686],'Marker', ...
    'diamond','MarkerSize',11, 'LineStyle','-','MarkerFaceColor',[ 0.0314    0.7804    0.4314]);
ax=gca;
ax.XScale='log';
ax.YAxis(1).Color='k';
ax.YAxis(2).Color=[0.2784    0.7882    0.686];
ylabel('$f.s.$','Interpreter','latex');
Fun_defaultAxes;
set(gcf, 'Position', [200, 100, 800, 640]);

fprintf('# =======================\n');
fprintf('# The best: \ndt=%.3f \nindex=%d \nAIC(np)=%.2f \nf.s.=%.2f \n', ...
    dTs(minID),minID,AICnp(minID),fs(minID)*100);
fprintf(['Params: \n(k,alpha,c,p)  ',num2str(paramfs(minID,2:end))  '\n']);