---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 28 - Introduction to Git

Have you ever run into file saving hell 🔥? You started with good intentions, telling yourself you'd stick with an organized system of v1, v2, etc., but a couple spelling mistakes, and recovered files later you've got a file system like the following:

![](public/assets/file-poop.png)

You're not alone.  This problem is universal: developers, grandmas, your mail-person, anyone who has touched a computer.  Thankfully, software platforms of all sorts have come together to create a variety of solutions.

Web Developers are especially demanding when it comes to version control.  They are continually making small tweaks, revising, sharing code, and looking at changes done to code in the past.  Today, Git is the technology that developers use to solve for their onerous version control needs.

Git is open-source, meaning that it is free to use and may be redistributed or modified[^open-source].  Released in 2005, Git become popular very quickly and had wide-sweeping impacts on the programming community.  There were Version Control Systems before Git came along, but Git's unique approach to tracking changes was an industry game changer.

There has been and still is no real competitor to Git[^competitor].  As a future Web Developer, you will need to know how to use it.

In this article, we come to understand what Git does and what problems it has solved.

## Version Control

We've all been there.  You saved a file on your computer, but accidentally removed something you wanted to keep.  Maybe you thought ahead and have a previous version of the file you can search through, or more likely you didn't.  Version management sucks and its suckiness grows exponentially larger when you're a developer working on a huge codebase.

Subsequently, developers have been trying to solve for the version control nightmare since there started being developers.  Working on code bases present several consistent challenges, regardless of the size of the codebase or the number of people working on them.  These are - generally - as follows:

- Version control
- Keeping an accurate history of file changes
- Logging information about file changes
- Allowing different people to make changes to the same codebase at the same time

#### Version Control Systems (VCS)
At first, developers tried to solve some of these problems with simple Version Control Systems (VCS).  These were OK, but they only helped developers keep track of files that had changed.  They didn't solve for any of the other issues mentioned above.

Additionally, these VCS were local.  Meaning the _whole_ codebase was on the developers' machines.

Local VCS also didn't come close to solving the issue of different developers collaborating on the same codebase.  If the code was on your computer, how could you easily share it with another developer?

> Meet Bob.  He's a programmer in the 1980s.  

>Co-worker: "Hey Bob can you email that file version again, I think it's from the change you made on Friday, but I can't be certain.  I know you already sent it, but I'm too lazy to look.  Thanks!"

>Bob: "I quit."

>I would too Bob.

#### Centralized  Version Control Systems (CVCS)
Next came Centralized Version Control Systems (CVCS). CVCS improved upon the process enough that they were the industry standard through the 90s up until Git was released[^cvcs]. 

Unlike VCS, CVCS stored the codebase in a single place, not on individual computers.  Whoever needed to work on something would just check out that file to work on it; similar to checking out a book from a library.  The problem, what happens if the place with your codebase burns down, or the library floods?  

> Meet Kat. She's a programmer from 2003.  

> Co-worker: "Hey Kat, did you hear there was a massive hail storm in Aurora, Nebraska. They recorded 7-inch diameter hail[^hail]!  Isn't that where we have the computer that holds all of our code?"

>Kat: "I quit."

>I would too Kat.

#### Distributed Version Control System (DVCS)
The third times a charm.  Building off of VCS and CVCS, developers created Distributed Version Control Systems (DVCS).  Git is a DVCS[^DVCS].   

In DVCS, programmers check out a fully mirrored version of the codebase.  If this were a library, instead of checking out a book, you'd be checking out a mirrored image of the library, book included.  Thus, if the library burned to the ground, anyone who checked out a mirrored version of the library could restore it with their version.  

![](public/assets/mirrored.png)

DVCS also allow for branching and merging.  Branching here means to duplicate.  With Git, this often means you are duplicating the codebase you are looking at.  You make branch - a duplicate of the codebase - then you make changes on that branch.  Merging comes in when you want to _merge_ the changes on your branch back to the original codebase.  We will discuss both topics in more detail later.

>Meet Ivan. Ivan is a programmer from 2006.

>Co-worker: "Hey Ivan, we made a change a year ago, and I think we need to merge that change back into the codebase.  Can you help me?"

