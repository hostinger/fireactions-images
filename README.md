# fireactions-images

Public container images for [Fireactions](https://github.com/hostinger/fireactions)

## Images

| Image | Description | Tag |
| --- | --- | --- |
| `ubuntu20.04` | Based on Ubuntu 20.04. | `ghcr.io/hostinger/fireactions-images/ubuntu20.04:latest` |
| `ubuntu22.04` | Based on Ubuntu 22.04. | `ghcr.io/hostinger/fireactions-images/ubuntu22.04:latest` |

## Contributing

Contributions are welcome. Please follow the instructions below to add or update an image.

### Creating images

To add a new image, create a new directory with the name of the image and add a `Dockerfile` inside it. The `Dockerfile` must contain the GitHub Actions runner, Fireactions, and any other dependencies required for the image.

Don't forget to include the new image in [release-please-config.json](./release-please-config.json) file and [.release-please-manifest.json](./.release-please-manifest.json) file (set initial version to `0.0.1`).

### Updating images

To update an existing image, open a PR for the changes. The PR title must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification.

### Releasing images

Releases are automatically created using [release-please](https://github.com/googleapis/release-please). Upon pushing to the `main` branch, a release PR is created. To create a new release, simply merge the release PR and wait for the release to be created.

## License

See [LICENSE](LICENSE)
