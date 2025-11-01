# Housing-Prices-Prediction
This project aims to build and evaluate a Linear Regression Model to predict house prices using a real estate dataset.

## 🛠️ Methodology & Technical Skills
1. Data Pre-processing
   - Dataset Splitting: Using the R language and the sample() function, we split the data into a training set (train_df - 70%) and a test set (test_df - 30%), with set.seed(42) set to ensure reproducibility.
   - Categorical Handling: Fixed a common Error in contrasts<- in R by using the as.factor() function to explicitly convert categorical columns (e.g., mainroad, furnishingstatus) to Factor Type before importing into the model.
2. Model Building
   - A linear regression model is created using the lm() function, with price as the dependent variable and all the remaining independent variables (~ .) in the training set used to find the factors affecting price.
3. Evaluation
   - The model results were evaluated using the Mean Absolute Error (MAE) metric, which calculates the average absolute error between the actual and predicted values.
   - Train MAE and Test MAE are calculated to check the model's performance on both previously seen and previously unseen data, ensuring that the model is free from overfitting.

## 💡 Results
- The price prediction model is inaccurate by an average of 745877.6.
- The results show that the model predicts house prices on an unseen dataset (Test Set) with an MAE value of 745877.6.

## 🔑 Skills
- R Programming
- Machine Learning Fundamentals
- Statistical Modeling
- Debugging & Data Quality
- Evaluation Metrics
