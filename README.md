# Dockerized templates

## Supported templates
- [WordPress](https://github.com/WordPress/WordPress)
- [Bedrock](https://github.com/roots/bedrock)

Pick a boilerplate and clone it.

## Instructions for existing projects
If you already have cloned WordPress project, or currently working on one, switch to ``template/<template>`` branch to pull only docker files.

## Instructions for new projects
It's as simple as cloning the repo and building this project.

``git clone git@github.com:markonikolas/dockerized-templates.git``

or with GitHub-CLI:

``gh repo clone markonikolas/dockerized-templates``

Next, checkout desired branch for example:

``git checkout full/wordpress``
## Building project

Add ```127.0.0.1 wordpress.local``` to ```/etc/hosts```

Finally run ```docker-compose up -d``` to run docker in detached mode.

visit ```http://wordpress.local``` in your browser.

## Persisting WordPress Database

To persist WordPress database you'll need to put database dump inside ``wp-database`` folder in root.

To Dump a database, run from root:

```bash
docker-compose exec db mysqldump -uroot -v wordpress > wp-database/database.sql
```

Make sure you installed WordPress site first.

If you wish to rename demo database folder don't forget to change ``docker-compose`` file,
line that has volume reference ``./wp-database:/docker-entrypoint-initdb.d``
