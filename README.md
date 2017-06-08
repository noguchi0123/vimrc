# vimrc
vimrcの設定

## memo
環境設定の管理用

### .zshrc
peco <br>
https://github.com/peco/peco#demo <br>
うまくいかないとき　<br>
http://qiita.com/uchiko/items/f6b1528d7362c9310da0


```vim:~/.zshrc
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
```

### .ssh/config
Ed25519は、ツイストしたエドワーズ曲線を用いたエドワーズ曲線電子署名アルゴリズムの実装の一つである。
