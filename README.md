wp-config
=====

This is a shell script to create and manage WordPress development environments.
Stop installing a new archive of WordPress for each new project.

1. Install WordPress once, add your favorite themes and plugins. This will be your default configuration.
2. Init wp-config
3. Create new environments as copy of your default environment using simple commands.
4. Edit each environment separately (WP configuration, themes, and plugins)

![Out of Pluto / WordPress / wp-config](https://www.outofpluto.com/media/uploads/wp-config.png)

Install
-----
Follow the instruction to install and configure a WordPress https://codex.wordpress.org/Installing_WordPress. Then:


	git clone https://github.com/gotsunami/wp-config.git
	cd wp-config
	chmod 775 wp-config

copy wp-config to the root directory of your WordPress installation.
	

Init
-----

Choose and install themes, choose and install plugins. These themes and plugins will be used to create your `default` configuration.

Once you are done:

	./wp-config init

Create a new configuration
-----
	./wp-config create <config_name>

Note that you have a create a database for this configuration.

Activate a configuration
------------

	./wp-config activate <config_name>

Other commands
--------

	./wp-config
	Usage: ./wp-config <command> [<config_name>]

	Available commands:
	- init: Create the wordpress 'default' configuration.

	- create: Create a new wordpress configuration in <config_name>.
          If a 'default' configuration exists, the newly created configuration 
          is copied from it. Else, it is created from current WP installation.

	- activate: Activate an existing wordpress configuration.

	- list: List the available wordpress configurations.

	- current: Display currently active wordpress configuration.

	HOW TO:
  	1. Start with './wp-config init'. This will create and activate a 'default' configuration equal to your current working WordPress.

	2. Use './wp-config create <config_name>' to create a new configuration copied from 'default'. Then edit './wp-configs/<config_name>/wp-config.php' if necessary. You also need to create a new database to match your new settings.
            CREATE database <config_name> CHARACTER SET utf8mb4
            GRANT ALL PRIVILEGES on <config_name>.* to <user>

  	3. Use './wp-config activate <config_name>' to load a configuration
