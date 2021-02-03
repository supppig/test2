# set -x
# assets=()
# for asset in ./*.md; do
#   assets+=("-a" "$asset")
# done
# tag_name="abcdef"
# # hub release create "${assets[@]}" -m "$tag_name" "$tag_name"
da=$(date '+%Y%m%d-%H%M%S')
echo $da >x.txt
echo >>x.txt
echo "baidu https://www.baidu.com" >>x.txt
hub release create -a ./ddd/1.jpg -a ./ddd/2.txt -a ./ddd/3.zip -F x.txt "$da"
