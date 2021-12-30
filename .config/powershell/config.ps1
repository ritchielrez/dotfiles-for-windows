# Import all the plugins that I use for powershell
Import-Module oh-my-posh
# Import-Module posh-git
Import-Module -Name PSReadLine
# Import-Module -Name Terminal-Icons

# Turn on history autocompletetion
Set-PSReadLineOption -PredictionSource History

# Aliases are quick way to run bigger commands
Remove-Item 'Alias:\where' -Force

Remove-Item 'Alias:\ls' -Force
Set-Alias ls lsd
function ll {
    lsd -la $args       
}

Remove-Item 'Alias:\rm' -Force
Set-Alias rm "C:\Program Files\Git\usr\bin\rm.exe"

Remove-Item 'Alias:\md' -Force
Set-Alias md "C:\Program Files\Git\usr\bin\mkdir.exe"
Set-Alias mkdir "C:\Program Files\Git\usr\bin\mkdir.exe"

# function touch {
# 	echo "" > $args
# }

function gs {
	git status	
}
function ga {
	git add .
}

Remove-Item 'Alias:\gc' -Force
function gc {
	param (
		$CommitMessage
	)

    git commit -m $CommitMessage
}
function gac {

	param (
		$CommitMessage
	)

	git add .
	git commit -m $CommitMessage
}

# By default powershell has a alias called gp, I don't need it.
# So instead what I do is remove the default alias, then make one of my own.

Remove-Item 'Alias:\gp' -Force

function gp {

	param (
		$Branch
	)

	git push -u origin $Branch
}

function gacp {
	param (
		$CommitMessage,
		$Branch
	)

	git add .
	git commit -m $CommitMessage
	git push -u origin $Branch
}

function dotfiles {
	git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args
}

function dts {
	git --git-dir=$HOME/.dotfiles --work-tree=$HOME status $args
}

function dta {
	git --git-dir=$HOME/.dotfiles --work-tree=$HOME add $args
}

function dtc {
	param (
		$CommitMessage
	)

	git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit -m $CommitMessage
}

function dtp {
	param (
		$Branch
	)
	git --git-dir=$HOME/.dotfiles --work-tree=$HOME push -u origin $Branch
}

# Configure my prompt
oh-my-posh --init --shell pwsh --config ~/Documents\PowerShell\Modules\oh-my-posh/themes/zash1.omp.json | Invoke-Expression
