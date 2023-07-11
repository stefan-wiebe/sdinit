#!/bin/sh
alias getmodel="wget --content-disposition -P /workspace/stable-diffusion-webui/models/Stable-diffusion"
alias getlora="wget --content-disposition -P /workspace/stable-diffusion-webui/models/Lora"
alias getembedding="wget --content-disposition -P /workspace/stable-diffusion-webui/embeddings"

# Download embeddings
getembedding https://civitai.com/api/download/models/9208 # easynegative
getembedding https://civitai.com/api/download/models/94057 # FastNegativeV2
getembedding https://civitai.com/api/download/models/97691 # fcNeg
getembedding https://civitai.com/api/download/models/86566 # fcPortrait
getembedding https://civitai.com/api/download/models/77169 # BadDream 1.0
getembedding https://civitai.com/api/download/models/77173 # UnrealisticDream 1.0

# Download models
getmodel https://civitai.com/api/download/models/109123 # DreamShaper 7
getmodel https://civitai.com/api/download/models/110021 # DreamShaper 7 Inpainting

getmodel https://civitai.com/api/download/models/108576 # AbsoluteReality 1.6
getmodel https://civitai.com/api/download/models/109325 # AbsoluteReality 1.6 Inpainting


