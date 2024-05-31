                                                                                                                              
################################# ~~ USER DEFINED ~~ #######################################     

## Play beep sound.
alias beep="tput bel"

## Start chromium-based browser with CORS disabled (i.e. ```google-chrome $NOCORS```).
export NOCORS="--args --profile-directory=Default --disable-web-security"

## Function that executes command until it succeeds.
function waitfor {
  until "$@"; do
    echo "Command failed, retrying in 3 seconds..."
    sleep 3
  done
}

############################### ~~ END USER DEFINED ~~ #####################################
