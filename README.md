# commit-walker
A script to move forward in an existing git commit history, e.g. for demo/teaching purposes. Eventually I would like to build this into a useful little tool. Maybe both as command line tool and as extension for Visual Studio Code with highlighting of changes etc., will see.

Start from the past on a new branch and cherry-picking one by one from main forward. It uses `stepcounter` to read/write the next step and `git.log` to extract the respective commit hash. The command to list the hashes is:

```bash
git log --reverse --pretty=tformat:%h > git.log
```
