@echo off

REM Activate the Anaconda environment
CALL "C:\ProgramData\anaconda3\Scripts\activate.bat" ComfyUI

REM Change directory to the specified path
cd /D "C:\Users\Md-Siam-Mia\AI\ComfyUI"

REM Initialize Intel oneAPI environment variables
CALL "C:\Program Files (x86)\Intel\oneAPI\setvars.bat"

REM Run the Python script with specified arguments
python main.py --use-pytorch-cross-attention --highvram