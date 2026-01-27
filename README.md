# fireactions-images

Public container images for [Fireactions](https://github.com/hostinger/fireactions)

## Images

| Image | Description | Tag |
| --- | --- | --- |
| `ubuntu20.04` | Based on Ubuntu 20.04. | `ghcr.io/hostinger/fireactions-images/ubuntu20.04:latest` |
| `ubuntu22.04` | Based on Ubuntu 22.04. | `ghcr.io/hostinger/fireactions-images/ubuntu22.04:latest` |
| `ubuntu24.04` | Based on Ubuntu 24.04. | `ghcr.io/hostinger/fireactions-images/ubuntu24.04:latest` |

## Contributing

Contributions are welcome. Please follow the instructions below to add or update an image.

### Creating images

To add a new image, create a new directory with the name of the image and add a `Dockerfile` inside it. The `Dockerfile` must contain the GitHub Actions runner, Fireactions, and any other dependencies required for the image.

### Updating images

To update an existing image, open a PR for the changes. The PR title must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification.

### Releasing images

Images are automatically built and published to GitHub Container Registry after a successful push to the `main` branch.

## License

See [LICENSE](LICENSE)
