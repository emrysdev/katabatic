## 🟡 Connect-4 Dataset Training

This branch includes the training workflow for the Connect-4 dataset.

### Files:
- `train_connect4.py`: Loads YAML and CSV, performs train/test split, simulates TabDDPM training.
- `connect-4.csv`: Preprocessed dataset.
- `connect-4.yaml`: Feature metadata.
- `connect4_training_output.txt`: Captured output from training run.

### Example Output:

```
Loaded configuration:
{'name': 'connect-4', 'num_features': 43, 'num_instances': 67557, ...}

Loaded dataset:
A0 A1 A2 ... A41 class
0 x o b ... o loss
...

Training size: 54045, Test size: 13512

[INFO] Training TabDDPM model (this is a placeholder)...
[INFO] Training complete.
```

```
git add README.md
git commit -m "Add README section for Connect-4 training"
git push
```
