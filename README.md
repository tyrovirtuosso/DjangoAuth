# LearnEasyApp

A Supercharged Learning Experience.

# Commands used

`pyenv install 3.12.0` # for installing a local python
`pyenv local 3.12.0 `# Setting a Python version for this project directory
`pyenv init` # Initializing pyenv in project directory
`python --version `# checking python version
`poetry config virtualenvs.in-project true` # Tell poetry to create virtual environments in the current project directory
`poetry init`
`poetry add isort` # example of installing packages with poetry
`poetry add pytest --group dev` # example of installing development only packages with poetry
`poetry show --outdated` # show outdated packages
`poetry update` # Update all packages to their latest compatible versions

after creating `.pre-commit-config.yaml` file, do `pre-commit install` for using github hooks
to run all pre-commit hooks manually: `pre-commit run --all-files`

`npm start` for development and `npm build` for production.
`npm install -D tailwindcss` to install npm package as development dependency
`npx prettier --write your-file.js`
`npm run format:check` to run prettier on client

`docker buildx install `
`docker build -t learneasyapp_server:dev .`
`docker run -p 8000:8000 -it --rm learneasyapp_server:dev`
