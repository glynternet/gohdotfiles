More info here http://www.wolfe.id.au/2015/03/05/using-sublime-text-for-go-development/

run goGetTools.sh

Install package control into Sublime, if you haven't already.

Run Package control and install the following:
- GoSublime
- Install GoOracle

Put the following settings into GoSublime.sublime-settings
${HOME}/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/GoSublime.sublime-settings


```
{
	// you may set specific environment variables here
	// e.g "env": { "PATH": "$HOME/go/bin:$PATH" }
	// in values, $PATH and ${PATH} are replaced with
	// the corresponding environment(PATH) variable, if it exists.
	"env": {"GOPATH": "$HOME/Dropbox/go", "PATH": "$GOPATH/bin:$PATH" },

  "fmt_cmd": ["goimports"],

	// enable comp-lint, this will effectively disable the live linter
	"comp_lint_enabled": true,

	// list of commands to run
	"comp_lint_commands": [
	    // run `golint` on all files in the package
	    // "shell":true is required in order to run the command through your shell (to expand `*.go`)
	    // also see: the documentation for the `shell` setting in the default settings file ctrl+dot,ctrl+4
	    {"cmd": ["golint *.go"], "shell": true},

	    // run go vet on the package
	    {"cmd": ["go", "vet"]},

	    // run `go install` on the package. GOBIN is set,
	    // so `main` packages shouldn't result in the installation of a binary
	    {"cmd": ["go", "install"]}
	],

	"on_save": [
	    // run comp-lint when you save,
	    // naturally, you can also bind this command `gs_comp_lint`
	    // to a key binding if you want
	    {"cmd": "gs_comp_lint"}
	]
}
```