# 🚗 Car Dataset: TabDDPM Training
This branch contains a training script and data files for the Car Evaluation dataset.

### 🔧 Files:
- `train_car_dataset.py`: Loads `car_1.yaml`, performs train/test split, and simulates TabDDPM training.
- `car_1.csv`: Cleaned dataset
- `car_1.yaml`: Metadata
- `car_dataset_output.txt`: Console output from running:

```bash
python train.py --dataset car_1.csv --train True
