# markdown
### snippets
1. add the following json to user snippets(via 'configure user snippets')
```json
	"Red clipboard text": {
		"prefix": "cred",
		"body": [
			"<span style=\"color:red\">$CLIPBOARD</span>$0"
		],
		"description": "red clipboard text"
	},
	"Bold clipboard text": {
		"prefix": "cbold",
		"body": [
			"**$CLIPBOARD**"
		],
		"description": "bold clipboard text"
	},
	"Strikethrough clipboard text": {
		"prefix": "cstrikethrough",
		"body": [
			"~~$CLIPBOARD~~"
		],
		"description": "strikethrough clipboard text"
	},
```
2. add the following vim keymap to user setting
```json
"vim.visualModeKeyBindingsNonRecursive": [
        {
            // quick insert markdown snippet - bold selected text
            "before": [
                "<leader>",
                "c",
                "b"
            ],
            "after": [
                "\"",
                "+",
                "c", // "+c change text via unnamed register
                "c", // cbold is the snippet's prefix
                "b",
                "o",
                "l",
                "d",
            ]
        },
        {
            // quick insert markdown snippet - red selected text
            "before": [
                "<leader>",
                "c",
                "r"
            ],
            "after": [
                "\"",
                "+",
                "c",
                "c",
                "r",
                "e",
                "d",
            ]
        },
        {
            // quick insert markdown snippet - strikethrough selected text
            "before": [
                "<leader>",
                "c",
                "s"
            ],
            "after": [
                "\"",
                "+",
                "c",
                "c",
                "s",
                "t",
                "r",
                "i",
                "k",
                "e",
                "t",
                "h",
                "r",
                "o",
                "u",
                "g",
                "h",
            ]
        }
    ],
    "vim.normalModeKeyBindings": [
        {
            // quick insert markdown snippet - bold selected text
            "before": [
                "<leader>",
                "c",
                "b"
            ],
            "after": [
                "v",
                "i",
                "w",
                "<leader>",
                "c",
                "b",
            ]
        },
        {
            // quick insert markdown snippet - red selected text
            "before": [
                "<leader>",
                "c",
                "r"
            ],
            "after": [
                "v",
                "i",
                "w",
                "<leader>",
                "c",
                "r",
            ]
        },
        {
            // quick insert markdown snippet - strikethrough selected text
            "before": [
                "<leader>",
                "c",
                "s"
            ],
            "after": [
                "v",
                "i",
                "w",
                "<leader>",
                "c",
                "s",
            ]
        },
    ],
```
in visual mode, we can type `<leader>cb` to bold selected text
in normal mode, we can type `<leader>cb` to bold current word

refereces:
  - https://github.com/VSCodeVim/Vim/issues/5418

### tips
1. [paste url over selection to create link](https://github.com/yzhang-gh/vscode-markdown/issues/20)