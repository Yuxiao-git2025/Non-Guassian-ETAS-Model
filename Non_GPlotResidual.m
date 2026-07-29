function Non_GPlotResidual(TransN,minID)
figure;tiledlayout('flow','TileSpacing','compact','Padding','compact');
nexttile;hold on;
plot(TransN(:,minID),TransN(:,minID),'Color','k','LineStyle',':','LineWidth',1.5);
plot(TransN(:,minID),1:size(TransN,1),'Color',[0.2784    0.7882    0.686], ...
    'LineStyle','-','LineWidth',2.5);
Fun_defaultAxes;
axis('tight');
set(gcf, 'Position', [200, 100, 700, 640]);
xlabel('Transformed Time');
ylabel('Numbers');

