# Canvas LMS Docker

This repository provides Docker configurations for running [Canvas LMS](https://github.com/instructure/canvas-lms) in a containerized environment.

## Features

- Docker configurations for both Debian and Alpine Linux environments
- PostgreSQL database integration
- Redis cache support
- Mailpit for email testing

## Requirements

- Docker and Docker Compose
- [Task](https://taskfile.dev/)

## Quick Start

### Debian-based Setup

```bash
task setup DISTRIBUTION=debian
```

### Alpine-based Setup

```bash
task setup DISTRIBUTION=alpine
```

### Debian-based Run

```bash
task run DISTRIBUTION=debian
```

### Alpine-based Run

```bash
task run DISTRIBUTION=alpine
```

## Configuration

The environment is configured through the `.env` file which contains all the necessary environment variables.

### Default Settings

The following default values are set in the `.env` file:

- `EMAIL_DOMAIN`: example.com
  - Specifies the domain part of email addresses.
- `EMAIL_HOST_USER`: user
  - Authentication username for the SMTP server.
- `EMAIL_HOST_PASSWORD`: password
  - Authentication password for the SMTP server.
- `EMAIL_SENDER_ADDRESS`: canvas@${EMAIL_DOMAIN}
  - Email address used as the sender for outgoing emails.
- `EMAIL_SENDER_NAME`: Instructure Canvas
  - Display name used for outgoing emails.
- `CANVAS_LMS_DOMAIN`: localhost
  - Specifies the domain name for the Canvas LMS application.<br>
    Can be kept as "localhost" for local environments.
- `CANVAS_LMS_ADMIN_EMAIL`: admin@${EMAIL_DOMAIN}
  - Email address for the administrator account.<br>
    Automatically generated from the email domain.
- `CANVAS_LMS_ADMIN_PASSWORD`: password
  - Password for the administrator account.
- `CANVAS_LMS_ACCOUNT_NAME`: Canvas Admin
  - Name for the main Canvas LMS account.
- `CANVAS_LMS_STATS_COLLECTION`: opt_out
  - Controls usage statistics collection.<br>
    Options: opt_in, opt_out, or anonymized.
- `CANVAS_LMS_ENCRYPTION_KEY`: 12345678901234567890
  - Encryption key used by Canvas LMS for securing sensitive data.<br>
    This should be a unique, long string (at least 20 characters or more).<br>
    **Important**: Change this to a secure, random value in production environments.
- `POSTGRES_USER`: canvas
  - PostgreSQL database username.
- `POSTGRES_PASSWORD`: canvas
  - PostgreSQL database password.<br>
    Recommended to change to a strong password in production environments.
- `POSTGRES_DB`: canvas
  - PostgreSQL database name.
- `TZ`: UTC
  - Specifies the timezone.

The environment provides:

- Database: PostgreSQL
- Cache: Redis
- Email testing: Mailpit (accessible at `http://localhost:8025`)
- Canvas LMS Interface: `http://localhost`

## Shutdown

### Debian-based Shutdown

```bash
task shutdown DISTRIBUTION=debian
```

### Alpine-based Shutdown

```bash
task shutdown DISTRIBUTION=alpine
```

## License

See the [LICENSE](LICENSE) file for details.
