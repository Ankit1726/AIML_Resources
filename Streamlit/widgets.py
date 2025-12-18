import streamlit as st
import pandas as pd

st.title("Input Your Data")

name = st.text_input('Enter Your Name')
age = st.slider("Select Your Age:",0,50,100)

st.write(f"Your Age Is {age}")

options = ["Python", "Java", "C++", "JavaScript"]
choice = st.selectbox("Choose your favorite language:", options)
st.write(f"You selected {choice}.")


if name:
    st.write(f"Hello {name} Good To See Here..!")

data = {
    "Name": ["John", "Jane", "Jake", "Jill"],
    "Age": [28, 24, 35, 40],
    "City": ["New York", "Los Angeles", "Chicago", "Houston"]
}

df = pd.DataFrame(data)
df.to_csv("sample.csv")
st.write(df)

uploaded_file=st.file_uploader("Choose a CSV file",type="csv")

if uploaded_file is not None:
    df=pd.read_csv(uploaded_file)
    st.write(df)
