#!/bin/bash
currentUser=$USER
currentUserMail=${currentUser}shadow@gmail.com

git config --global user.name "$currentUser"
git config --global user.email "$currentUserMail"
git config --global push.default matching
git config --global push.default simple
git config --global core.editor nano

# for windows 
#git config --global core.editor "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -nosession"
#git config --global diff.tool meld
#git config --global difftool.meld.path "C:\Program Files (x86)\Meld\Meld.exe"
#git config --global difftool.prompt false

#git config --global merge.tool meld
#git config --global mergetool.meld.path "C:\Program Files (x86)\Meld\Meld.exe"
#git config --global mergetool.prompt false

#git config --global --add merge.tool kdiff3
#git config --global --add mergetool.kdiff3.path "C:/Program Files/KDiff3/kdiff3.exe"
#git config --global --add mergetool.kdiff3.trustExitCode false

#git config --global --add diff.guitool kdiff3
#git config --global --add difftool.kdiff3.path "C:/Program Files/KDiff3/kdiff3.exe"
#git config --global --add difftool.kdiff3.trustExitCode false

# for linux meld
#git config --global diff.tool meld
#git config --global difftool.meld.path "/usr/bin/meld"
#git config --global difftool.prompt false

#git config --global merge.tool meld
#git config --global mergetool.meld.path "/usr/bin/meld"
#git config --global mergetool.prompt false

# for linux kdiff3
kdiff3_path=$( which kdiff3 )

git config --global --add merge.tool kdiff3
git config --global --add mergetool.kdiff3.path "$kdiff3_path"
git config --global --add mergetool.kdiff3.trustExitCode false

git config --global --add diff.guitool kdiff3
git config --global --add difftool.kdiff3.path "$kdiff3_path"
git config --global --add difftool.kdiff3.trustExitCode false
