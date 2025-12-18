
# IRIS FLOWER PREDICTION APP USING STREAMLIT

import streamlit as st
import pandas as pd
from sklearn.datasets import load_iris
from sklearn.ensemble import RandomForestClassifier


# Page configuration (UI setup)
st.set_page_config(
    page_title="Iris Flower Predictor",
    page_icon="🌸",
    layout="centered"
)

st.title("🌸 Iris Flower Species Prediction")
st.write(
    "This app predicts the **Iris flower species** using a "
    "Random Forest Machine Learning model."
)


# Load and cache dataset
@st.cache_data
def load_data():
    """
    Loads the Iris dataset and converts it into a pandas DataFrame.
    The data is cached so it does not reload on every interaction.
    """
    iris = load_iris()
    df = pd.DataFrame(iris.data, columns=iris.feature_names)
    df["species"] = iris.target
    return df, iris.target_names

df, target_names = load_data()

# Train the ML model
model = RandomForestClassifier(random_state=42)
model.fit(df.iloc[:, :-1], df["species"])


# Sidebar for user inputs
st.sidebar.header("🔧 Input Flower Measurements")

sepal_length = st.sidebar.slider(
    "Sepal Length (cm)",
    float(df["sepal length (cm)"].min()),
    float(df["sepal length (cm)"].max()),
    step=0.1
)

sepal_width = st.sidebar.slider(
    "Sepal Width (cm)",
    float(df["sepal width (cm)"].min()),
    float(df["sepal width (cm)"].max()),
    step=0.1
)

petal_length = st.sidebar.slider(
    "Petal Length (cm)",
    float(df["petal length (cm)"].min()),
    float(df["petal length (cm)"].max()),
    step=0.1
)

petal_width = st.sidebar.slider(
    "Petal Width (cm)",
    float(df["petal width (cm)"].min()),
    float(df["petal width (cm)"].max()),
    step=0.1
)

# Prepare input for prediction
input_data = pd.DataFrame(
    [[sepal_length, sepal_width, petal_length, petal_width]],
    columns=df.columns[:-1]
)


# Display user input
st.subheader("📊 Selected Input Values")
st.dataframe(input_data, use_container_width=True)

# Make prediction
prediction = model.predict(input_data)
predicted_species = target_names[prediction[0]]

# Display prediction result
st.subheader("✅ Prediction Result")
st.success(f"The predicted species is **{predicted_species}**")

# Footer
st.markdown("---")
st.caption("Built with Streamlit and Scikit-learn 🚀")
