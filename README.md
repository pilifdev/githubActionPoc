# githubActionPoc


# Workflow
Defined in .github/workflows/deployTsAndCs.yml


# Action
Defined in .github/actions/poc-action/action.yml


# Important notes
- convertToHtml.sh was added to the repo with: git add --chmod=+x -- .github/actions/poc-action/convertToHtml.sh
	- this is to make sure that it can be executed in the Docker container. If you forget this step, you get: permission denied.
	