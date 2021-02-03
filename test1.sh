output() {
    echo 123456
    echo '##[set-output name='$1';]'$(eval 'echo ${'$1'}')
    echo 'AA[set-output name='$1';]'$(eval 'echo ${'$1'}')
}



#清理空间
docker rmi `docker images -q`
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php* android*
sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d /usr/local/lib/android /opt/ghc
sudo -E apt-get update

sudo -E apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev \
    patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core \
    gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev \
    autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync

sudo -E apt-get -y autoremove --purge
sudo -E apt-get clean



da=$(date '+%Y%m%d-%H%M%S')

bdurl=https://www.baidu.com
output bdurl
output da
