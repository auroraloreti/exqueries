-- 1. Visualizza le passeggere di sesso femminile che sono sopravvissute e hanno più di 30 anni.
SELECT * 
FROM tested
WHERE Sex = 'female' AND Survived = 1 AND Age > 30;

-- 2. Trova l'età media degli uomini che non sono sopravvissuti.
SELECT AVG(Age) 
FROM tested
WHERE Sex = 'male' AND Survived = 0;

-- 3. Visualizza le informazioni dei passeggeri che hanno speso tra $20 e $50 per i loro biglietti e sono saliti a bordo della nave al porto 'C'.
SELECT * 
FROM tested
WHERE Fare BETWEEN 20 AND 50 AND Embarked = 'C';

-- 4. Trova il numero totale dei sopravvissuti in prima classe
SELECT COUNT(*) 
FROM tested
WHERE Survived = 1 AND Pclass = 1;

-- 5. Mostra le informazioni dei passeggeri che sono saliti a bordo da Cherbourg (porto 'C') e hanno speso più di $75 per i loro biglietti
SELECT * 
FROM tested
WHERE Embarked = 'C' AND Fare > 75;
