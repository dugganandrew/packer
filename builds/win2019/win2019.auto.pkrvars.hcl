# ----------------------------------------------------------------------------
# Name:         variables.auto.pkrvars.hcl
# Description:  Common vSphere variables for Windows 2019 Packer builds
# Author:       Michael Poore (@mpoore)
# URL:          https://github.com/v12n-io/packer
# Date:         24/01/2022
# ----------------------------------------------------------------------------

# ISO Settings
os_iso_file                     = "en-us_windows_server_2019_updated_aug_2021_x64_dvd_a6431a28.iso"
os_iso_path                     = "ISO"

# OS Meta Data
vm_os_family                    = "Windows"
vm_os_type                      = "Server"
vm_os_vendor                    = "Windows"
vm_os_version                   = "2019"

# VM Hardware Settings
vm_firmware                     = "efi-secure"
vm_cpu_sockets                  = 2
vm_cpu_cores                    = 1
vm_mem_size                     = 2048
vm_nic_type                     = "vmxnet3"
vm_disk_controller              = ["pvscsi"]
vm_disk_size                    = 51200
vm_disk_thin                    = true
vm_cdrom_type                   = "sata"

# VM Settings
vm_cdrom_remove                 = true
vcenter_convert_template        = false
vcenter_content_library_ovf     = true
vcenter_content_library_destroy = true

# VM OS Settings
vm_guestos_type                 = "windows2019srv_64Guest"
build_username                  = "Administrator"
build_password                  = "REPLACEWITHADMINPASS"

# Provisioner Settings
script_files                    = [ "scripts/win2019-config.ps1" ]
inline_cmds                     = [ "Get-EventLog -LogName * | ForEach { Clear-EventLog -LogName $_.Log }" ]
