---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 28 - Introduction to Git

Have you ever run into file saving hell 🔥? You started with good intentions, telling yourself you'd stick with an organized system of v1, v2, etc., but a couple spelling mistakes, and recovered files later you've got a file system like the following:

![](images/7-git/file-poop.png)

You're not alone.  This problem is universal: developers, grandmas, your mail-person, anyone who has touched a computer.  Thankfully, software platforms of all sorts have come together to create a variety of solutions.  Google docs, for example, let's you look at your document's revision history, even allowing you to restore old versions.  
![](images/7-git/google-docs-version-history.png)

Software developers are especially demanding when it comes to version control.  They are continually making small tweaks, revising, sharing code, and looking at changes done to code in the past.  Today, Git is the technology that programmers use to solve for their onerous version control needs.

Git is open-source, meaning that it is free to use and may be redistributed or modified[^open-source].  Released in 2005, Git become popular very quickly and had wide-sweeping impacts on the programming community.  There were Version Control Systems before Git came along, but Git's unique approach to tracking changes was an industry game changer.

There has been and still is no real competitor to Git[^competitor].  As a future web developer, you will need to know how to use it.

In this chapter, we come to understand what Git does and what problems it has solved.  We will cover basic Git commands, using them to illustrate how Git works.  We will then look at GitHub, a very popular software platform that uses the Git technology.

W>I will be introducing a lot of Git commands in this chapter.  If you'd like, add these commands to your Command-file, but don't focus too much on syntax. This chapter is about introducing concepts, not an instructional on Git syntax.  That will come with practice and study done outside of this book.

## Version Control

We've all been there.  You saved a file on your computer, but accidentally removed something you wanted to keep.  Maybe you thought ahead and have a previous version of the file you can search through, or more likely you didn't.  Version management sucks and its suckiness grows exponentially larger when you're a developer working on a huge codebase.

Subsequently, developers have been trying to solve for the version control nightmare since there started being developers.  Working on code bases present several consistent challenges, regardless of the size of the codebase or the number of people working on them.  These are - generally - as follows:

- Version control
- Keeping an accurate history of file changes
- Logging information about file changes
- Allowing different people to make changes to the same codebase at the same time

#### Version Control Systems (VCS)
At first, developers tried to solve some of these problems with simple Version Control Systems (VCS).  These were OK, but they only helped developers keep track of files that had changed.  They didn't solve for any of the other issues mentioned above.

Additionally, these VCS were local.  Meaning the whole codebase was on the developers' machines.  Google's codebase is over 2 billion lines of code[^2bill].  Keeping a codebase that large on your computer without it exploding isn't an option.

Local VCS also didn't come close to solving the issue of different developers collaborating on the same codebase.  If the code was on your computer, how could you easily share it with another developer?

> Meet Bob.  He's a programmer in the 1980s.  

>Co-worker: "Hey Bob can you email that file version again, I think it's from the change you made on Friday, but I can't be certain.  I know you already sent it, but I'm too lazy to look.  Thanks!"

>Bob: "I quit."

>I would too Bob.

#### Centralized  Version Control Systems (CVCS)
Next came Centralized Version Control Systems (CVCS). CVCS improved upon the process enough that they were the industry standard through the 90s up until Git was released[^cvcs]. 

Unlike VCS, CVCS stored the codebase in a single place, not on individual computers.  Whoever needed to work on something would just check out that file to work on it; similar to checking out a book from a library.  The problem, what happens if the place with your codebase burns down, or the library floods?  

Programmers couldn't sleep at night knowing that all their work had a single point of failure.  

> Meet Kat. She's a programmer from 2003.  

> Co-worker: "Hey Kat, did you hear there was a massive hail storm in Aurora, Nebraska. They recorded 7-inch diameter hail[^hail]!  Isn't that where we have the computer that holds all of our code?"

>Kat: "I quit."

>I would too Kat.

#### Distributed Version Control System (DVCS)
The third times a charm.  Building off of VCS and CVCS, developers created Distributed Version Control Systems (DVCS).  Git is a DVCS[^DVCS].   

In DVCS, programmers check out a fully mirrored version of the codebase[^mirrored].  If this were a library, instead of checking out a book, you'd be checking out a mirrored image of the library, book included[^onlycheckoutwhatwant].  Thus, if the library burned to the ground, anyone who checked out a mirrored version of the library could restore it with their version.  

![](images/7-git/mirrored.png)

DVCS also allow for branching and merging.  Branching here means to duplicate.  With Git, this often means you are duplicating the codebase you are looking at.  You make branch - a duplicate of the codebase - then you make changes on that branch.  Merging comes in when you want to _merge_ the changes on your branch back to the original codebase.  We will discuss both topics in more detail later.

>Meet Ivan. Ivan is a programmer from 2006.

>Co-worker: "Hey Ivan, we made a change a year ago, and I think we need to merge that change back into the codebase.  Can you help me?"

>Ivan: "We can do it, no problem.  Go learn some Git, and you can do it sans my help."

>Ivan's a bit of a jerk for not helping, but at least he's not quitting. 

## Git

There are other DVCS, aside from Git out there, but Git is the world's most popular[^worlds], and the one we will cover in this book.    

There are two main ways to use Git.  Through your terminal, or a [Git GUI](https://git-scm.com/downloads/guis/). We will interact with Git via the terminal.

I am happy to boast about Git all-day, but Git toot's its own horn the best.  Here is what Git has to say about itself, taken directly from the [Git Website](https://git-scm.com/):

![](images/7-git/git-everything-is-local.png)

Before we start introducing Git commands and the Git workflow, we need to setup a GitHub account and install Git.

Git itself has a wonderful installation guide, which you can [find here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).


We install and learn various commands and the process in the book. 

// ARG maybe take from this section a bit too. 
### Git Summary 

We've covered some of the core Git features: committing, branching, cloud communication, and Git never forgetting.

As a future web developer, Git will become apart of your day-to-day workflow.  The more familiar you are with Git, the more powerful and efficient programmer you'll be. 

// Tmrw, I'll introduce Github and explain Git and GitHubs relationship.


