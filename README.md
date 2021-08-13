# Dockerized templates

## Supported templates
- [WordPress](https://github.com/WordPress/WordPress)
- [Bedrock](https://github.com/roots/bedrock)

Pick a boilerplate and clone it.

## Instructions for new projects
Switch to ``full/<template>`` branch to start fresh project with boilerplate code of your liking.
## Instructions for existing projects
Switch to ``template/<template>`` branch to pull only docker files.

To add these files into existing project, you need to add a new origin and pull files form it.
Go to your project and run:

```bash
cd <project-name>
git remote add template <repo-url>
git pull template template/<template>
git checkout --theirs README.md CHANGELOG.md (only if you have conflicts in these files)
```

If you have readme and changelog named differently, feel free to remove them by running:
``rm CHANGELOG.md README.md``

In order to clone this repository without cloning its history, we need to remove ``.git`` folder and ``template`` remote. You will need to save the current remote **url**, to see what the current remote url is run:

```bash
git remote 
origin
template

git remote get-url origin 
git@github.com:markonikolas/dockerized-templates.gitgit@github.com
```

Save remote url somewhere we'll need it later.

Re-init git repository by running:

```bash
rm -rf .git
git init
```

Add old remote as origin for example:

```bash
git remote add origin git@github.com:markonikolas/dockerized-templates.gitgit@github.com
git fetch -v
From github.com:markonikolas/dockerized-templates
 = [up to date]      main       -> origin/main
 ...
 
```

## Building project

add ```127.0.0.1 wordpress.local``` to ```/etc/hosts```

finally run ```docker-compose up -d``` to run docker in detached mode.

visit ```http://wordpress.local``` in your browser.

## Persisting WordPress Database

To persist WordPress database you'll need to put database dump inside ``wp-database`` folder in root.

To Dump a database run from root:

```bash
docker-compose exec db mysqldump -uroot -v wordpress > wp-database/database.sql
```

If you wish to rename demo database folder don't forget to change ``docker-compose`` file,
line that has volume reference ``./wp-database:/docker-entrypoint-initdb.d``
