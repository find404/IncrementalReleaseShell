# IncrementalReleaseShell
一键通过测试服务器生成项目增量文件夹压缩包，发布到生产服务器。

在测试机上放置test-publish.sh
在生产机上放置production-decompression.sh

请注意配置好对应的项目文件目录！


在项目文件夹下执行test-publish.sh

输入
branchName      需要生成的分支名
afterCommitId   上一版本提交ID
lastCommitId    最后提交ID


end ...
