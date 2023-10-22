# Django-NextJS Authentication Page

<!-- ![Project Image](link-to-project-image) -->

This project demonstrates how to implement a fully featured JSON Web Token(JWT) Authentication system using Django and NextJS. It includes features such as account activation, password reset, and social authentication with Google OAuth2.

## Table of Contents

- [Django-NextJS Authentication Page](#django-nextjs-authentication-page)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Getting Started

To get a local copy up and running, follow these simple steps:

1. Clone the repository: `git clone <repo-link>`
2. Navigate to the project directory: `cd <project-directory>`
3. Run the Docker compose file using the command: `docker-compose --env-file configs/.env.dev up --build`. Make sure docker is installed and running.

**Note:** You will need a `.env.dev` file in the `configs` folder. An example `.env.dev_sample` is provided in the folder which you will need to rename. You will also need Google Auth keys and AWS SES keys for email functionality.

## Usage

After building the project, use a non-Chromium browser like Safari or Firefox, as HTTPS is needed for OAuth to work in development environments. Navigate to `http://localhost:3000` or `http://127.0.0.1:3000` to see the fully functional login page.

## Contributing

We welcome contributions from the community.

## License

This project is licensed under the MIT License.
