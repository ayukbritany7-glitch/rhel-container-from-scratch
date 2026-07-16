# Contributing Guide

Thank you for your interest in contributing to this project! Here's how to get started.

## Development Setup

### Prerequisites
- Linux system (RHEL 8+, CentOS 8+, Fedora, or equivalent)
- Buildah >= 1.24
- Podman >= 3.0
- Bash >= 4.0
- `sudo` access (for now; we're working to eliminate this)
- ShellCheck (for linting)

### Getting Started

```bash
# Clone the repository
git clone https://github.com/ayukbritany7-glitch/rhel-container-from-scratch.git
cd rhel-container-from-scratch

# Check out the development branch
git checkout -b feature/my-feature

# Make your changes
# Test locally (see Testing section)

# Run linting
make lint

# Push and create a pull request
```

## Making Changes

### Code Style
- **Shell Scripts**: Follow Google Shell Style Guide
  - Use `set -e` for error handling
  - Quote all variables: `"$var"`
  - Use `local` for function variables
  - Add comments for non-obvious logic

### Testing

```bash
# Build the image locally
make build

# Run tests
make test

# Run security scan
make scan

# Clean up artifacts
make clean
```

### Commit Messages

Use clear, descriptive commit messages:

```
# Good
feat: remove sudo requirement from build.sh
fix: validate filesystem permissions before commit
docs: add troubleshooting section to README

# Avoid
fixed stuff
updated
changes
```

## Pull Request Process

1. **Update Documentation**: If your change affects users, update README.md
2. **Add Tests**: New features should include test coverage
3. **Pass Linting**: Run `make lint` and fix any issues
4. **Run Full Test Suite**: `make test` must pass
5. **Request Review**: Tag maintainers for code review
6. **Address Feedback**: Respond to review comments

## Reporting Issues

Before opening an issue, check if it's already been reported. Include:

- Your system info (OS, Buildah/Podman versions)
- Steps to reproduce
- Expected vs. actual behavior
- Error messages or logs
- Screenshots (if applicable)

## Project Structure

```
.
├── build.sh           # Main build script (core logic)
├── test.sh            # Integration tests
├── Makefile           # Build automation
├── README.md          # User documentation
├── docs/              # Detailed guides
│   ├── troubleshooting.md
│   └── architecture.md
└── .github/workflows/ # CI/CD pipelines
    ├── test.yml      # Test on push/PR
    ├── build.yml     # Build on tags
    └── scan.yml      # Security scanning
```

## Getting Help

- **Questions**: Open a GitHub Discussion
- **Bugs**: Open an Issue with the `bug` label
- **Features**: Open an Issue with the `enhancement` label
- **Security**: See SECURITY.md

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
