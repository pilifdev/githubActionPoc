# Prerequisites
Go to https://github.com/pilif42/githubActionPoc/settings/secrets/actions
Add Environment secrets:
    - env = dev: TSANDCS_HOST, TSANDCS_SSH_USER & TSANDCS_SSH_PASSWORD
    - same thing for env = test


# Workflow
Defined in .github/workflows/poc.yml

Inspired from:
    - https://github.com/pandoc/pandoc-action-example/blob/master/.github/workflows/advanced.yml
    - https://docs.github.com/en/free-pro-team@latest/actions/guides/storing-workflow-data-as-artifacts


# TODO
Upload version file.
Remove the hardcoded version (v3.0) from poc.yml. Instead, work it out from a tag?
How will we work out the history of Ts&Cs & their versions?
