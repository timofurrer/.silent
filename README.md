# silent
> This small shell script provides a function to execute a command in silent mode<br />
> *Version: 0.00.01*

***

**Auhtor:** Timo Furrer <tuxtimo@gmail.com><br />
**License:** GPL<br />
**Version:** 0.00.01

## Install

### Whole git repository

Clone the git repository first:

    git clone https://github.com/timofurrer/.silent.git ~/.silent

Now you can source the `silent.sh` inside the `~/.silent` directory, or whereever you cloned the repository into.

    source ~/silent/silent.sh

If you want to have this command available in every shell you open, you can but the following line into your configuration file, like the `~/.bashrc`:

    # Provide silent command
    source ~/silent/silent.sh

### I just want the `silent.sh`

Download latest the `silent.sh` from github:

    wget https://raw.github.com/timofurrer/.silent/master/silent.sh -O ~/.silent.sh

Now you can source the downloaded `~/.silent.sh`:

    source ~/.silent.sh

If you want to have this command available in every shell you open, you can but the following line into your configuration file, like the `~/.bashrc`:

    # Provide silent command
    source ~/.silent.sh


## Use it

This command is a wrapper for every available command in your shell which executes this command in a silent mode, so nothing will be printed.

    silent echo "Hello World"
    silent cd Work
    silent true
    silent false
    silent git grep "Hello World"

## Can I see the last output of a silent command?

Yes you can!<br />
There are to variables defined:

    SILENT_OUTPUT_FILE=~/.last_silent_output
    SILENT_ERROR_OUTPUT_FILE=~/.last_silent_error_output

If you want to use another target file, just set the variable by our own.<br />

### Examples:

Silent echo:

    $ silent echo Hello World
    $ cat .last_silent_output
    Hello World
    $ cat .last_silent_error_output
    $

Silent unexisting command call:

    $ silent unexisting_command
    $ cat .last_silent_output
    $ cat .last_silent_error_output
    unexisting_command: command not found
    $
