echo 'CREATE TABLE IF NOT EXISTS `doctors`(
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` TEXT,
  `last_name` TEXT,
  `specialty` TEXT
);' | sqlite3 ../hospital.sqlite

echo 'CREATE TABLE IF NOT EXISTS `patients`(
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` TEXT,
  `last_name` TEXT,
  `age` INTEGER
);' | sqlite3 ../hospital.sqlite

echo 'CREATE TABLE IF NOT EXISTS `consultations`(
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `date` DATETIME,
  `doctor_id` INTEGER FOREING KEY,
  `patient_id` INTEGER FOREING KEY
);' | sqlite3 ../hospital.sqlite