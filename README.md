wp-env
=====

This is a shell script to create and manage WordPress development environments.
Stop installing a new archive of WordPress for each new project.

1. Install WordPress once, add your favorite themes and plugins. This will be your default environment.
2. Init wp-env
3. Create new environments as copy of your default environment using simple commands.
4. Edit each environment separately (WP configuration, themes, and plugins)

![Out of Pluto / WordPress / wp-env](https://www.outofpluto.com/media/uploads/wp-config.png)

Install
-----
Follow the instruction to install and configure a WordPress https://codex.wordpress.org/Installing_WordPress. Then:


	git clone https://github.com/gotsunami/wp-env.git
	cd wp-env
	chmod 775 wp-env

copy wp-env to the root directory of your WordPress installation.
	

Init
-----

Choose and install themes, choose and install plugins. These themes and plugins will be used to create your `default` environment.

Once you are done:

	./wp-env init

Create a new environment
-----
	./wp-env create <env_name>

Note that you have a create a database for this environment.

Activate a environment
------------

	./wp-env activate <env_name>

Other commands
--------

	./wp-env
	Usage: ./wp-env <command> [<env_name>]

	Available commands:
	- init: Create the wordpress 'default' environment.

	- create: Create a new wordpress environment in <env_name>.
          If a 'default' environment exists, the newly created environment 
          is copied from it. Else, it is created from current WP installation.

	- activate: Activate an existing wordpress environment.

	- list: List the available wordpress environments.

	- current: Display currently active wordpress environment.

	HOW TO:
  	1. Start with './wp-env init'. This will create and activate a 'default' environment equal to your current working WordPress.

	2. Use './wp-env create <env_name>' to create a new environment copied from 'default'. Then edit './wp-envs/<env_name>/wp-config.php' if necessary. You also need to create a new database to match your new settings.
            CREATE database <env_name> CHARACTER SET utf8mb4
            GRANT ALL PRIVILEGES on <env_name>.* to <user>

  	3. Use './wp-env activate <env_name>' to load a environment
