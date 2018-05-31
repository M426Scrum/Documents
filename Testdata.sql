INSERT INTO `room_management`.`event` (`eventId`, `title`, `description`, `organiser`) VALUES ('1', 'Geburtstagsfeier', 'Die Geburtstagsfeier von Max Muster', 'Fred Feuerstein');
INSERT INTO `room_management`.`event` (`eventId`, `title`, `description`, `organiser`) VALUES ('2', 'Weihnachtsfeier USB', 'Die Weihnachtsfeier der Firma USB', 'Thomas Tester');
INSERT INTO `room_management`.`event` (`eventId`, `title`, `description`, `organiser`) VALUES ('3', 'Firmenweiterbildung', 'Weiterbildung der Kaufleute der Firma CBB', 'Markus Meister');
INSERT INTO `room_management`.`room` (`roomId`, `name`, `description`) VALUES ('1', 'Versammlungssaal', 'geräumiger Saal mit mehreren Tischen und Stühlen');
INSERT INTO `room_management`.`room` (`roomId`, `name`, `description`) VALUES ('2', 'Ausbildungsraum', 'mittelgrosser Raum mit Tischen, Stühlen und Computern');
INSERT INTO `room_management`.`room` (`roomId`, `name`, `description`) VALUES ('3', 'Theatersaal', 'grosser Saal mit Sitzbänken, Bühne und Mikrofon');
INSERT INTO `room_management`.`reservation` (`reservationId`, `start`, `end`, `Room_roomId`, `Event_eventId`) VALUES ('1', '23.04.2018', '30.04.2018', '2', '3');
INSERT INTO `room_management`.`reservation` (`reservationId`, `start`, `end`, `Room_roomId`, `Event_eventId`) VALUES ('2', '12.07.2018', '23.07.2018', '1', '1');
INSERT INTO `room_management`.`reservation` (`reservationId`, `start`, `end`, `Room_roomId`, `Event_eventId`) VALUES ('3', '19.05.2018', '22.05.2018', '3', '2');
