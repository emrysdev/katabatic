# 🚗 Car Dataset: TabDDPM Training
This branch contains a training script and data files for the Car Evaluation dataset.

### 🔧 Files:
- `train_car_dataset.py`: Loads `car_1.yaml`, performs train/test split, and simulates TabDDPM training.
- `car_1.csv`: Cleaned dataset
- `car_1.yaml`: Metadata
- `car_dataset_output.txt`: Console output from running:

```bash
python train.py --dataset car_1.csv --train True

### Output
Loaded configuration:
{'features': ['buying', 'maint', 'doors', 'persons', 'lug_boot', 'safety', 'class'], 'name': 'car_1', 'num_features': 7, 'num_instances': 1728, 'path': 'C:\\Deakin\\Project\\katabatic\\tabddpm\\TabDDPM\\tab-ddpm\\tab_ddpm\\arff\\output_files\\car_1.csv'}

Loaded dataset:
     buying     maint doors persons  lug_boot   safety     class
0  b'vhigh'  b'vhigh'  b'2'    b'2'  b'small'   b'low'  b'unacc'
1  b'vhigh'  b'vhigh'  b'2'    b'2'  b'small'   b'med'  b'unacc'
2  b'vhigh'  b'vhigh'  b'2'    b'2'  b'small'  b'high'  b'unacc'
3  b'vhigh'  b'vhigh'  b'2'    b'2'    b'med'   b'low'  b'unacc'
4  b'vhigh'  b'vhigh'  b'2'    b'2'    b'med'   b'med'  b'unacc'

Training size: 1382, Test size: 346

[INFO] Training TabDDPM model (this is a placeholder)...
[INFO] Training complete.
