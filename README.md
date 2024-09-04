# custom-action-example

## Azure Repo Counter Action

This repository contains a custom GitHub Action built using Docker. The action fetches the number of public repositories in the Microsoft Azure GitHub organization using the GitHub API.

## How to Use

To use this action in your GitHub workflows:

1. Create a workflow file in the `.github/workflows/` directory of your repository.
2. Use the action by pointing to this repository in your workflow.

```yaml
name: Example Workflow

on: [push]

jobs:
  my-job:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Run Azure Repo Counter Action
        uses: ./  # Uses the custom action in the same repository
        with:
          my-input: "Fetching Azure repositories"

      - name: Print output
        run: echo "Public repositories in Microsoft Azure: ${{ env.my-output }}"
