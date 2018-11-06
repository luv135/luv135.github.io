
---
title: git 命令
tags: 
- git
---

以下示例远程仓库的默认名称是`origin`

# 仓库交互

- 将目录初始化为git 仓库: `git init`
- 关远程地仓库: `git remote add origin git@luowei.chinacloudapp.cn:/home/git/repo/sampe.git/ `

- 推送分支: `git push <远程主机名> <本地分支>:<远程分支名>`
<br/>如: `git push origin master:master`
- 删除远程关联仓库`git remote rm origin`
- 删除远程分支: `git push --delete origin 分支名`
- 查看远程库信息，使用`git remote -v`

- 拉取远程分支: ` git pull <远程主机名> <远程分支名>:<本地分支名>`

- 拉取分支: `git fetch` 该命令将远程分支拉取到本地,但不合并

- rebase 分支: `git rebase -i` 合并分支,对于历史提交的进行修改

# 分支
- 查看分支: `git branch`

- 查看远程分支: `git branch -r`

- 查看所有分支: `git branch -a`

- 创建分支: `git branch <name>`
- 本地分支和远程分支关联: `git checkout -b 本地分支 origin/远程分支`

- 建立本地分支和远程分支的关联，使用`git branch --set-upstream 本地分支 origin/远程分支`


- 切换分支: `git checkout <name>`

- 创建+切换分支: `git checkout -b <name>`

- 合并某分支到当前分支: `git merge <name>`

- 删除分支: `git branch -d <name>`

- 重置分支: `git reset`

- 强行删除: `git branch -D <name>`

- 取回所有分支: `git fetch <远程主机名>`

- 取回特定分支: ` git fetch <远程主机名> <分支名>`

- 忽略的文件: `.gitignore`

- 分支合并图: `git log --graph`

- 合并分支并生产一个commit: `git merge --no-ff -m "merge with no-ff" dev`

- 重命名分支: `git branch -m <oldname> <newname>` 当前分支则:`git branch -m <newname>`

# 文件操作

- 刪除文件: `git rm test.txt`

- 撤銷刪除: `git checkout -- test.txt`

- 文件撤出暫存區: `git reset HEAD readme.txt`

- 丟棄工作區修改: `git checkout -- readme.txt`

- 已经提交的commit, 从一个分支放到另一个分支: `git cherry-pick <commit id>`

- git查看各个branch之间的关系图: `git log --graph --decorate --oneline --simplify-by-decoration --all`

- 回滚单个文件到某历史提交: `git reset commit_id 文件路径`

- 查看单个文件历史提交: `git log --pretty=oneline 文件名`

- 查看文件两个commit的区别: `git diff commit_id_1 commit_id_2 -- 文件路径`

# 子模块

- 添加子模块: `git submodule add 地址 本地路径(可选)`
- 克隆子模块: `cd 模块文件夹 git submodule init git submodule update ` 

参考: 
http://www.liaoxuefeng.com/