# Benchmark Quok Tutorial
1. Register your account at:  
https://quok.it/gensyn  
Then check your email to receive your API Key.

2. Open a new terminal and run this command:

```bash
sudo install -d -m 0755 /etc/apt/keyrings && \
curl -fsSL https://repo.quok.it/quok.asc | gpg --dearmor | sudo tee /etc/apt/keyrings/quok.gpg >/dev/null && \
echo 'deb [signed-by=/etc/apt/keyrings/quok.gpg] https://repo.quok.it cross main' | sudo tee /etc/apt/sources.list.d/quok-stable.list >/dev/null && \
sudo chmod 0644 /etc/apt/keyrings/quok.gpg /etc/apt/sources.list.d/quok-stable.list && \
sudo apt-get update
```
3. Install Quok
   
```bash
sudo apt install quok
```
4. Installazion
   
```bash
quok init
```
Enter your API Key from email.

5. Run GPU Audit
   
```bash
quok auditme
```

Wait until the audit is completed. You can check the progress at https://app.quok.it/dashboard

If you encounter the message “Benchmark failed: CUDA not detected”, you need to install CUDA first

CUDA Toolkit Installation Instructions
First, find your CUDA version using nvidia-smi, then install the latest compatible version:

1. Add/update NVIDIA repository:
```bash
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
```

2. Install CUDA Toolkit (adjust version as needed):
```bash
sudo apt-get install cuda-toolkit-12-9
```
3. Update your environment variables (edit ~/.bashrc or ~/.zshrc):
```bash
export CUDA_HOME=/usr/local/cuda-12.9
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
Copy
```
4. Apply changes:
```bash
source ~/.bashrc
```
5. Run GPU Audit
   
```bash
quok auditme
```

Wait until the audit is completed. You can check the progress at https://app.quok.it/dashboard








