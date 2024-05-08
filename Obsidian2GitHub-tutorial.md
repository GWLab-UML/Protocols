adapted from [The Easiest Way to Setup Obsidian Git (to backup notes)](https://forum.obsidian.md/t/the-easiest-way-to-setup-obsidian-git-to-backup-notes/51429)

### in GitHub 
1. Create repository in GitHub
	1. GitHub profile > Repositories > New > Create repository
		name repo, click either public or private
2. Create personal access token from GitHub
	1. GitHub profile > Settings > Developer Settings > Personal access tokens > Generate new token
		- name token, set no expiration, and click repo scope
	- **make sure to save token** - won't be able to access again

### in Obsidian Vault
1. Create new vault
	- creating a new vault sets up a new folder on your computer - we'll then clone the GitHub repo to this folder 
		- in other words, we're directing GitHub and Obsidian to the folder so that they can communicate with each other
2. In command line/terminal - navigate to your obsidian vault folder 
	- ``cd`` and ``ls`` to change directory and list everything in current directory to find your vault
3. Once the vault folder, copy the code below and hitting enter after each line to run 
	1. this code should be displayed in your GitHub repo for steps to create new repo
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

#### Now you have a git repo connected to your Obsidian vault!


### setting up automatic backups for your Obsidian vault using Obsidian Git
[Obsidian Git Documentation](https://publish.obsidian.md/git-doc/Start+here)
1. In your Obsidian vault - install Obsidian Git 
	1. Settings > Community plugins > Browse > Git > Install > Enable
2. Navigate to Git Backup Settings
	1. Settings > Git 
3. Here, you have a lot of options to customize the way Git sends versions of your Obsidian to your repo - I've kept everything in default settings, except for the options below:
	1. Vault Backup Interval (minutes) = 120
		1. this means that my changes will commit and push to my repo every X minutes
	2. Auto pull interval (minutes) = 720
		1. this means that it will pull changes from my repo every X minutes
	(you still have the option to manually stage, commit, and push files at any time)

now all the changes you make in your Obsidian vault should be reflected in your GitHub automatically!