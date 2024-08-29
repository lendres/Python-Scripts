The arguments needed are commented in each script.

You need the following directory structure (I believe by default located in "%localappdata%\Programs\Python"):

- envs
- Python310
- Python311
- Python312
- scripts

The environments will be created inside "envs", and "scripts" contains the files attached. You don't need all those Python versions, just the ones you want and have installed from python.org.

Essentially,
- Activating an environment corresponds to running the "envs/<name>/scripts/activate.bat" file
- Deleting an environment just deletes the whole "envs/<name>" directory.
- Creating an environment corresponds to running "python -m venv envs/<name>" from the correct Python version.
- To "deactivate" an environment in the terminal, just run "deactivate".
