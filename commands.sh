# Download the miniconda installer
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh
# Run the interactive installer (all settings can be left by default + at the end, opt for automatic conda init)
sh miniconda.sh 
# Reload the shell so conda is initialized (make sure that there is a "(base)" thing at the start of the line)
source .bashrc
# Install torch and stuff
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
# Install all this shit
pip install langchain
pip install llmlingua
pip install ipywidgets
pip install accelerate
pip install optimum auto-gptq
pip install llama_index
pip install pypdf
export PATH="/usr/local/cuda/bin:$PATH"
CMAKE_ARGS="-DLLAMA_CUBLAS=on" FORCE_CMAKE=1 pip install --no-cache-dir llama-cpp-python
pip install flask
pip install tqdm
pip install transformers
pip install bitsandbytes
# I install this for monitoring
sudo apt install htop
# Check if the GPU is seen by the driver, just in case. It should show the V100 GPU
nvidia-smi