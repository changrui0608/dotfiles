# .config-files
my configurations, run-commands, etc.

## VIM

### Install VIM-PLUG

See [vim-plug](https://github.com/junegunn/vim-plug) for more

Unix
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Windows (Powershell)
```
md ~\vimfiles\autoload
md ~\vimfiles\autolo $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
```

### Install/Update all plugins

In VIM:

```
:PlugInstall
```
```
:PlugUpdate
```

### Build YouCompleteMe plugin

CMake (and maybe Python3) is required
```
brew install cmake                  # macOS
apt install build-essential cmake   # ubuntu
```

and build YCM:
```
# option --all for all languages supporting
# options available:
#   --clang-completer     # C, C++
#   --cs-completer        # C#
#   --go-completer        # Go
#   --js-completer        # JavaScript, Node.js and NPM is required, TypeScript SDK (npm install typescript -g) for TSlang support
#   --rust-completer      # Rust
#   --java-completer      # Java, JDK8 or higher is required

cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer --go-completer --js-completer --rust-completer --java-completer
```

