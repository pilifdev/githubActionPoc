# githubActionPoc


# Convert .md to .html GitHub Action - 1st option/attempt
In the GitHub UI, I created a file .github/workflows/mdToHtml.yml
I copied the content from https://github.com/pandoc/pandoc-action-example/blob/master/.github/workflows/simple.yml
I amended the content to use the pandoc cmd: pandoc -f markdown -t html5 -o output.html input.md -c style.css


# Convert .md to .html GitHub Action - 2nd option/attempt
I used as a reference: https://docs.github.com/en/free-pro-team@latest/actions/creating-actions/creating-a-docker-container-action
