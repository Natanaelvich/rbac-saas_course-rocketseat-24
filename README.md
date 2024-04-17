# RBAC Study Project with Next.js, Node.js, and Turborepo

This is a study project focused on Role-Based Access Control (RBAC) using Next.js and Node.js, managed with Turborepo.

## Project Structure

The project is structured as a monorepo using Turborepo and is divided into several packages:

- ``config``: Contains configuration files for ESLint, Prettier, and TypeScript.
- `ui`: A UI library that includes React components like `Button`, `Card`, and `Code`.

## Getting Started

To get started with this project, you need to have Node.js (version 18 or higher) installed on your machine.

1. Clone the repository.
2. Install the dependencies with `yarn install`.
3. Start the development server with `yarn dev`.

## Scripts

The project includes the following scripts:

- [`build`]: Builds the project using Turborepo.
- [`dev`]: Starts the development server.
- [`lint`]: Lints the project using ESLint.

## Code Generation

The project includes a generator for creating new React components in the UI library. To generate a new component, run `yarn generate:component`.

## Contributing

Contributions are welcome. Please make sure to lint your code before submitting a pull request.

## License

This project is licensed under the MIT License.