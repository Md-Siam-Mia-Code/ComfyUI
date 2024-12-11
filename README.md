# ComfyUI Installation Guide

This README provides step-by-step instructions to set up and run ComfyUI with Intel PyTorch extensions and cross-attention.

## Prerequisites
- [Anaconda](https://www.anaconda.com/) installed
- Intel oneAPI toolkit installed (required for `setvars.bat`)
- Git installed

## Installation Steps

1. **Create a Conda environment**
   ```bash
   conda create -n ComfyUI python=3.11
   conda activate ComfyUI
   ```

2. **Install PyTorch and required libraries**
   ```bash
   conda install pytorch torchvision torchaudio -c pytorch
   conda install libuv
   ```

3. **Install Intel PyTorch extensions**
   ```bash
   python -m pip install torch==2.3.1.post0+cxx11.abi torchvision==0.18.1.post0+cxx11.abi torchaudio==2.3.1.post0+cxx11.abi intel-extension-for-pytorch==2.3.110.post0+xpu --extra-index-url https://pytorch-extension.intel.com/release-whl/stable/xpu/us/
   ```

4. **Verify the installation**
   ```bash
   python -c "import torch; import intel_extension_for_pytorch as ipex; print(torch.__version__); print(ipex.__version__); [print(f'[{{i}}]: {{torch.xpu.get_device_properties(i)}}') for i in range(torch.xpu.device_count())];"
   ```

5. **Clone the ComfyUI repository**
   ```bash
   git clone https://github.com/comfyanonymous/ComfyUI.git
   cd ComfyUI
   ```

6. **Install ComfyUI requirements**
   ```bash
   pip install -r requirements.txt
   ```

7. **Set Intel oneAPI environment variables**
   ```bash
   "C:\Program Files (x86)\Intel\oneAPI\setvars.bat"
   ```

8. **Run ComfyUI**
   ```bash
   python main.py --use-pytorch-cross-attention --highvram
   ```

## Notes
- Ensure that all dependencies are correctly installed before running the program.
- Use the `--highvram` flag for systems with limited VRAM.

For further assistance, please refer to the [ComfyUI GitHub repository](https://github.com/comfyanonymous/ComfyUI).