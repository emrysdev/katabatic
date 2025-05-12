import pandas as pd
import yaml
import os

# Load YAML config
config_path = os.path.join("configs", "adult.yaml")
with open(config_path, "r") as f:
    config = yaml.safe_load(f)

# Print loaded config (for debug)
print("Loaded configuration:")
print(config)

# Load dataset
data_path = os.path.join("datasets", "adult.csv")
df = pd.read_csv(data_path)

print("\nLoaded dataset:")
print(df.head())

# Example: Train-test split
from sklearn.model_selection import train_test_split

train_df, test_df = train_test_split(df, test_size=0.2, random_state=42)
print(f"\nTraining size: {len(train_df)}, Test size: {len(test_df)}")

# Placeholder: simulate model training
print("\n[INFO] Training TabDDPM model (this is a placeholder)...")
# Insert TabDDPM training call here

print("[INFO] Training complete.")
