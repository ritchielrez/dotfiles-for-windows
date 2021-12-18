clear

# Import all the plugins that I use for powershell
Import-Module oh-my-posh
Import-Module posh-git
Import-Module -Name PSReadLine
Import-Module -Name Terminal-Icons

# Turn on history autocompletetion
Set-PSReadLineOption -PredictionSource History

# Aliases are quick way to run bigger commands
Set-Alias ll ls

Remove-Item 'Alias:\rm' -Force
function rm {
	Remove-Item -r -v $args
}

function touch {
	echo "" > $args
}

function gs {
	git status	
}
function ga {
	git add .
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

# Configure my prompt
oh-my-posh --init --shell pwsh --config ~/Documents\PowerShell\Modules\oh-my-posh/themes/zash.omp.json | Invoke-Expression
