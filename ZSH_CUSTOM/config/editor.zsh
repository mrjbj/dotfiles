#----------
# Editor  
#----------
export EDITOR=/opt/homebrew/bin/nvim

# these aliases configure direct access w/o having to use the nvims() picker implemented below.
alias nvim-lazy="NVIM_APPNAME=LazyVim \nvim"
alias nvim-kick="NVIM_APPNAME=kickstart \nvim"
alias nvim-chad="NVIM_APPNAME=NvChad \nvim"
alias nvim-astro="NVIM_APPNAME=nvim-astro \nvim"
alias nvim-lvim="NVIM_APPNAME=nvim-lvim \nvim"
alias nvim="NVIM_APPNAME=nvim-astro \nvim"  ## default 

# nvims picker
function nvims() {
  items=("Default" "LazyVim" "LunarVim" "Chad" "AstroVim" "Lvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config -> " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "Default" ]]; then
    config=""
  else 
    config="nvim-${(L)config%Vim}"
  fi
  printf $config
  NVIM_APPNAME=$config \nvim $@
}

bindkey -s ^a "nvims\n" 

