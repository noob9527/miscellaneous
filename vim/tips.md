# Tips

### Markdown Table

##### Prerequisite
- install plugin vim-easy-align
- `xmap <leader>a<bar> :EasyAlign *<bar><CR>`
##### Usage
1. select the table and goes to visual mode
2. execute `<leader>a|`

Tips: to modify a markdown table, it is convenient to change to the replace mode(R).

### Auto Completion

| command | description |
|-|-|
| `<C-n>` | next |
| `<C-p>` | previous |
| `<C-y>` | yes |
| `<C-e>` | exit |

### Macro

| command               | description                              |
| -                     | -                                        |
| `q{register}`         | start recording at specified register    |
| `q`                   | stop recording                           |
| `@{register}`         | execute the specified macro              |
| `@@`                  | execute the previous macro               |
| `:reg {register}`     | view macro at specified register         |
| `:normal @{register}` | execute the specified macro on each line |

### Register
There are ten types of registers:
1. The unnamed register ""
2. 10 numbered registers "0 to "9
3. The small delete register "-
4. 26 named registers "a to "z or "A to "Z
5. three read-only registers ":, "., "%
6. alternate buffer register "#
7. the expression register "=
8. The selection and drop registers "*, "+ and "~ 
9. The black hole register "_
10. Last search pattern register "/
