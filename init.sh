#!/bin/sh
cat >> /root/.bashrc<< EOF
alias getmodel="wget --content-disposition -P /workspace/stable-diffusion-webui/models/Stable-diffusion"
alias getlora="wget --content-disposition -P /workspace/stable-diffusion-webui/models/Lora"
alias getembedding="wget --content-disposition -P /workspace/stable-diffusion-webui/embeddings"
EOF

source /root/.bashrc;

# Download embeddings
echo "Download embeddings";

getembedding https://civitai.com/api/download/models/9208 # easynegative
getembedding https://civitai.com/api/download/models/94057 # FastNegativeV2
getembedding https://civitai.com/api/download/models/97691 # fcNeg
getembedding https://civitai.com/api/download/models/86566 # fcPortrait
getembedding https://civitai.com/api/download/models/77169 # BadDream 1.0
getembedding https://civitai.com/api/download/models/77173 # UnrealisticDream 1.0

# Download models
echo "Download models";

getmodel https://civitai.com/api/download/models/109123 # DreamShaper 7
getmodel https://civitai.com/api/download/models/110021 # DreamShaper 7 Inpainting

getmodel https://civitai.com/api/download/models/108576 # AbsoluteReality 1.6
getmodel https://civitai.com/api/download/models/109325 # AbsoluteReality 1.6 Inpainting

# Download extensions
echo "Downloading extensions";

cd /workspace/stable-diffusion-webui/extensions;

## Dynamic Prompting
git clone --depth=1 https://github.com/adieyal/sd-dynamic-prompts.git;

### Wildcards
git clone --depth=1 https://github.com/mattjaybe/sd-wildcards.git;
mv sd-wildcards/wildcards sd-dynamic-prompts;
rm -rf sd-wildcards;

## Image Browser
git clone --depth=1 https://github.com/yfszzx/stable-diffusion-webui-images-browser.git;

## Aesthetic Scorer
git clone --depth=1 https://github.com/tsngo/stable-diffusion-webui-aesthetic-image-scorer.git;

## Booru Tag Autocomplete
git clone --depth=1 https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git;

## SD Ultimate Upscaler
git clone --depth=1 https://github.com/Coyote-A/ultimate-upscale-for-automatic1111.git;

## Model Downloader
git clone --depth=1 https://github.com/Iyashinouta/sd-model-downloader.git;

## Config Presets
git clone --depth=1 https://github.com/Zyin055/Config-Presets.git;
