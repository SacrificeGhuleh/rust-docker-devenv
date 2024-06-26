# Rust Development Environment Setup with Docker in VSCode

This repository provides a seamless setup for Rust development using Docker within VSCode. It leverages the `.devcontainer` folder containing all necessary configurations for an integrated development environment (IDE). To enhance your Rust development experience, ensure you have the prerequisites installed and follow the simple example provided below.

## Prerequisites

Before proceeding, please install the following:

1. **Docker**: Ensure Docker is installed and running on your machine. Installation instructions can be found on the [official Docker website](https://docs.docker.com/get-docker/).
2. **Visual Studio Code (VSCode)**: Download and install VSCode from the [official site](https://code.visualstudio.com/).
3. **Remote - Containers Extension for VSCode**: Install the `ms-vscode-remote.remote-containers` extension by searching for it in the VSCode extensions view (`Ctrl+Shift+X`) or by visiting the [marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).


## Setting up your Rust development environment

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Open in VSCode**: Open the cloned repository folder in VSCode.
3. **Reopen in Container**: With the Remote - Containers extension installed, a prompt will appear in the bottom right corner suggesting to "Reopen in Container". Alternatively, you can press `F1` to open the command palette and select the "Remote-Containers: Reopen in Container" command.

VSCode will now use the Docker environment defined in the `.devcontainer` folder, ensuring all the required tools and extensions for Rust development are ready to use.

## Working with Rust Cargo

Here's how to create a new project, format code, and check for linting errors using Cargo:

1. **Creating a New Rust Project**:
   - To create a new library project, open a terminal in VSCode (`Ctrl+` `` ` ``) and run:
     ```
     cargo new <your_project_name>
     ```
   - If you want to create a binary project (with a main.rs), add the `--bin` flag:
     ```
     cargo new <your_project_name> --bin
     ```

2. **Formatting Your Code**:
   - Run the following command in the terminal to format your Rust code according to style guidelines:
     ```
     cargo fmt
     ```

3. **Linting with Clippy**:
   - Clippy is a helpful tool to catch common mistakes and improve your Rust code. To run Clippy, execute:
     ```
     cargo clippy
     ```
