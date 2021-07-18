# Dockerized templates

## Instructions for new projects
T
Templates are limited on this project for now, I plan to add more templates in the future.

### Supported templates
- [WordPress](https://github.com/WordPress/WordPress)
- [Bedrock](https://github.com/roots/bedrock)

Pick a boilerplate and clone it.

## Instructions for existing projects

To add these files into existing project, you need to add a new origin and pull files form it.
Go to your project and run:

```bash
cd <project-name>
git remote add origin <repo-url>
git branch
* main
  wordpress
  bedrock
  nodejs
  ...
git branch <branch name>
git pull --allow-unrelated-histories
```

## Building project

Re-init git repository

```bash
rm -rf .git
git init
```

add ```127.0.0.1 <branch-name>.local``` to ```/etc/hosts```

finally run ```docker-compose up -d``` to run docker in detached mode.

visit ```http://<branch-name>.local``` in your browser.
