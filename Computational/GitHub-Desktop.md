

# GitHub Desktop Tutorial

## clone existing repo to your local machine 
In the top left corner of the GitHub desktop app:
1. Current Repository > Add > Clone Repository... 
2. in the pop-up, stay in the GitHub.com tab - you should already be logged into your GitHub account so the repos that you already have access to should be listed - select the repo you want to clone 
3. choose the local path for your repo - this will create a folder to put all the repo files, so you'll want to know where that is 
4. click clone - now double check that a folder exists in the path you specified in step 3, and that the folder contains the files from the repo

## pushing local changes to remote GitHub repo via GH Desktop
***if you've made changes to an existing file:***
1. FETCH FIRST!
2. GitHub desktop will automatically recognize that you've made changes, and will have the file listed under 'Changes' in the left column
3. Create a new branch 
	1. Make sure current branch is main or not an old out of date branch
	2. Current Branch > New Branch > name the branch > Create Branch
	3. Initials and date
4. Commit changes to new branch
	1. in left column, there's 'subject line' type box where you can enter the commit message 
		1. ex: add sample sheet
		2. can also add more in the description box if needed
	2. click 'Commit to new branch
5. Create pull request - button should pop up on main box of GH desktop to create a pull request 
	1. this will take you to the GitHub url and just makes you confirm again to submit a pull request
6. Someone else will need to review and approve your pull request before it merges to the main branch and is accessible by everyone else


***if you've made changes to an existing file:***
basically the same steps as above - just drag and drop your file to the desktop app, and follow steps 2-5 from above

## pulling most updated version from remote to local 
maybe someone has made an edit to a file, so now the version you have on your local machine is not the most up to date version

  
you can make sure that your local and remote machine have the same version by clicking 'Fetch Origin' in the top right of GH Desktop

## creating a pull request for a repo you don't have access to 
If there's a public repo (like most of the repos on the GW lab page) that you aren't a necessarily a 'member' of, you can still do pull requests, but it's a little bit different - there's an extra step of forking the repository which essentially just clones the repo and allows you to make changes

1. navigate to the desired repo - in the top right, click *Fork* > Create a new fork > Create fork
2. now, navigate to your GH desktop and following the steps above for 'clone existing repo to your local machine ' to clone the forked repo 
	1. a pop-up should ask how you plan to use this repo - click 'To contribute to the parent project'
3. make whatever changes you need 
4. commit your changes to the main branch of your forked repo using GH desktop
5. push origin - navigate back to the website version
6. there should be a box telling you your branch is 1 commit ahead of the parent repo - click contribute > Open pull request
7. then make a pull request just as you would above!