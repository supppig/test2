output() {
    echo 123456
    echo '##[set-output name='$1';]'$(eval 'echo ${'$1'}')
}

bdurl=https://www.baidu.com
output bdurl