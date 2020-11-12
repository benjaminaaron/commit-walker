# commit-walker
A tool to move forward in an existing git commit history, e.g. for demo/teaching purposes.

Start from the past on a new branch and cherry-picking one by one from main forward. It uses `stepcounter` to read/write the next step and `git.log` to extract the respective commit hash. The command to list the hashes is:

```bash
git log --reverse --pretty=tformat:%h > git.log
```
