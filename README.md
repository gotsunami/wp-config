wp-config
=====

This is a shell script to create and manage WordPress development environments.
Stop installing a new archive of WordPress for each new project.

1. Install WordPress once, add your favorite themes and plugins. This will be your default configuration.
2. Init wp-config
3. Create new environments as copy of your default environment using simple commands.
4. Edit each environment separately (WP configuration, themes, and plugins)

Install
-----
Follow the instruction to install and configure a WordPress installation https://codex.wordpress.org/Installing_WordPress. Then:


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

	./wp-config list
	./wp-config current
	./wp-config

