function tf_prompt_info() {
  # dont show 'default' workspace in home dir
  [[ "$PWD" == ~ ]] && return
  # check if in terraform dir
  if [[ -d .terraform ]]; then
    version=$(terraform version | awk 'NR==1' | sed "s/Terraform /TF/") || return
    echo "${version}"
  fi
}

alias tf='terraform'
