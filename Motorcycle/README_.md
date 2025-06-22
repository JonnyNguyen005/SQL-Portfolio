# Analyzing Students’ Mental Health in SQL

Can attending a university in a foreign country impact one’s mental well-being? In 2018, a Japanese university with a diverse student body conducted a comprehensive survey. An ethically and regulatory approved study based on this research was published the subsequent year.

The findings revealed that international students are more vulnerable to mental health challenges compared to the general population. Two key predictive factors for depressive symptoms were identified: a student’s sense of social belonging within a group, and the stress associated with adapting to a new cultural environment.

To further explore this issue, student data was analyzed using PostgreSQL. The objective was to determine whether similar conclusions could be drawn about international students and to examine whether the duration of their stay had any influence.

Below, you will find a description of the columns in the dataset.

![field name and description](https://github.com/user-attachments/assets/47ccfcf3-d0e4-463a-a7b7-274e83288d76)

## Explore and Understand the data:

In the initial phase of the project, the dataset is thoroughly examined to gain a clear understanding. This includes counting the total number of records and grouping them to differentiate between international and domestic students in order to analyze their respective numbers.

![raw data set](https://github.com/user-attachments/assets/8a898ece-5468-4610-961d-b4fbee326d7f)

![determine the total number of records](https://github.com/user-attachments/assets/143a5d51-6e67-48e8-9c54-c3d47a3d8694)

## The impact of length of stay

A new query is created to assess how the length of stay influences the average diagnostic scores of international students. Results should be rounded to two decimal places and displayed in descending order of length of stay. Use the following aliases in the specified order: average_phq, average_scs, and average_as.
To structure the data, group the results according to the relevant variable, and implement an ORDER BY clause with the appropriate keyword for descending sorting.

![final_query](https://github.com/user-attachments/assets/8b15bf90-d263-4e32-99c9-baff23d18f7e)

## Interpretation of the Results

Based on the query results, it can be inferred that international students who stay longer tend to have higher average depression scores and lower social connectedness scores. However, they experience lower levels of acculturative stress, which is more commonly seen in students with shorter stays. This suggests that newer students may be more prone to culture shock and feelings of homesickness.

Recommendations to Support the Well-Being of International Students:

**Accessible Mental Healthcare:** 
The Japanese government should consider establishing affordable and easily accessible mental health services tailored to international students.

**Promoting Social Connections:** 
Initiatives such as buddy systems should be introduced to encourage interactions between international and domestic students, as well as among inter**national students themselves.

**Student Organizations:** 
Creating student organizations specifically for international students would provide a supportive space where they can feel a sense of belonging and connect with peers who share similar experiences.

**Local Family Match Programs:** 
Programs that match international students with local families can significantly ease the cultural and environmental adjustment process.

By implementing these measures, institutions can more effectively support international students in adapting to their new surroundings and help mitigate challenges that come with studying abroad.


