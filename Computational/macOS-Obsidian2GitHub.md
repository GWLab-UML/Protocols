# Linking Obsidian to GitHub on macOS
>Last updated: *05/14/2026 JM*

adapted from [The Easiest Way to Setup Obsidian Git (to backup notes)](https://forum.obsidian.md/t/the-easiest-way-to-setup-obsidian-git-to-backup-notes/51429)
## via GitHub Desktop (easiest way)
#### in GitHub:
1. Create repository in GitHub
	- GitHub profile > Repositories > New > Create repository
2. In the blue 'Quick Setup' box, click 'Set up in Desktop' - this will open the GitHub Desktop app on your computer
3. Choose the path to locally store your repository
	- **Note**: do NOT store your repository on another remote server (i.e., iCloud or OneDrive), make sure it is stored locally on your computer
4. Click 'Clone'
#### in Obsidian:
1. Pull up the 'main page' popup window (if you're already in a vault, go to File > Open Vault)
2. Click 'Open folder as a vault'
3. Navigate to the path of where you stored the repository - once in the folder, click 'Open'
	- **Note**: only open *one repository per vault* - having nested repositories within one vault makes things really complicated quickly

see below [to set up automatic backups to GitHub]([https://github.com/GWLab-UML/Protocols/blob/main/Computational/Obsidian2GitHub-tutorial.md#To-set-up-automatic-backups-to-GitHub](https://github.com/GWLab-UML/Protocols/blob/main/Computational/macOS-Obsidian2GitHub.md#to-set-up-automatic-backups-to-github))

## via command line 
#### in GitHub 
1. Create repository in GitHub
2. Create personal access token from GitHub
	- GitHub profile > Settings > Developer Settings > Personal access tokens > Generate new token
		- name token, set no expiration, and click repo scope
	- **make sure to save token** - won't be able to access again

#### in Obsidian Vault
1. Create new vault
	- creating a new vault sets up a new folder on your computer - we'll then clone the GitHub repo to this folder 
		- in other words, we're directing GitHub and Obsidian to the folder so that they can communicate with each other
2. In command line/terminal - navigate to your obsidian vault folder 
	- ``cd`` and ``ls`` to change directory and list everything in current directory to find your vault
3. Once the vault folder, copy the code below and hitting enter after each line to run 
	- this code should be displayed in your GitHub repo for steps to create new repo
```
echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://<PERSONAL ACCESS TOKEN>@github.com:<USERNAME>/<REPO>.git
git push -u origin main
```

**essentially what this code is doing is:**
- creating a markdown file in your vault folder called 'README.md'
- initializing the folder as a Git repository
- telling Git to stage the README.md file to be committed 
	- this allows for more control of commit messages, so you can be direct and specific for each file
- commiting the README.md file to the repo branch
- naming the branch 'main'
- connecting your online GitHub repo to your folder
- pushing the README.md (and anything else that you have added ('staged') and commited) to your GitHub Repo
	- you won't see any of your files in your GitHub repo until you do this step - ``git push`` actually puts things on your repo

general order of moving things from your local machine to GitHub via terminal/CL:
- ``git add <file(s)>``
- ``git commit -m "<commit message with active voice about the changes/additions you have made>"``
- ``git push``


## To set up automatic backups to GitHub
[Obsidian Git Documentation](https://publish.obsidian.md/git-doc/Start+here)
1. In your Obsidian vault - install Obsidian Git 
	- Settings > Community plugins > Browse > Git > Install > Enable
	- **Note**: if doing this for the **first time**, you may need to agree to the Apple Software License Agreement by running `sudo xcodebuild -license` in terminal
2. Navigate to Git Backup Settings
	- Settings > Git 
3. Here, you have a lot of options to customize the way Git sends versions of your Obsidian to your repo - I've kept everything in default settings, except for the options below:
	- Vault Backup Interval (minutes) = 120
		- this means that my changes will commit and push to my repo every X minutes
	- Auto pull interval (minutes) = 720
		- this means that it will pull changes from my repo every X minutes
	(you still have the option to manually stage, commit, and push files at any time)

now all the changes you make in your Obsidian vault should be reflected in your GitHub automatically!