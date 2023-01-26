#!/bin/bash

# To verifaid the GIT is available or NOT....

which git > output1.txt
if grep -q "/bin/git" output1.txt;
then
        echo "The GIT is alrady Install in your machine"
else
        sudo yum install git -y
echo "The GIT is not available in your machine So GIT is installing NOW"
fi
sudo rm -rf output1.txt

# for the step of git stages

git init
git config --global user.name "manishpatel92"
git config --global user.password "your-password"
git config --global user.password "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"
git config --global user.email "manish080194@gmail.com"
git add .
git commit -m "that is commit form shell"
git remote add origin https://github.com/manishpatel92/Shell-screpts.git
git push -u origin master
