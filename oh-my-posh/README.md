# How to set up oh-my-posh

These instructions assume you are using Windows. More information can be found [in the official docs](https://ohmyposh.dev/docs/installation/windows).

## Install oh-my-posh and default themes

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

## Install and configure a nerd font

Follow [these steps](https://ohmyposh.dev/docs/installation/fonts) to configure your terminal and your VSCode integrated terminal. I recommend using `FiraCode NFM`.

## Configure oh-my-posh theme

Try running this command:

```powershell
notepad $PROFILE
```

If it doesn't work, that means you need to create a PS profile. To do so, run:

```powershell
New-Item -Path $PROFILE -Type File -Force
```

And then run the first command again to edit the profile.

Inside the profile, you will paste a command that will be executed every time you create a new shell. The command looks like this:

```powershell
oh-my-posh init pwsh --config <THEME_FILE.omp.json> | Invoke-Expression
```

Notice that we need to provide a theme file, which has a .omp.json format. There are a lot of default themes, but I recommend using mine, which can be found in `./oh-my-posh-themes/oliver.omp.json`. To point to this file, you can either use the github link:

```powershell
oh-my-posh init pwsh --config "https://raw.githubusercontent.com/vsmoliveira/configs/main/oh-my-posh/custom-themes/oliver.omp.json" | Invoke-Expression
```

Which is not recommended, as this will need an internet connection and the path to the file may change.

The recommended alternative is to download the theme file and point to it. Default themes are stored in "$env:POSH_THEMES_PATH/", so the best way is to download the file and save it there. Once saved, the command will be:

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/oliver.omp.json" | Invoke-Expression
```

Now, you can save and close the file.

Further info can be found [here](https://ohmyposh.dev/docs/installation/customize#config-syntax).

## Wrap up

Now, the next time you open a powershell, it should look like this:

![powershell img](./powershell.png)
