oldname=$1
newname=$2


files=(
	/etc/hostname
	/etc/hosts
	/etc/postfix/main.cf
)

for file in "${files[@]}"; do
	if [[ -f "$file" ]]; then
		sed -i "s/${oldname}/${newname}/g" "$file"
		echo "#####Printing: $file"
        
        cat $file
	else
		echo "Skipped (not found): $file" >&2
	fi
done


mkdir /etc/pve/nodes/${newname}
cp -r /etc/pve/nodes/${oldname}/* /etc/pve/nodes/${newname}/
rm -rf /etc/pve/nodes/${oldname}

