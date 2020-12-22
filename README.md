# Prerequisites
- Go to https://github.com/pilif42/githubActionPoc/settings/secrets/actions
- Add Environment secrets:
    - env = dev: TSANDCS_HOST, TSANDCS_SSH_USER, PORT & KEY
    - same thing for env = test


# Strategy
- Have a branch per environment (dev, test, etc.). Currently, for this poc, we have only one branch withPandocContainer
which is for dev. In poc.yml, we set the variable environment to 'dev'. It will be used to pull the correct credentials 
to upload artifacts to the relevant server.
- When we want to upload new Ts & Cs for a given environment, we just do a PR to its branch and when merged, thanks to the 
'on push' defined in poc.yml, the workflow will be triggered.


# Workflow
Defined in .github/workflows/poc.yml

References used:
    - https://github.com/pandoc/pandoc-action-example/blob/master/.github/workflows/advanced.yml
    - https://docs.github.com/en/free-pro-team@latest/actions/guides/storing-workflow-data-as-artifacts
    - https://github.com/appleboy/scp-action


# TODO
Define the environment variable.
Upload version file.
Remove the hardcoded version (v3.0) from poc.yml. Instead, work it out from a tag?
How will we work out the history of Ts&Cs & their versions?
