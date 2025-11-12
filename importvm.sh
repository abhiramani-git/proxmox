# Create VM
# Delete Default Disk
# Downloadextract and import VMDK
wget <link-to-vm-ova-file>
tar -xvf <your-vm-name>.ova
qm importdisk <target_vmid> <vmdk_file> <target_storage> --format qcow2
# Attach the disk/Remove CD ROM
# Adjust boot order
# Start the VM