 Crop Yield Prediction using Machine Learning
Aligned with UN SDG 2: Zero Hunger

Problem:
Global food insecurity remains a major challenge, especially for smallholder farmers. Accurate crop yield prediction helps optimize planting decisions, improve resource usage, and reduce waste — directly supporting SDG 2: Zero Hunger.

Approach:
We trained a Random Forest Regression model on a dataset with 8,000 records containing soil, weather, fertilizer, and crop type data. After preprocessing (handling categorical features using one-hot encoding), the data was split into training and testing sets.

Model Used:

Algorithm: Random Forest Regressor

Features: Temperature, Humidity, Moisture, Soil Type, Crop Type, Nitrogen, Potassium, Phosphorous, Fertilizer Name

Target: Crop Yield (kg/ha)

Results:

✅ RMSE: 571.85

✅ R² Score: 0.92 — Indicates high accuracy in yield prediction

Ethical & Social Considerations:

Bias Risk: The dataset may reflect specific crops, fertilizers, or regions; results may generalize poorly outside those conditions.

Sustainability: Better predictions enable efficient land use and reduce over-fertilization, promoting environmental health.

Fairness: Our approach treats all crop types and soil types equally via encoding; interpretability and local validation are important next steps.

Impact:
Farmers and agricultural planners can use this model to forecast yields under varying soil and weather conditions, helping reduce food insecurity and improve planning.

https://colab.research.google.com/drive/1oSsrzrIgAx-TCIvYfYZqBFxHQX-VEArX?usp=sharing