# workflow-template-wdl

This repo includes a devcontainer configuration which will create a GitHub Codespace for WDL  development!

Devcontainer specs:
- [DevContainer config](.devcontainer/devcontainer.json)
- [Dockerfile](.devcontainer/Dockerfile)

# Getting started
- Create a new repo in GitHub using this [template](https://github.com/openwdl/workflow-template-wdl/generate).
- Open the repo in [Codespaces](../../codespaces)

## Setup Verification

#### Verify tools

- verify miniwdl via `miniwdl --help`
- verify cromwell via `cromwell --help`

#### Test miniwdl installation

- open a command prompt and run...
- `miniwdl run_self_test`
- …30 second test of the installation with a built-in workflow
- should print numerous log messages, and conclude with... 
- `miniwdl run_self_test OK` 




