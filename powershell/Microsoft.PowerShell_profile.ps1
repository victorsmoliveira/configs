$PROFILE_PATH = $(Split-Path -Path $PROFILE)

## k8s
. "$PROFILE_PATH\k8s_aliases.ps1"

## oh-my-posh
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

$THEME_NAME = "oliver-k8s"
$CUSTOM_THEME = $true # $false

if ($CUSTOM_THEME) {
    $OH_MY_POSH_PATH = "$PROFILE_PATH\oh-my-posh\custom-themes"
} else {
    $OH_MY_POSH_PATH = "$env:POSH_THEMES_PATH"
}

oh-my-posh init pwsh --config "$OH_MY_POSH_PATH\$THEME_NAME.omp.json" | Invoke-Expression
