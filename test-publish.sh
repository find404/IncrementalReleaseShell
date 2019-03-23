#!/bin/sh
read -p "please input git branch :" branchName
read -p "please input git afterCommitId :" afterCommitId
read -p "please input git lastCommitId :" lastCommitId

#通过GIT，获取增量压缩包
project_path=$(pwd) 
git pull origin $branchName
git diff $afterCommitId $lastCommitId --name-only | xargs tar -czvf $project_path/update.tar.gz

#远程复制当前压缩包，到远程服务器
scp -r $project_path/update.tar.gz root@192.168.43.169:/home/wwwroot/

#解压覆盖，并删除压缩包
ssh 192.168.43.169 /home/production-decompression.sh.sh

