# Game Genie

## A web application with a video game database.

#### By _**Rebecca Allen**_

## Setup/Installation requirements

* If you want to interact with the finished program, please visit: [http://18.220.178.242:8080/GameGenie/](Game Genie).
* In order to edit this project and work with it on your own machine you will need a terminal application such as Terminal or Bash. Since this project has a Gradle nature, you will need to have the Spring Tool Suite installed. You will also need a database server program such as MAMP or LAMP.
* Start by opening the terminal application and typing the command
```
git clone https://github.com/RAAllen/Game_Genie.git
```
after navigating with the `cd` command to the location you would like the project to be cloned into.
* Use the terminal application to navigate to the project directory you just cloned down off of GitHub using the "cd" command.
* If at any point during this next part of the set up process you get a popup system window to enter a password, it is asking for your computer user account password. Start by opening up your MAMP or LAMP. From the preferences menu of the application, select "Ports" and "Set Web and MySQL ports to 80 & 3306". Select to "Start Servers" from the main window of your application. Return to your terminal, you will need to set up the included games.sql database in order to correctly interact with this program. You will be typing a series of commands in the terminal.
```
mysql -u root -p < games.sql
mysql -u root -p
```
You will then be prompted to enter a password in the terminal, type `root`.
```
mysql> CREATE USER gamesuser@localhost IDENTIFIED BY 'gamesuser';
mysql> exit;
mysql -u gamesuser -p
```
You will then be prompted to enter a password in the terminal, type `gamesuser`. You can now use mysql syntax to interact with the database.
* From this point on you should be able to edit the program and see changes when altering it in the Spring Tool Suite.


## Program Specifications

* The user will be presented with a visual display of the contents of the database at the index.

* The user will be able to search for a game by its id and be sent to a new jsp view displaying all the information about that game.

* The user will be able to search for the game by a keyword and be sent to a new jsp view displaying all the games that match the keyword.

* The user will be able to edit a games data values and have those changes be reflect in the database.

* The user will be able to delete a game and have it removed from the database.

* The user will be able to add a new game to the database.


## Support and Contact Details

_Please contact [Rebecca Allen](RebeccaZarsky@gmail.com) for technical questions or assistance running the program._


## Technologies Used

_This program was made utilizing Java, SQL, MySql, Gradle, Spring Tool Suite, Apache, Atom and the Eclipse Integrated Development Environment._


## License

_This program is licensed under the MIT license._

Copyright (c) 2018 **_Rebecca Allen_**
