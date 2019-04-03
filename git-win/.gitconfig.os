[core]
    autocrlf = true
[credential]
	helper = wincred
[difftool "sourcetree"]
	cmd = 'C:/workspace/opt/Beyond Compare 3/BCompare.exe' \"$LOCAL\" \"$REMOTE\"
[mergetool "sourcetree"]
	cmd = 'C:/workspace/opt/Beyond Compare 3/BCompare.exe' \"$LOCAL\" \"$REMOTE\" \"$BASE\" -o \"$MERGED\"
	trustExitCode = true
[difftool "bc3"]
	cmd = \"C:/workspace/opt/Beyond Compare 3/Bcompare.exe\" \"$LOCAL\" \"$REMOTE\"
	path = \"C:/workspace/opt/Beyond Compare 3/Bcompare.exe\"
[mergetool "bc3"]
	path = \"C:/workspace/opt/Beyond Compare 3/Bcompare.exe\"
	cmd = \"C:/workspace/opt/Beyond Compare 3/Bcompare.exe\" \"$LOCAL\" \"$REMOTE\" \"$BASE\" \"$MERGED\"
	trustExitCode = true
    

