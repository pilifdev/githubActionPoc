# Prerequisites
- Go to https://github.com/pilif42/githubActionPoc/settings/secrets/actions
- Add Environment secrets:
    - env = dev: TSANDCS_HOST, TSANDCS_SSH_USER, PORT & KEY
    - same thing for env = test.


# Strategy
- Have a branch per environment (dev, test, etc.). For this poc, we have only one branch main which is for dev. 
In poc.yml, for a given job (see tagAndPrepareVersionFile), we set the target environment (see name: dev). It will be used to pull the correct credentials.
- When we want to upload new Ts & Cs for a given environment, we just do a PR to its branch and when merged, thanks to the 
'on push' defined in poc.yml, the workflow will be triggered.


# Workflow
- Defined in .github/workflows/poc.yml

- References used:
    - https://github.com/pandoc/pandoc-action-example/blob/master/.github/workflows/advanced.yml
    - https://docs.github.com/en/free-pro-team@latest/actions/guides/storing-workflow-data-as-artifacts
    - https://github.com/appleboy/scp-action
    - https://github.com/mathieudutour/github-tag-action

- Note on the tag creation:
    - v0.0.1 was created with commit message = fix(pencil): downgrading to v5 as no tag generated with v5.1
        - convention to follow is explained at https://github.com/mathieudutour/github-tag-action#bumping
    
- Note that the scp-action steps have been left commented out as we do not have a sandbox server onto which we can upload termsAndConditions.html & version.txt.
