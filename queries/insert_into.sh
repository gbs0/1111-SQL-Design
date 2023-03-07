echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("George", "Abidol", "Cardiac Surgery");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("Rosalind", "Franklin", "Chemistry");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("Virginia", "Apgar", "Anesthesiology");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("Sigmund", "Freud", "Psychology");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("Carl", "Jung", "Psychology");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("Elizabeth", "Blackwell", "Physician");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `doctors`(
`first_name`, `last_name`, `specialty`) VALUES ("Louis", "Pasteur", "Chemistry");' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `patients`(
    `first_name`, `last_name`, `age`) VALUES ("John", "Lennon", 47);' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `patients`(
    `first_name`, `last_name`, `age`) VALUES ("Paul", "McCartney", 48);' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `patients`(
    `first_name`, `last_name`, `age`) VALUES ("George", "Harrison", 49);' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `patients`(
    `first_name`, `last_name`, `age`) VALUES ("Ringo", "Starr", 50);' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `consultations`(
    `date`, `doctor_id`, `patient_id`) VALUES ("18/07/2022", 1, 1);' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `consultations`(
    `date`, `doctor_id`, `patient_id`) VALUES ("18/07/2022", 1, 2);' | sqlite3 ../hospital.sqlite

echo 'INSERT INTO `consultations`(
    `date`, `doctor_id`, `patient_id`) VALUES ("18/07/2022", 1, 3);' | sqlite3 ../hospital.sqlite 