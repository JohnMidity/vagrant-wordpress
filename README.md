# Vagrant Wordpress Development

Vagrant configuration for easier Wordpress development for both creating a website and/or developing a Wordpress Theme.

Based on earlier work at _srctips/vagrant-wordpress_  https://github.com/srctips/vagrant-wordpress

This Vagrant configuration will do the following:

* Download the Ubuntu 14.05 Vagrant box, if needed (_ubuntu/trusty64_)
* Apply all patches to the OS and install a few useful utilities
* Install all Wordpress related dependencies
	* Apache
	* MySQL
	* PHP
* Setup links to themes and media folders for wordpress content

## Requirements

 * Vagrant
 * Virtual Box with Guest Additions installed
 * Internet connection

## Setup

1. Clone this repo into unique folder

		git clone https://github.com/srctips/vagrant-wordpress.git my-wp-project
		
2. Review the files in the __setup__ folder.
	* Remember to sync up any changes between the other files -- for example any database connection updates.
3. Make a copy of Vagrantfile.default and name it Vagrantfile
4. Check contents of Vagrantfile and adjust where needed
5. Start Vagrant

		vagrant up

## Important Files and Folders

### Vagrant Folder

By default, Vagrant setups the __/vagrant__ folder on the guest OS within the virtual machine.
The __/vagrant__ folder maps to the source directory containing the _Vagrantfile_ on the host machine.

### Media

The __/vagrant/media__ maps to the _uploads_ folder in Wordpress. Any images here should
appear on both the host machine.

### Themes

The __/vagrant/themes__ maps to the _themes_ folder in Wordpress. Any new themes installed
via Wordpress will be reflected here and any new folders created here from scratch will
appear in Wordpress.

### Git Ignore

The __/vagrant/.gitignore__ file manages what files are excluded from version control within Git.
Currently, media and default Wordpress themes.