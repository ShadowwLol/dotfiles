#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="$(tput setaf 1)\w\n\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\]\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$\[$(tput sgr0)\] "

export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"

PATH="$HOME/Scripts:$PATH"
export PATH
cd ~/
export LC_ALL=C

alias vk='VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_pro_icd32.json:/usr/share/vulkan/icd.d/amd_pro_icd64.json'

# set vulkan drivers
DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1=1
#VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
#VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_icd32.json:/usr/share/vulkan/icd.d/amd_icd64.json
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_pro_icd32.json:/usr/share/vulkan/icd.d/amd_pro_icd64.json
