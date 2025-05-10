@echo off
echo ===============================================
echo TabDDPM Environment Setup (Windows, CPU, Py3.9)
echo ===============================================

echo [1/5] Creating Conda environment 'tddpm' with Python 3.9.7...
conda create -n tddpm python=3.9.7 -y

echo [2/5] Activating 'tddpm' environment...
call conda activate tddpm

echo [3/5] Checking Python version...
FOR /F "tokens=2 delims= " %%v IN ('python --version') DO SET PYVERSION=%%v
echo Detected Python version: %PYVERSION%

echo [3.1] Verifying compatibility...
echo %PYVERSION% | findstr "3.9" > nul
IF ERRORLEVEL 1 (
    echo ❌ Python version is not 3.9.x. Please recreate the environment using Python 3.9.
    goto :EOF
)

echo [4/5] Installing PyTorch 1.10.1 (CPU) for Python 3.9...
pip install https://download.pytorch.org/whl/cpu/torch-1.10.1%2Bcpu-cp39-cp39-win_amd64.whl
pip install https://download.pytorch.org/whl/cpu/torchvision-0.11.2%2Bcpu-cp39-cp39-win_amd64.whl
pip install https://download.pytorch.org/whl/cpu/torchaudio-0.10.1%2Bcpu-cp39-cp39-win_amd64.whl

echo [5/5] Installing TabDDPM dependencies...
pip install ^
  catboost==1.2.7 ^
  category-encoders==2.8.1 ^
  dython==0.7.9 ^
  icecream==2.1.4 ^
  libzero==0.0.8 ^
  numpy==1.25.2 ^
  optuna==2.10.1 ^
  pandas>=2.0.0 ^
  pyarrow==19.0.1 ^
  rtdl==0.0.9 ^
  scikit-learn==1.6.1 ^
  scipy==1.10.1 ^
  skorch==0.11.0 ^
  tomli-w==0.4.0 ^
  tomli==1.2.2 ^
  tqdm==4.62.3 ^
  imbalanced-learn==0.7.0 ^
  rdt==1.3.0

echo.
echo ✅ Environment setup complete.
echo 🔁 To activate it later, run:
echo     conda activate tddpm
echo 💡 To start training, go to:
echo     cd C:\Deakin\Project\katabatic\tabddpm\TabDDPM\tab-ddpm
