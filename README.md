# Dockerized templates

## Instructions for new projects

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
git remote add template <repo-url>
git pull template template/<template>
```

## Building project

In order to clone this repository without cloning its history, we need to remote .git folder and template remote. You will need to save current remote **url**, to see what the current remote url is run:

```bash
git remote 
origin
template

git remote get-url origin git@github.com:markonikolas/dockerized-templates.gitgit@github.com
```

Save remote url somewhere we'll need it later.

Re-init git repository by running:

```bash
rm -rf .git
git init
```

Add old remote as origin for example:

```bash
git remote add origin
git remote set-url origin git@github.com...
git fetch -v
From github.com:markonikolas/dockerized-templates
 = [up to date]      main       -> origin/main
```

add ```127.0.0.1 <branch-name>.local``` to ```/etc/hosts```

finally run ```docker-compose up -d``` to run docker in detached mode.

visit ```http://<branch-name>.local``` in your browser.
