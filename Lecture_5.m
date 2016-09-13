%Lecture 5

data = xlsread('hourly_elec.xlsx')

temp_data = csvread('tempdata-1.csv')



vector = mat2vec(data);

plot(vector);

gobbled_data = data_goblin(vector);

plot(gobbled_data);

processed_data = pre_processor(gobbled_data)

%Data Transformation

figure;
qqplot(processed_data);

log_data = log(processed_data);
figure;
qqplot(log_data);




%Data Mining



%need help with peak functions

figure;
scatter(log_data,temp_data);


