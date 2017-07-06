# Clone just the repository's .git folder (excluding files as they are already in
# `existing-dir`) into an empty temporary directory
directory_remove.sh /git.tmp

git clone --no-checkout https://github.com/andurilan/hello-mr-justin-lucas.git /git.tmp # might want --no-hardlinks for cloning local repo

# Move the .git folder to the directory with the files.
# This makes `existing-dir` a git repo.
mv /git.tmp/.git /

# Delete the temporary directory
rmdir /git.tmp
cd /

# git thinks all files are deleted, this reverts the state of the repo to HEAD.
# WARNING: any local changes to the files will be lost.
git reset --hard HEAD
