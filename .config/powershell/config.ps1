# Import all the plugins that I use for powershell
Import-Module -Name PSReadLine

# Turn on history autocompletetion
Set-PSReadLineOption -PredictionSource History

# Enable zoxide (alternative to cd and autojump) support
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

# Aliases are like abbreviations of bigger commands

function zz {
    z -
}

Remove-Item 'Alias:\where' -Force

Remove-Item 'Alias:\ls' -Force
Set-Alias ls lsd
function ll {
    lsd -la $args       
}

Remove-Item 'Alias:\rm' -Force

Remove-Item 'Alias:\md' -Force

# function touch {
# 	echo "" > $args
# }

function gs {
	git status	
}
function ga {
	git add $args
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
	git --git-dir=$HOME/.git --work-tree=$HOME $args
}

function dts {
	git --git-dir=$HOME/.git --work-tree=$HOME status $args
}

function dta {
	git --git-dir=$HOME/.git --work-tree=$HOME add $args
}

function dtc {
	param (
		$CommitMessage
	)

	git --git-dir=$HOME/.git --work-tree=$HOME commit -m $CommitMessage
}

function dtp {
	param (
		$Branch
	)
	git --git-dir=$HOME/.git --work-tree=$HOME push -u origin $Branch
}

# Configure my prompt
oh-my-posh --init --shell pwsh --config C:\\Users\\strange.ritchiel\\AppData\\Local\\Programs\\oh-my-posh\\themes\\powerline.omp.json | Invoke-Expression
