---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 29 - Introduction to GitHub


GitHub is the single largest host for Git repositories.  Git repositories, if you remember, are projects (e.g. folders, directories) that are managed by Git's version control.  You created a Git repository in yesterday's blog post.

Somewhat surprisingly, GitHub has also become a social media platform of sorts for millions of developers.

This last statement might seem a little strange: how does a software platform that host code repositories provide social media type interactions?  Good question.  The answer, "open-source", meaning that code is available to view and improve upon.

The open-source ethos fly in the face of mainstream business norms.  How many scientists do you see openly sharing their findings, industry R&D giving away their trade secrets for free, or financial companies asking the public to help them improve their services?  You don't, but sharing, no-entry cost, and asking for contributions are the foundations of open-source development. 

GitHub plays a significant role in fostering open-source collaboration. It does this by making it very easy to contribute, share and communicate with each other.  

GitHub allows users to make repositories, which can either be set to private or free.  It also allows repositories to claim a license type, which is a certified sharing standard if you will.  If you'd like to learn more, [here is GitHub's](https://help.github.com/articles/licensing-a-repository/) documentation on how to choose and add a License.

GitHub also makes it very easy for other developers to make changes to a repository's code.

#### Exercise: Pushing your Git Repository to GitHub

To help us understand how Git and GitHub work together, we're going to "push" (I'll talk about this word choice a little more later) the Git repository we created in yesterday's blog post to our GitHub account. That repository will then be public and if we wanted other's could make changes to it or comment on it.

1\. Make sure you've done the exercise in the previous blog article.  You should have a git repository in your downloads folder called "git-practice".  I am also going to assume that you correctly added your GitHub username and email when installing Git.  If you didn't you'll run into an error that I'll point out shortly (as well as how to problem solve for it).

2\. In your terminal, make sure you are on your Git repository called "git-practice".

You can confirm this by using the "print-working-directory" command. Notice, I'm located in the "git-practice" folder.

![](public/assets/pwd.png)

3\. The next thing we're going to do is confirm that we have indeed connected our GitHub account correctly to Git.  You would have done this in yesterday's article when you setup your Git account.

To confirm that this looks correct, let's quickly checkout out `git global config` file. To look at this file, run: `git config --global --list` 

![](public/assets/config-1.png)

Once you enter this command, Git will list what's in your Git config file.  You can see in my `git global config` file that I have my GitHub username Monkeychip and my email address (I have blurred this out).

What's important here, is that your user.name and user.email match your GitHub account.

If your user.name and user.email do not match your GitHub account information follow these instructions for setting up your Git [username](https://help.github.com/en/articles/setting-your-username-in-git), and here for your Git [email](https://help.github.com/en/articles/setting-your-commit-email-address-in-git).

4\. Ok, now that we've confirmed out Git and GitHub account is setup correctly, we are first going to create a new repository (repo for short) on our GitHub account that we can use to connect our Git repo to.

On your GitHub account, navigate to the "Repository" tab, and click "New". Name the repository - you can name it whatever you'd like - and use the default settings.

![](public/assets/git-repo.gif)

Once created, GitHub helps you by providing the commands you'll need.  We are going to use the commands under "or push existing repository from command line".

You can either following the directions Git gives you, or I have them pasted below.

```
git remote add origin https://github.com/replace-with-your-username/replace-with-your-git-repo-name.git
git push -u origin master
```

![](public/assets/git-remote.png)

The first command connects your Git repo to the GitHub repo you just created.  Without getting into too many details, which we don't have time for here, your adding a remote repo called "origin" and it's found at the URL you gave it.

Next you are "pushing" (a Git term to more or less indicate saving your project) to the "master" branch.  There is a lot here that's too much to explain in a blog post, but the general idea is that with the two commands you have connected your Git and GitHub repos and now your "git-practice" project are saved onto GitHub.

5\. Go ahead and refresh the GitHub repo you created on GitHub.  You should see the your "git-practice" folder and file on the GitHub.  Nice work!

![](public/assets/GitHub-pushed.png)

Now whenever you make a change to a file in your "git-practice" folder, you can push add, commit, and then push that change to GitHub. Again, this is all a little much to fully grasp here, and you'll want to spend more time practicing this workflow.  My point here was to introduce you to part of the process and get you setup with Git and GitHub.

Before we wrap up today, I want to briefly talk about GitHub as an asset when applying to Web Developer positions.

### GitHub: the new resume

Your GitHub activity, profile, and repositories will be much more valuable to any prospective employer than your resume.  It's also likely that any project you take as part of the application process will be done using the Git / GitHub workflow.

Employers will use your GitHub profile to determine what if any repos you are contributing to, what repos you have made yourself and if you are actively using Git.  In the programming world, it's less about what school you went to, and more about what you've created or are contributing to.  If you have an active presence in the GitHub community, your future employer will be sure to take notice.  

#### Explore GitHub

GitHub is huge, and there's a lot to learn by looking at some of the projects people are working on.

Here are some of my favorite GitHub repositories.  Let these encourage your explorations.  Star repositories and maybe start thinking about a project you are currently working on that would benefit from the Git / GitHub workflow.

-- [30-seconds-of-code](https://github.com/30-seconds/30-seconds-of-code)

-- [Scripts to Rule the All](https://github.com/github/scripts-to-rule-them-all)

-- [GitHub-cheat-sheet](https://github.com/tiimgreen/github-cheat-sheet)

-- [Frontend-dev-bookmarks](https://github.com/dypsilon/frontend-dev-bookmarks)


Tomorrow is our last day.  We've covered a lot, and if you're relived and a bit overwhelmed, you're not alone. Getting starting in this field, how to focus and spend your energy studying the right things is a extremeley tough field to navigate.  I wrote the book "How to Become a Web Developer: A Field Guide" because I wanted to write the book I needed when I first started.  I wanted to give a field guide for how to navigate all this information.

In the last blog post I'll introduce a true Field Guide, that maps out a route for you to take and gives recommendations around what to study, projects to work on and time spent on each subject.

