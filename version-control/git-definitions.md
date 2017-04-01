# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful? 
Version control is a system (tool) that allows us to keep track of our work and changes to any files within a directory (folder) that turns into a "repository" so that we can see our file in specific points in time. It is very useful since it can help us avoid loosing files, we can track the file to its original state or at any point that we saved, we can allow "branches" to be made so that we can try out changes and if we accept them we can then merge them to our original files, and it allows a team to work together on the same file, make changes, and integrate them to the original file if we wish to do so.

* What is a branch and why would you use one?
A branch is a copy of the original file that we can create in order to keep the original copy intact and do any changes and edits that we want without risking loosing the original file. This allows us to create a new "path" to experiment with.

* What is a commit? What makes a good commit message?
The commit is basically the "save option" for Git. Git continuously tracks our files (if they have been properly added) and it is not until we create a commit that the file is saved to a specific point in time for our reference. I like to think of it as a snapshot of the file.

* What is a merge conflict?
A merge conflict is caused when we try to merge changes into the original file, but the original file we were working on was also edited and the specific changes (lines, code) we made to it were also modified in our branch, therefore the merge conflict arises, letting us know that merging the file would result in loosing the new modifications made to the original file.