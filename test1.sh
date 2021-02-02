output() {
    echo 123456
    echo '##[set-output name='$1';]'$2
    echo 'AA[set-output name='$1';]'$2
}

bdurl=https://www.baidu.com
output bdurl $bdurl