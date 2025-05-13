## ♟️ Chess Dataset Training Script

This branch demonstrates how TabDDPM is applied to the Chess dataset.

### Files:
- `train_chess.py`: Main training script
- `chess.csv`: Cleaned dataset
- `chess.yaml`: Metadata
- `chess_training_output.txt`: Captured output from the training run

### Example Output

Run with:

```bash
python train_chess.py --dataset chess.csv --train True
```

```Loaded configuration:
{'name': 'chess', 'num_features': 40, 'num_instances': 551, ...}

Loaded dataset:
   A0    A1    A2  ...  A38  class
0  x63  x63  x63  ...  x63   win

Training size: 440, Test size: 111

[INFO] Training TabDDPM model (this is a placeholder)...
[INFO] Training complete.```
