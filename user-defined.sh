                                                                                                                              
## Play beep sound.
alias beep="tput bel"

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

## Update ```user-defined.sh```
function zupdate {
    local current_dir=$(pwd)
    cd ~/.zshrc-git
    git pull origin main
    source user-defined.sh
    cd "$current_dir"
}

## Pull latest on target branch and rebase current branch on target branch.
function pullrebase() {
    local initial_branch=$(git symbolic-ref --short HEAD)
    local target_branch=$1

    git checkout $target_branch && git pull && git checkout $initial_branch && git rebase origin/$target_branch
}
