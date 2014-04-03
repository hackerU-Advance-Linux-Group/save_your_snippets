#depend_package: xsel
clear
steps(){
#depend_package: exo-open
	url="http://www.shellcheck.net"
		exo-open "$url"
}


if [ $# -gt 0 ];then
file_target=$1
if [ -f "$file_target" ];then
cat $file_target | xsel --clipboard
steps
fi
else
echo '[error] supply a shell source file'
fi



