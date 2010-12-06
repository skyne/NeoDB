GRANT USAGE ON * . * TO 'neo'@'localhost' IDENTIFIED BY 'neo';

CREATE DATABASE `world`      DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE `characters` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE `realmd`     DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL ON `world` . *      TO 'neo'@'localhost' WITH GRANT OPTION;
GRANT ALL ON `characters` . * TO 'neo'@'localhost' WITH GRANT OPTION;
GRANT ALL ON `realmd` . *     TO 'neo'@'localhost' WITH GRANT OPTION;