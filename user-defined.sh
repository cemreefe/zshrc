########### GITHUB SYNC DO NOT DELETE ###########

## Sync ```user-defined.sh``` with github.
function zupdate {
    local current_dir=$(pwd)
    cd ~/.zshrc-git
    git pull origin main
    source user-defined.sh
    cd "$current_dir"
}

############ USER DEFINED PLAYGROUND ###########

## Play beep sound.
alias beep="tput bel"

## Python shortcut
alias p=python

## Start chromium-based browser with CORS disabled (i.e. ```google-chrome $NOCORS```).
export NOCORS="--args --profile-directory=Default --disable-web-security"

## Function that executes command until it succeeds.
function wfor {
  until "$@"; do
    echo "Command failed, retrying in 3 seconds..."
    sleep 3
  done
}

## Add currently staged files to last local commit.
alias gitup="git commit --amend --no-edit"

## Pull latest on target branch and rebase current branch on target branch.
function pullrebase() {
    local initial_branch=$(git symbolic-ref --short HEAD)
    local target_branch=$1

    git checkout $target_branch && git pull && git checkout $initial_branch && git rebase origin/$target_branch
}

## cd to dir (or home) and list contents.
c() {
  if [[ $# -eq 0 ]]; then
    cd && ls
  else
    cd -- "$@" && ls
  fi
}

## opencode with lean config (no project config).
oclean() {
  XDG_CONFIG_HOME="$HOME/.config/opencode-lean" \
  OPENCODE_DISABLE_PROJECT_CONFIG=1 \
  opencode "$@"
}
