output() {
    echo 123456
    echo '##[set-output name='$1';]'$(eval 'echo ${'$1'}')
    echo 'AA[set-output name='$1';]'$(eval 'echo ${'$1'}')
}

da=$(date '+%Y%m%d-%H%M%S')

bdurl=https://www.baidu.com
output bdurl
output da
