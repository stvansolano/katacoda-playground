ssh root@host01 "apt-get update"
ssh root@host01 "apt-get install -y wget"
ssh root@host01 "wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb"
ssh root@host01 "dpkg -i packages-microsoft-prod.deb"
ssh root@host01 "apt-get update"
ssh root@host01 "apt-get install -y apt-transport-https"
ssh root@host01 "apt-get install -y dotnet-sdk-3.1"