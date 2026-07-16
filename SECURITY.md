# Security Policy

## Reporting a Vulnerability

If you discover a security vulnerability in this project, please email security concerns to the repository maintainer rather than using the public issue tracker.

### What to include in your report:
- Description of the vulnerability
- Steps to reproduce (if applicable)
- Potential impact
- Suggested fix (if you have one)

### What to expect:
- Acknowledgment of your report within 48 hours
- Regular updates on the fix progress
- Credit in release notes (unless you prefer anonymity)

## Security Best Practices

This project follows these security principles:

1. **Image Scanning**: All container images are scanned for CVEs before release
2. **Minimal Base**: RHEL scratch images contain only essential packages
3. **No Root Execution**: Default containers do not run as root
4. **Regular Updates**: Dependencies are updated regularly

## Supported Versions

Only the latest release receives security updates. Users are encouraged to upgrade promptly.

## Dependencies

This project depends on:
- Red Hat Enterprise Linux 9 packages
- Buildah (for image construction)
- Podman (for image execution)

Please keep these tools updated to the latest versions.
