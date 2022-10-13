# dev-tools

This is a collection of template directories and bash scripts (written for macOS) that I use, along with aliases, to streamline my process for creating new projects.

## Instructions:

In order to run these scripts from anywhere in your terminal, you do need to export the scripts inside of your terminal's source file, which varies depending on your OS and setup. For instance, I use Mac and oh-my-zsh, so my source file is found at `~/.zshrc` or `/Users/jenna/.zshrc`. To export the scripts, include this line:

    export PATH="[...]/dev-tools/bin:$PATH"

where [...] is the absolute working directory path before the `dev-tools` directory. I prefer to have my `dev-tools` directory in my home (`~`) directory, but it's up to you.

The source file is also where you can set up your terminal aliases. Because I tend to access and modify my source file a lot, I have two aliases to streamline that process: `alias zshrc="cd ~ && code .zshrc"`, which navigates to my home directory and then opens up my source file inside of VS Code; and `alias src="source ~/.zshrc"`, which updates the source file inside of my current terminal session.

The aliases I use are:

        alias copymvc="bash copy-mvc-directory.sh"
        alias copyboot="bash copy-boot-directory.sh"
        alias copymini="bash copy-mini-directory.sh"
        alias gitmvc="bash git-copy-mvc-directory.sh"
        alias gitboot="bash git-copy-boot-directory.sh"
        alias gitmini="bash git-copy-mini-directory.sh"

The bash scripts require one argument: the name of the project/directory you wish to create. They're set up so that all you have to do is navigate to the parent directory where you want to have the directory created and run the desired script passing in the name of the directory. (Note: If you wish to use spaces in your directory name, don't forget to wrap it in quotes.)

For the scripts that include git setup, it is necessary to first create the remote repository using the same name that you pass in as an argument before running the script.

##### Script Setup:

At the top of each script file, you can find the variable(s) for which you need to input the correct value.

![Screenshot](/images/screenshot.png)

If you're not running a git script, then the only variable needed is `pwdHead`, but if you are running a git script, then you also need to assign your GitHub username to `username`.

#### Example:

To create a mini project called "dev-tools-example" with git functionality, I would first log in to GitHub and create a new repo named "dev-tools-example" with the default settings. Then I would navigate to the parent directory where I want to place the project and run `gitmini dev-tools-example`, which creates:

    - [parent directory]
        - dev-tools-example
            - index.html
            - script.js
            - style.css

The script also initializes the project as a git repository, connects it to the remote GitHub repository, commits all initial files, and pushes it.
