SELECT * FROM Osoba;

SELECT Jmeno, Prijmeni FROM Osoba;

SELECT * FROM Osoba WHERE Jmeno = 'Jan';

SELECT * FROM Osoba WHERE Mesto = 'Brno';

SELECT * FROM Osoba WHERE Vyska = 185;

SELECT * FROM Osoba WHERE Jmeno LIKE 'D%';

SELECT * FROM Osoba WHERE Jmeno LIKE '%an%';

SELECT * FROM Osoba WHERE Jmeno LIKE '_a%';

SELECT * FROM Osoba WHERE Mesto NOT LIKE 'Brno';

SELECT * FROM Osoba WHERE Vyska > 175;

SELECT * FROM Osoba WHERE Vyska BETWEEN 160 AND 170;

SELECT * FROM Osoba WHERE Jmeno IN ('Jana', 'Lucie', 'Jan');

SELECT * FROM Osoba WHERE id_zverokruh != 5;

SELECT * FROM Osoba WHERE Jmeno LIKE 'J%' AND Mesto = 'Brno';

SELECT * FROM Osoba WHERE Vyska < 170 OR Vyska > 175;

SELECT * FROM Osoba WHERE Email LIKE '%seznam%' AND Mesto != 'Brno';

sELECT DISTINCT mesto from Osoba;

SELECT DISTINCT Jmeno, Prijmeni FROM Osoba ORder BY Prijmeni ASC;

SELECT DISTINCT Jmeno FROM OSOba ORDER BY Jmeno DESC LIMIT 3;

SELECT DISTINCT Mesto FROM Osoba ORDER BY Mesto ASC LIMIT 60 OFFSET 1;

SELECT COUNT(Mesto) FROM Osoba WHERE mesto LIKE 'Brno';

SELECT SUM(vyska) FROM Osoba;

SELECT AVG(vyska) FROM Osoba;

SELECT MIN(vyska), MAX(vyska) FROM Osoba;

SELECT COUNT(jmeno) FROM Osoba WHERE jmeno LIKE 'Veronika';

SELECT MAX(vyska) FROM Osoba;

SELECT AVG(vyska) FROM Osoba;

SELECT * FROM Tricko;

SELECT * FROM Znacka;

SELECT Tricko.barva, Znacka.nazev FROM Tricko INNER JOIN Znacka ON  Znacka.ID = Tricko.znackaID;

SELECT Jmeno, Prijmeni, Nazev, Osoba.id_zverokruh FROM Osoba INNER JOIN Zverokruh ON Osoba.Id_Zverokruh = Zverokruh.Id_Zverokruh;

SELECT Jmeno, Prijmeni, VlastnictviKnihy.ISBN FROM Osoba LEFT JOIN VlastnictviKnihy ON Osoba.id = VlastnictviKnihy.OsobaID;

SELECT Jmeno, Prijmeni, VlastnictviKnihy.ISBN, nazev FROM Osoba LEFT JOIN VlastnictviKnihy ON Osoba.id = VlastnictviKnihy.OsobaID LEFT JOIN Kniha ON VlastnictviKnihy.ISBN = Kniha.isbn;

SELECT * FROM Osoba FULL OUTER JOIN Outfit ON Osoba.Id_Outfit = Outfit.id;

SELECT Jmeno, prijmeni FROM Osoba LEFT JOIN Outfit ON Osoba.Id_Outfit = Outfit.ID WHERE Outfit.sukneid IS NULL;

SELECT (MAX(vek) - MIN(vek)) FROM Osoba;

SELECT *, (vyska - vek) AS koeficientVyskaMinusVek FROM Osoba;

SELECT (MAX(vyska) - MIN(vyska)) AS rozdilVysek FROM Osoba;

SELECT COUNT(barva), barva FROM Kalhoty GROUP BY barva ORDER BY COUNT(barva) DESC;

SELECT mesto, COUNT(*), MAX(Vyska), MIN(vyska), AVG(VEK) FROM OSOBA GROUP BY mesto HAVING COUNT(*) > 1;

SELECT Zverokruh.Nazev, COUNT(*) FROM OSOBA INNER JOIN Zverokruh ON Zverokruh.Id_Zverokruh = Osoba.id_zverokruh GROUP BY Zverokruh.id_zverokruh;

SELECT DISTINCT Znacka.Nazev FROM Znacka 
INNER JOIN Sukne ON Znacka.ID = Sukne.ZnackaID 
INNER JOIN Outfit ON Sukne.ID = Outfit.sukneid
INNER JOIN Osoba ON Outfit.ID = Osoba.Id_Outfit;

SELECT Znacka.Nazev AS Znacka,Sukne.Material AS Sukne,Kalhoty.Material AS Kalhoty FROM Znacka
LEFT JOIN Sukne ON Znacka.Id=Sukne.ZnackaID
LEFT JOIN Kalhoty ON Znacka.Id=Kalhoty.ZnackaID
WHERE Sukne.Material is not null OR Kalhoty.Material is not null;


