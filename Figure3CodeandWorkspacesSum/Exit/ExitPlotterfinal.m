figure; boxplot((reshape(LX10k(19,:,:),10000,87)),'Symbol','')
xticks([1:1:90])
xticklabels(Uniqueneurons)
xtickangle(90)
ylabel('Exit Phenotype')

figure;
semilogx(logspace(-4,1.5,50),Error)
xlabel('Sparsity Parameter')
ylabel('Chi-squared error')
hold on; 
x = logspace(-4,1.5,50);
y = Error;
scatter(x(19),y(19),'o')
xlim([0 1])

figure; bar(mean(reshape(LX10k(:,1,:),50,87)))
xticks([1:1:90])
xticklabels(Uniqueneurons)
xtickangle(90)
ylabel('Re-entry Phenotype')


figure;
test = reshape(LX10k(:,1,:),50,87);
hold on;
for i = 1:87
    semilogx(logspace(-2,1.5,50),plot(test(:,i)))
end
ylim([-0.1 1])

%%
figure;
hold on;
for i = 1:87
    test = mean(LX10k(:,:,i)');
    semilogx(logspace(-4,1.5,50),test)
end
ylim([-0.5 0.8])
set(gca, 'XScale', 'log')
xlim([0 1])
plot([x(19) x(19)],[-1 1])
ylabel('Exit Phenotype')
xlabel('Sparsity')

%%
figure;
hold on;
for i = 1:87
    test = mean(LX10k(:,:,i)');
    semilogx(logspace(-4,1.5,50),test)
end
ylabel('Exit Phenotype')
ylim([-0.5 0.8])
set(gca, 'XScale', 'log')
yyaxis right
xlabel('Sparsity')
ylabel('Chi-squared error')
yyaxis right
semilogx(logspace(-4,1.5,50),Error,'b')
scatter(x(19),y(19),'ob')

ax = gca;
ax.YAxis(1).Color = 'k';
ax.XAxis(1).Color = 'k';
ax.YAxis(2).Color = 'b';
box on