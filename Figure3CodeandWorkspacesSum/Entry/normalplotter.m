figure; boxplot((reshape(LX10k(20,:,:),10000,87)),'Symbol','')
xticks([1:1:90])
xticklabels(Uniqueneurons)
xtickangle(90)
ylabel('Re-entry Phenotype')

figure;
semilogx(logspace(-2,1.5,50),Error)
xlabel('Sparsity Parameter')
ylabel('Chi-squared error')
hold on; 
x = logspace(-2,1.5,50);
y = Error;
scatter(x(20),y(20),'o')


figure; bar(mean(reshape(LX10k(:,1,:),50,87)))
xticks([1:1:90])
xticklabels(Uniqueneurons)
xtickangle(90)
ylabel('Re-entry Phenotype')

figure;
hold on;
for i = 45
    test = mean(LX10k(:,:,i)');
    semilogx(logspace(-2,1.5,50),test)
end
ylim([-15 15])
set(gca, 'XScale', 'log')
xlabel('Sparsity')
ylabel('Re-entry Phenotype')
plot([x(20) x(20)],[-15 15])

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
    semilogx(logspace(-2,1.5,50),test)
end
ylim([-15 15])
set(gca, 'XScale', 'log')
xlabel('Sparsity')
ylabel('Re-entry Phenotype')
plot([x(20) x(20)],[-15 15])
%%
figure;
hold on;
for i = 1:87
    test = mean(LX10k(:,:,i)');
    semilogx(logspace(-2,1.5,50),test)
end
ylabel('Re-entry Phenotype')
ylim([-15 15])
set(gca, 'XScale', 'log')
ylim([-15 15])
yyaxis right
xlabel('Sparsity')
ylabel('Chi-squared error')
yyaxis right
semilogx(logspace(-2,1.5,50),Error,'b')
scatter(x(20),y(20),'ob')

ax = gca;
ax.YAxis(1).Color = 'k';
ax.XAxis(1).Color = 'k';
ax.YAxis(2).Color = 'b';
box on