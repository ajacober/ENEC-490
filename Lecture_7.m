%Lecture 7
[num12 char12 combo12] = xlsread('coal860_data.xlsx', 'coalUse_12');
[num15 char15 combo15] = xlsread('coal860_data.xlsx', 'coalUse_15');

years = 1925:1:2012;

bins = zeros(length(years),1);

for i = 1:length(num12)
    
    yr = num12(i,4);
    
    yr_bins = find(years==yr);
    
    bins(yr_bins) = bins(yr_bins) + num12(i,3)
end

%figure(1);
%plot(bins);
%figure;
%bar(bins, 'w', 'EdgeColor', 'black')




%num15_new = num15(:,4:5);
%num12_new = num12(:,4:5);


C = setdiff(num12, num15, 'rows');


%figure(1);
%plot(bins);
%figure(1);
%bar(bins, 'w', 'EdgeColor', 'black');
%bar(C, 'r');

years_int = 1925:1:2015;

bins_int = zeros(length(years_int), 1);

for i = 1:length(C)
     
    yr_int = C(i,4);
    
    yr_bins_int = find(years_int==yr_int);
    
    bins_int(yr_bins_int) = bins_int(yr_bins_int) + C(i,3)

end


%bins_2_use = bins_int(88:91, :);
figure(1);
hold on;
bar(bins,'FaceColor', [.8 .8 .8], 'EdgeColor', [.8 .8 .8], 'LineWidth', 0.001);
bar(bins_int,'FaceColor', [.2 .2 .2], 'EdgeColor', [.1 .1 .1], 'LineWidth', .001);
ax=gca;
ax.XTick=([1 11 21 31 41 51 61 71 81 91 101]);
ax.XTickLabel=({'1925','1935','1945','1955','1965','1975','1985','1995','2005', '2010', '2015'});
xlabel('Year');
ylabel('Capacity (MW)');
set(ax,'FontSize',12);


