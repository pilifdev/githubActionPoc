# Container image that runs your code
FROM pandoc/core:2.11.3.1

# Copies files from your repository to the filesystem path `/` of the container
COPY ../../../termsAndConditions.md /termsAndConditions.md
COPY convertToHtml.sh /convertToHtml.sh

# Code file to execute when the docker container starts up (`convertToHtml.sh`)
ENTRYPOINT ["/convertToHtml.sh"]
