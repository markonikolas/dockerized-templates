# Docker template files

## Instructions for new projects

Clone this repo then run:

```bash
git branch
* main
  wordpress
  bedrock
  nodejs
  ...
```

then select desired branch based on your project for example:

```bash
git branch <branch name>
```

## Instructions for existing projects

To add these files into existing project, you need to add a new origin and pull files form it. So go to your project and run:

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

add ```127.0.0.1 <branch-name>.local``` to ```/etc/hosts```

finally run ```docker-compose up -d``` to run docker in detached mode.

visit ```http://<branch-name>.local``` in your browser.