>Ivan: "We can do it, no problem.  Go learn some Git, and you can do it sans my help."

>Ivan's a bit of a jerk for not helping, but at least he's not quitting. 

## Git

There are other DVCS, aside from Git out there, but Git is the world's most popular[^worlds], and the one we will cover in this book.    

There are two main ways to use Git.  Through your terminal, or a [Git GUI](https://git-scm.com/downloads/guis/). I will encourage you to use the terminal.

Before I start introducing Git commands and the Git workflow, I am going to jump ahead a step and have you setup a GitHub account and _then_ install Git.

I>We will cover GitHub in tomorrow's article.  I am having you setup an account now so that you can enter your GitHub credentials during the installation process of Git.

#### Exercise: Setup a GitHub account and install Git

1\. Open the [GitHub website](https://github.com/) and sign up for an account.

When you set up your GitHub account take note of your GitHub username and email.  You will use these in the next step when installing Git. 

Git itself has a wonderful installation guide, which you can [find here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

2\. Next, let's navigate back to our terminal and **install Git**.  You will be installing Git globally (e.g., on your computer, not in any particular location) so it doesn't matter where you are in your terminal when you install Git.

Git itself has a wonderful installation guide, which you can [find here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

**Windows Users**: You will be downloading Git for Windows.  Click [here](https://gitforwindows.org/) to begin the download process.

I> ⚠️ PAY ATTENTION: During the installation process, Git will ask you for your GitHub username and email. By giving Git your GitHub username and email, you're connecting your local Git with your GitHub account.

// ARG: image of above.

3\. Disclosure, we are just going to touch the surface with Git.  I talk a lot more about the Git workflow and all of it's features in the book How to Become a Web Developer: A Field Guide.

Download the folder ["git-pracitce"](src/git-practice).  

From your terminal, navigate to your Downloads folder, and `cd` into this folder.

![](public/assets/git-1.png)

4\. Next we are going to "initialize" a Git repository, e.g. a project that is now being watched by Git.  To do this enter the command `git init`.

![](public/assets/git-2.png)

5\. Git has initialized this folder, but we haven't told it to watch any file specifically.  We want it to keep track of changes on our "animal-facts.txt" file that is in the folder.

To do this we are going to use the `git add animal-facts.txt" command.  In Git this is called "staging" a file.  Go ahead and run this command.

![](public/assets/git-2a.png)

6\. Next, open the file "animal-facts.txt" in your text editor.

![](public/assets/git-3.png)

We are going to amend this file.  The animal fact that is in there is not entirely what I wanted to say.  Go ahead and modify as I have or make any other modification you want, just remember to save your changes.

![](public/assets/git-4.gif)

7\. Git will see this change and ask us if we want to save it.

Back in your terminal, type `git status`.

![](public/assets/git-5.png)

Git returns a message that says essentially that a file we staged has changed.  It's asking us if we want to "commit" this change.  Commit here means to record the change.  We are going to commit this change with a message. 

We do this using the `git commit -m "some message typed here"` command.

![](public/assets/git-6.png)

Now, Git has saved this change, and made a record of it that we can see if we run the command `git log`.

![](public/assets/git-7.png)

### Git Summary 

There is a whole heck of a lot that I did not cover here.  I speed through this demonstration to give you an overview of the general Git process, but by no means is this complete.

It pains me a little to leave you here, in this unfinished state, but I'll sleep at night if you remember this is just an introduction.  I cover in much more depth this process and more in the How to Become a Web Developer: A Field Guide, and encourage you to either at least read the Git chapter from that book, the whole book 😉, or another Git resource; there are many.

As a future web developer, Git will become apart of your day-to-day workflow.  The more familiar you are with Git, the more powerful and efficient developer you'll be. 

Tomorrow, I'll introduce Github and explain Git and GitHubs relationship.

[^open-source]:https://en.wikipedia.org/wiki/The_Open_Source_Definition
[^cvcs]:https://en.wikipedia.org/wiki/Perforce
[^hail]:https://en.wikipedia.org/wiki/List_of_costly_or_deadly_hailstorms#North_America
[^DVCS]:https://en.wikipedia.org/wiki/Distributed_version_control
[^worlds]:https://en.wikipedia.org/wiki/Distributed_version_control