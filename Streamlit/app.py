import streamlit as st
import pandas as pd
import numpy as np

# Title 
st.title("Hello Streamlit Web App..!")

# Input Text
st.write("Enter Your Name")

# create simple DataFrame
df = pd.DataFrame({
     'first column': [1, 2, 3, 4],
    'second column': [10, 20, 30, 40]
})

# Display The DataFrame
st.write("Here Your DataFrame")
st.write(df)

# create line
chart_data = pd.DataFrame(
     np.random.randn(20,3),columns=['a','b','c']
)
st.line_chart(chart_data)