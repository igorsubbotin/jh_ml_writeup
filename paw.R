trControl = trainControl(method = "cv", number = 4, allowParallel = TRUE,verboseIter = TRUE)
modFit <- train(classe~.,data=training,method="rf",trControl=trControl)

pred <- predict(modFit,newdata=testing)
confusionMatrix(testing$classe,pred)