INSERT INTO `addon_account` (name, label, shared) VALUES -- Ne pas modifier 
	('society_stripbarclub', 'StripBarClub', 1) -- Modifier le template + Template par le nom de votre job | gang RESPECTER LA MAJUSCULE
;

INSERT INTO `datastore` (name, label, shared) VALUES -- Ne pas modifier 
	('society_stripbarclub', 'StripBarClub', 1) -- Modifier le template + Template par le nom de votre job | gang RESPECTER LA MAJUSCULE
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES -- Ne pas modifier 
	('society_stripbarclub', 'StripBarClub', 1) -- Modifier le template + Template par le nom de votre job | gang RESPECTER LA MAJUSCULE
;

INSERT INTO `jobs` (name, label) VALUES -- Ne pas modifier 
	('stripbarclub', 'StripBarClub') -- Modifier le template + Template par le nom de votre job | gang RESPECTER LA MAJUSCULE
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary) VALUES -- Ne pas modifier 

-- Information utile 
-- (job_name, grade, name, label, salary)
-- ('template', 0, 'grade0', 'Grade0 ', 0)

-- template	= job_name
-- 0		= grade
-- grade0	= name
-- Grade0	= label
-- 0		= salary

  ('stripbarclub', 0, 'commis', 'Commis', 0), -- Modifier le template par le nom de votre job | gang  + grade0 + Grade0  RESPECTER LA MAJUSCULE (Exemple : ('burgershot', 0, 'interim', 'Interimaire', 0))
  ('stripbarclub', 1, 'barmaid', 'Barmaid', 0),  -- Modifier le template par le nom de votre job | gang  + grade1 + Grade1  RESPECTER LA MAJUSCULE (Exemple : ('burgershot', 1, 'vendeur', 'Vendeur', 0))
  ('stripbarclub', 2, 'chef-de-service', 'Chef de service', 0),  -- Modifier le template par le nom de votre job | gang  + grade2 + Grade2  RESPECTER LA MAJUSCULE (Exemple : ('burgershot', 2, 'cuisto', 'Cuisto', 0)) 
  ('stripbarclub', 3, 'adjoint', 'Adjoint', 0) 	   -- Modifier le template par le nom de votre job | gang  Attention ne pas modifier 'boss' mais PDG peux lui être modifier (Exemple : ('burgershot', 3, 'boss', 'Patron', 0))  
  ('stripbarclub', 4, 'boss', 'PDG', 0) 	   -- Modifier le template par le nom de votre job | gang  Attention ne pas modifier 'boss' mais PDG peux lui être modifier (Exemple : ('burgershot', 3, 'boss', 'Patron', 0))  
;