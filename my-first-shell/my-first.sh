# このシェルスクリプトを/bin/bashにあるbashというシェルで実行せよ (shebang)
#!/bin/bash
ls
date
echo メッセージを入力して下さい。
read message
echo 入力されたメッセージ: $message