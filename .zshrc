export ZSH="/Users/ramon/.oh-my-zsh"
ZSH_THEME="awesomepanda"
export UPDATE_ZSH_DAYS=13

HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.5

export PATH="$PATH:/Users/ramon/.modular/bin"
eval "$(magic completion --shell zsh)"
