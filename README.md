# Canvas LMS Docker

This repository provides Docker configurations for running [Canvas LMS](https://github.com/instructure/canvas-lms) in a containerized environment.

## Features

- Docker configurations for both Debian and Alpine Linux environments
- PostgreSQL database integration
- Redis cache support
- Mailpit for email testing

## Requirements

- Docker and Docker Compose

## Quick Start

### Debian-based Setup

```bash
# Linux/macOS
./setup-debian.sh
./run-debian.sh

# Windows
setup-debian.bat
run-debian.bat
```

### Alpine-based Setup

```bash
# Linux/macOS
./setup-alpine.sh
./run-alpine.sh

# Windows
setup-alpine.bat
run-alpine.bat
```

## Configuration

The environment is configured through the `.env` file which contains all the necessary environment variables.

### Default Settings

The following default values are set in the `.env` file:

- `EMAIL_DOMAIN`: example.com
  - Specifies the domain part of email addresses.
- `EMAIL_HOST_USER`: (empty)
  - Authentication username for the SMTP server. Can be left empty when using Mailpit.
- `EMAIL_HOST_PASSWORD`: (empty)
  - Authentication password for the SMTP server. Can be left empty when using Mailpit.
- `EMAIL_SENDER_ADDRESS`: canvas@${EMAIL_DOMAIN}
  - Email address used as the sender for outgoing emails.
- `EMAIL_SENDER_NAME`: Instructure Canvas
  - Display name used for outgoing emails.
- `CANVAS_LMS_DOMAIN`: localhost
  - Specifies the domain name for the Canvas LMS application. Can be kept as "localhost" for local environments.
- `CANVAS_LMS_ADMIN_EMAIL`: admin@${EMAIL_DOMAIN}
  - Email address for the administrator account. Automatically generated from the email domain.
- `CANVAS_LMS_ADMIN_PASSWORD`: password
  - Password for the administrator account.
- `CANVAS_LMS_ACCOUNT_NAME`: Canvas Admin
  - Name for the main Canvas account.
- `CANVAS_LMS_STATS_COLLECTION`: opt_out
  - Controls usage statistics collection. Options: opt_in, opt_out, or anonymized.
- `POSTGRES_USER`: canvas
  - PostgreSQL database username.
- `POSTGRES_PASSWORD`: canvas
  - PostgreSQL database password. Recommended to change to a strong password in production environments.
- `POSTGRES_DB`: canvas
  - PostgreSQL database name.
- `TZ`: Asia/Tokyo
  - Specifies the timezone.

The environment provides:

- Database: PostgreSQL
- Cache: Redis
- Email testing: Mailpit (accessible at `http://localhost:8025`)
- Canvas LMS Interface: `http://localhost`

## Shutting Down

### Debian-based Shutdown

```bash
# Linux/macOS
./shutdown-debian.sh

# Windows
shutdown-debian.bat
```

### Alpine-based Shutdown

```bash
# Linux/macOS
./shutdown-alpine.sh

# Windows
shutdown-alpine.bat
```

## License

See the [LICENSE](LICENSE) file for details.
