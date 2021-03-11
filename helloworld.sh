#!/usr/bin/env bash
task=${1?Error: no name given}
if [[ "$task" == "rg" ]]; then
  RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
  INITIAL_QUERY=""
  FZF_DEFAULT_COMMAND="$RG_PREFIX '$INITIAL_QUERY'" 
  fzf --bind "change:reload:$RG_PREFIX {q} || true" --ansi --phony --query "$INITIAL_QUERY" 
elif [[ "$task" == "preview" ]]; then
  nvim $(fzf -m --preview 'bat --style=numbers --color=always --line-range :500 {}')
else echo "not a valid option"
fi
