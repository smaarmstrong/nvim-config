**This repo is supposed to used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!

# Useful Commands
## Note: these mappings/keys can also be reset
### pressing the Space bar shows suggested commands like a cheat sheet

#### TODO: organize these commands with coherent headings/groupings

Open the tree: ctrl + n
Open the terminal: Space + h or Space + v (vertically)
Escape any window: :q
Go to line 10: 10gg (line number + gg)
tab: switch to right tab
shift + tab: switch to left tab
ctrl + x: to enter end-terminal mode
ctrl + k: to go up from the terminal
ctrl + h or l: go left/right from file / tree
Space + gt: git status
Space + fw: live grep
ctrl + q (after opening live grep telescope menu): creates a quickfix list
:cdo s/space/Space: replaces all files in the quickfix list
:cfdo %s/foo/bar/g: changes all of the lines in the quickfix list
gg: goes to line 1
G: goes to last line
we've changed the mappings for gg and G to resemble gg^ and G^
ctrl + b: collapsing the directories in the file tree
"": to open the register and choose an item to paste
space + /: comment out quickly
==: indentation
