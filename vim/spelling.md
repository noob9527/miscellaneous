# Spelling Checking

### Overview
开启拼写检查
```
:set spell
```
使用`[s`与`]s`在拼写错误间跳转，使用`z=`获取更正建议，通过在`z=`命令前加编号前缀的方式，可以直接跳过提示，如果有足够的信心确保第一项建议是正确的，就可以直接运行`1z=`。

| command | description |
|-|-|
| `]s` | previous mistake |
| `[s` | next mistake |
| `z=` | 更正建议 |
| `zg` | 添加当前单词到拼写文件 |
| `zw` | 把当前单词从拼写文件中移除 |
| `zug` | 撤销对当前单词的zg或zw命令 |

### 在插入模式下更正拼写错误
使用`<C-x>s`或`<C-x><C-s>`在插入模式触发拼写自动补全, 只有某行文本出现拼写错误不止一处时才值得这么做。

### 为专业术语添加拼写文件
example:
```
setlocal spelllang=en_us
setlocal spellfile=~/.vim/spell/en.utf-8.add
setlocal spellfile+=~/books/practical_vim/jargon.utf-8.add
```
~/.vim/spell/en.utf-8.add是缺省路径, 保存所有由zg命令添加的单词。现在对于每个被拼写检测误判的单词，可以通过2zg将其添加到vim的术语列表，也可以通过1zg将其加入缺省的单词列表
