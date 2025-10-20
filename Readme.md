 Customer Personality Analysis

This project focuses on analyzing customer profiles and behavior to help businesses better understand their audience. Using a marketing campaign dataset, we performed data preprocessing, feature engineering, visualization, and clustering to segment customers based on their spending habits and demographics.


📁 Dataset

The dataset used is from a marketing campaign containing the following details:
- Customer demographics (age, education, marital status, income)
- Product purchase data (wine, meat, fruits, etc.)
- Campaign responses and customer engagement
- Number of children/teens at home

Source: [Kaggle - customer personality dataset](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)

🛠 Tools & Libraries

- Python
- Pandas, NumPy
- Seaborn, Matplotlib, Plotly
- Scikit-learn
- Jupyter Notebook

 Key Steps Performed

1. Data Cleaning
   - Removed missing values
   - Renamed inconsistent column names
   - Converted `Dt_Customer` to datetime format

2. Feature Engineering
   - Combined children at home (`Kid_home` + `Teen_home`) → `Kids`
   - Combined product spending into `Expenses`
   - Summed up total campaign responses → `Total_Accepted_Cmp`
   - Calculated `Age` and `Num_Total_Purchases`

3. Exploratory Data Analysis
   - Plotted histograms for purchase behavior across education levels
   - Created correlation heatmaps
   - Analyzed income vs. expenses and customer segmentation

4. Customer Segmentation
   - Scaled relevant features
   - Applied KMeans clustering to identify customer groups
   - Visualized clusters to interpret customer types

 🎯 Insights

- High-income customers tend to spend more on wine and gold products.
- Married graduates in the 35–50 age group are more engaged in campaigns.
- Clusters revealed 3 major customer types based on income, spending, and engagement.
- Campaign response rate was higher among customers with fewer children at home.

📊 Visualizations

- Correlation heatmaps
- Cluster distribution plots
- Spending histograms per education level
- Pie charts for marital status and education breakdown

Conclusion

The project successfully demonstrates how marketing teams can use data-driven insights to:
- Personalize campaigns for different customer segments
- Focus on high-value customers
- Improve product targeting and promotional effectiveness
