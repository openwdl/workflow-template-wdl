# workflow-template-wdl

This repository is a template WDL respository.

Creating a repository from a template is similar to forking a repository, but there are important differences:

- A new fork includes the entire commit history of the parent repository, while a repository created from a template starts with a single commit.
- Commits to a fork don't appear in your contributions graph, while commits to a repository created from a template do appear in your contribution graph.
- A fork can be a temporary way to contribute code to an existing project, while creating a repository from a template starts a new project quickly.


## Devcontainer
This repo includes a devcontainer configuration which will create a GitHub Codespace for WDL development!

Devcontainer specs:
- [DevContainer config](.devcontainer/devcontainer.json)
- [Dockerfile](.devcontainer/Dockerfile)

Tools included in container for development:
- [MiniWDL](https://github.com/chanzuckerberg/miniwdl)
- [Cromwell](https://github.com/broadinstitute/cromwell)
- [WOMTool](https://cromwell.readthedocs.io/en/stable/WOMtool/)
- [sprocket](https://github.com/stjude-rust-labs/sprocket)
- [shellcheck](https://github.com/koalaman/shellcheck)

## Dockstore template

This repo includes a [Dockestore](https://dockstore.org/) [template](.github/.dockstore.yml) for automatic registering of you workflow using the [Dockstore Github App](https://docs.dockstore.org/en/stable/getting-started/github-apps/github-apps-landing-page.html)

## Unit and Integration Tests

This repo uses [pytest-workflow](https://pytest-workflow.readthedocs.io/) for testing WDL for unit and integration tests. Examples can be found in;
- [unit test](.github/workflows/unit.yml)
- [integration test](.github/workflows/integration.yml)

Additionally, the [wdl syntax](.github/workflows/lint.yml) is checked using the following tools:
- MiniWDL
- WOMTool
- sprocket

## Getting started
- Create a new repo in GitHub using this [template](https://github.com/openwdl/workflow-template-wdl/generate).
- Open the repo in [Codespaces](../../codespaces)

### Setup Verification

#### Verify tools

- verify miniwdl via `miniwdl --help`
- verify cromwell via `cromwell --help`

#### Test miniwdl installation

- open a command prompt and run...
- `miniwdl run_self_test`
- …30 second test of the installation with a built-in workflow
- should print numerous log messages, and conclude with... 
- `miniwdl run_self_test OK` 

#### Test cromwell/womtools installation

- open a command prompt and run...
- `cromwell run test/test.wdl`
- …test of the example workflow
- should print numerous log messages, and conclude with... 
- `Workflow HelloWorld complete. Final Outputs:` 
- `womtool --help`
- should print help documentation 

#### Test sprocket installation

- open a command prompt and run...
- `sprocket lint test/test.wdl`
- should print the following error
```
workflow HelloWorld {
^ The following tokens are required: document.
```



