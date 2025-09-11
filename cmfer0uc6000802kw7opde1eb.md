---
title: "Gtit & Github"
datePublished: Thu Sep 11 2025 01:47:40 GMT+0000 (Coordinated Universal Time)
cuid: cmfer0uc6000802kw7opde1eb
slug: gtit-and-github
tags: shreenibas

---

Add one Folder to VS-code workspace ad **Git-Learning ,&** added more folder as **one, two, three, four.**

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757439448365/93046948-fe37-46bb-9241-cf5e45dab01d.png align="center")

And open the Git-Learning Folder\*\*/\*\*Project in Terminal Then Run command as “**git status**”.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757439731541/a677ac37-1530-4212-8c42-9bbd295089c6.png align="center")

As it is not initial as git folder, it will show this message

## **fatal: not a git repository (or any of the parent directories): .git**

Then by entering **cd one** as we want to initialize **git** inside one folder.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757440507361/7a56b4e8-adca-4d55-bd3c-156b7febc249.png align="center")

Then the result is

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757440647949/e7d3a513-6d01-48b0-a1dc-2313fbab8b25.png align="center")

It also gives a hint at some of **git commands.**

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757441084543/e9d5d6aa-2487-45dc-a96e-8fdc90cbb176.png align="center")

And **git** file is created inside **one** folder , but it will not show in **VS Code**. you need to change the setting in **VS Code**.

Through CLI also we can see the list of folder/file available in side a folder ,by command **ls**

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757441451020/98f7f58e-b498-4c5e-a8c9-1f3c15f5f455.png align="center")

still it not showing anythings.

But by using **ls -la we can see th hideen folders and files.**

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757441567180/424b0d8d-24aa-4bcf-96f6-5231c5a37da3.png align="center")

it shows the all the hidden files.

But we can see the by change the setting in VS code that is the beauty of VS code.

# Git Branching

here is some common `git branch` commands.

<table><tbody><tr><td colspan="1" rowspan="1"><p><strong>Action</strong></p></td><td colspan="1" rowspan="1"><p><strong>Command</strong></p></td><td colspan="1" rowspan="1"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>List Branches</strong></p></td><td colspan="1" rowspan="1"><p><code>git branch</code></p></td><td colspan="1" rowspan="1"><p>Shows all your <strong>local</strong> branches.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>List All Branches</strong></p></td><td colspan="1" rowspan="1"><p><code>git branch -a</code></p></td><td colspan="1" rowspan="1"><p>Shows all <strong>local</strong> and <strong>remote-tracking</strong> branches.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Create Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git branch &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Creates a new branch, but does <strong>not</strong> switch to it.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Switch to Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git switch &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Switches your working directory to an existing branch.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Create &amp; Switch</strong></p></td><td colspan="1" rowspan="1"><p><code>git switch -c &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Creates a new branch and immediately switches to it.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Rename Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git branch -m &lt;new-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Renames the <strong>current</strong> local branch.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Safe Delete Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git branch -d &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Deletes a local branch <strong>only if</strong> it has been merged.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Force Delete Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git branch -D &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Deletes a local branch regardless of its merge status.</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Push New Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git push -u origin &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Pushes a new local branch to the remote (<code>origin</code>).</p></td></tr><tr><td colspan="1" rowspan="1"><p><strong>Delete Remote Branch</strong></p></td><td colspan="1" rowspan="1"><p><code>git push origin --delete &lt;branch-name&gt;</code></p></td><td colspan="1" rowspan="1"><p>Deletes a branch from the remote repository.</p></td></tr></tbody></table>

Lets **Create another Branch** by using command `git branch <branch-name>`

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757472800326/ec9dc434-5780-4478-9279-27ef321e3bdf.png align="center")

O O whats happen ?

it show as **fatal: not a valid object name: 'master' ,**but why?

happens because Git can’t find a branch (or commit) named `master` to base your new branch on.

### 🔍 Possible Reasons

1. **Your repo has no commits yet.**
    
    * You can’t create a new branch until at least one commit exists.
        
    * If you only ran `git init` and haven’t committed anything, Git doesn’t know what `main` is.
        
2. **Default branch isn’t really** `main`.
    
    * In older Git versions, the default branch is `master`, not `main`.
        
    * If your repo uses `master`, Git won’t recognize `main`.
        

---

### ✅ Fix Steps

1. **Check current branches**
    
    ```java
    git branch
    ```
    
    This shows the existing branches. If you see only `master`, then your default branch is `master`, not `main`.
    
2. **Make an initial commit (if none yet)**  
    If your repo is completely empty:
    
    ```java
    git add .
    git commit -m "Initial commit"
    ```
    

But it show now as below

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757474628723/4f63d6ce-e916-4b8c-834a-7c7928893dff.png align="center")

That mean we must should have one file to track the repositoty ,and then after we can create branch.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757474865283/553417bb-30d1-438d-a6e2-1473cfc99a58.png align="center")

Aftrer adding one file to repository.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757474929563/0e998fad-3ef4-4d42-b48a-3c08bae30aee.png align="center")

Now you’ll have a base commit.

1. **Create a branch from current branch**  
    If you’re already on `main` (or `master`), just do:
    
    ```java
    git checkout -b bug
    ```
    
    or
    
    ```java
    git branch bug
    ```
    

---

👉 Quick check for you:  
Run this and tell me what you see:

```java
git branch
```

That will confirm whether your repo has `main`, `master`, or no commits yet.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1757475042529/5c9b95f6-5062-4acc-b7f9-25fa5c5a30f9.png align="center")