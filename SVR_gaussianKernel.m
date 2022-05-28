%Choosing a Model
%Instructions are in the task pane to the left. Complete and submit each task one at a time.
%This code loads and plots the data.
load data
whos data dataTrain dataTest
plot(data.x,data.y,".")

%Fit a model
%Fit a model 

mdl = fitrsvm(dataTrain,"y","KernelFunction","gaussian")

%Evaluate at test values.
mdlLoss = loss(mdl,dataTest)
yPred = predict(mdl,dataTest);

%Plot the response.
plot(data.x,data.y,".")
hold on
plot(dataTest.x,yPred,".")
hold off
legend("All Data","Predicted Response")