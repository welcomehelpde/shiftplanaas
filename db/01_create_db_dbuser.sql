create database shiftplanaas;

use shiftplanaas;

create user 'shiftplanaas'@'localhost' identified by 'plan_was';

GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP on shiftplanaas.* to 'shiftplanaas'@'localhost';

