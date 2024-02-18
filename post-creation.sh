REPO_NAME=$(basename "$(git remote get-url origin)" .git)
printf "Start Log Codespace build $REPO_NAME\n" > /workspaces/$REPO_NAME/CSBuildLog.txt
printf "Build Date.Time: %s\n" "$(date '+%Y-%m-%d.%T')">> /workspaces/$REPO_NAME/CSBuildLog.txt

################
printf "BEFORE CD\n" >> /workspaces/$REPO_NAME/CSBuildLog.txt
cd /usr/share

mv dotnet dotnet-8.0.101
mkdir dotnet

printf "BEFORE curl command\n" >> /workspaces/$REPO_NAME/CSBuildLog.txt
curl -Lo dotnet.tar.gz https://download.visualstudio.microsoft.com/download/pr/85bcc525-4e9c-471e-9c1d-96259aa1a315/930833ef34f66fe9ee2643b0ba21621a/dotnet-sdk-8.0.201-linux-x64.tar.gz

printf "BEFORE tar command\n" /workspaces/$REPO_NAME/CSBuildLog.txt
tar -C dotnet -xf dotnet.tar.gz

printf "BEFORE remove file\n" >> /workspaces/$REPO_NAME/CSBuildLog.txt
rm dotnet.tar.gz

printf "End of Build Script File\n" >> /workspaces/$REPO_NAME/CSBuildLog.txt
################
