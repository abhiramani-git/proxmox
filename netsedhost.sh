echo "options kvm-amd nested=1" > /etc/modprobe.d/kvm-amd.conf
modprobe kvm_amd
modprobe -R kvm_amd
cat /sys/module/kvm_amd/parameters/nested
