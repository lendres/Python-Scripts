# Instructions
## Installation
Use the following steps to get started.
- Locate your Python folder.  By default it is located in: `%localappdata%\Programs\Python`
- Inside you will have one or more Python versions installed (the exact Python versions will depend on the ones you have installed from [python.org](python.org)).  Also add `envs` and `scripts` directories (if they do not exist).  You should have something similar to:
```
envs
Python310
Python311
Python312
scripts
```
- Clone this repository into the `scripts` directory.

## Usage
The usage and arguments needed are commented at the top of each script.  Use the `-h` command line argument to print the usage.  E.g.: `createenv -h`

Some general information items are:
- Environments will be created inside `envs` directory
- Activate is a convenient way to run the `envs/<name>/scripts/activate.bat` file.
- Deleting an environment just deletes the whole `envs/<name>` directory.
- Creating an environment corresponds to running `python -m venv envs/<name>` from the correct Python version.
- To deactivate an environment in the terminal, run `deactivate` in the usual manner.
