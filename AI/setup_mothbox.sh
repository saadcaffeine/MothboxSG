#!/bin/bash

# Mothbox AI UI Installer
# For: Digital Naturalism Laboratories Mothbox AI processing

echo "--- Starting Mothbox AI Environment Setup ---"

# 1. Create a virtual environment
python3 -m venv mothbox_env
source mothbox_env/bin/activate

# 2. Upgrade pip
pip install --upgrade pip

# 3. Install Core AI and UI dependencies
echo "--- Installing Heavy Dependencies (this may take a while) ---"
pip install ultralytics fiftyone gradio pybioclip torchvision torchaudio

# 4. Install supporting libraries
pip install pandas pillow matplotlib opencv-python hdbscan piexif

# 5. Initialize FiftyOne (Database for managing insect images)
echo "--- Initializing Database ---"
python3 -c "import fiftyone as fo; print('FiftyOne v' + fo.__version__ + ' ready')"

echo "--- Setup Complete! ---"
echo "To start the UI, run: cd Mothbot; python3 Mothbot_UI.py"
