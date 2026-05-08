Hello! In this tutorial, we are going to go over how to create a Lab Notebook to be edited in Obsidian locally, and backed up over GitHub remotely.

0. [Download Git for Windows.](https://git-scm.com/downloads) This must be installed for this to work.
1. Create a brand new repository on GitHub, in this case we can name it LabNotebook.
	- When creating this new repo, select the 'create README.md' option.
2. [Create a personal access token on GitHub](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic)
	- ENSURE THIS IS SAVED!!! YOU ONLY GET TO SEE IT ONCE!
	- Make sure that the 'repo' checkbox is ticked, as this is required for our token to work for our purposes.
3. Ensure the Obsidian Git plugin is enabled in Obsidian.
	- If you are not familiar with Community Plugins, [here is a brief introduction to turn them on.](https://help.obsidian.md/community-plugins) These settings are independent for each vault.
	- Once Community Plugins are enabled, download AND enable the Git plugin. This is the plugin that allows our Obsidian client to push and pull (or in other words, sync) from GitHub.![](https://i.imgur.com/oQvum9l.png)

4. Create a new folder within your Obsidian Vault for your Github repository. In our case, we can just name the folder 'Notebook.'
5. Hit Ctrl+P to open an interface within Obsidian that allows you to execute commands, and type 'Git: Clone an existing remote repo'.
6. It will then ask for your personal access token in a specific format:
	
	`https://PERSONAL_ACCESS_TOKEN@github.com/USERNAME/REPO.git`
	
	- What we can do here is copy the above string, then replace PERSONAL_ACCESS_TOKEN with yours. For the second half, simply navigate to your repository in GitHub via your browser, and copy the last two / worth of info, it should look exactly like the format above, /USERNAME/REPO.git. This is what actually links your Obsidian and GitHub.
	- When creating and linking these two, ensure your Obsidian Vault is EMPTY. You can always import previous documents after linking GitHub and Obsidian by moving the files from the previous vault folder into the new one, though and plugins will unfortunately have to be redownloaded and reconfigured.

7. Then, it will ask for the local Obsidian folder to store them in, and this is what we created within Step 4, so it should be titled 'Notebook'.
8. Restart Obsidian
	- You should be good to go! Git: Commit-and-sync will allow you to commit and sync any changes you have made from the Obsidian end and push them to GitHub!
		- There is also an icon for the same function in the top right of the program.