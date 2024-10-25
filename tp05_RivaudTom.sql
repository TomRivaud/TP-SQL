SELECT * FROM article ORDER BY DESIGNATION ASC;

SELECT * FROM article ORDER BY PRIX DESC;

SELECT * FROM article WHERE DESIGNATION LIKE '%boulon%' ORDER BY PRIX ASC;

SELECT * FROM article WHERE DESIGNATION LIKE '%sachet%';

SELECT * FROM article WHERE DESIGNATION LIKE 'sachet';

SELECT * FROM article INNER JOIN fournisseur ON article.ID_FOU=fournisseur.ID ORDER BY DESIGNATION ASC, PRIX DESC;

SELECT * FROM article INNER JOIN fournisseur ON article.ID_FOU=fournisseur.ID WHERE NOM = 'Dubois & Fils';

SELECT AVG(PRIX), NOM FROM article INNER JOIN fournisseur ON article.ID_FOU=fournisseur.ID WHERE NOM = 'Dubois & Fils';

SELECT AVG(PRIX), NOM FROM article INNER JOIN fournisseur ON article.ID_FOU=fournisseur.ID GROUP BY NOM;

SELECT * FROM bon WHERE DATE_CMDE BETWEEN '2019-03-01' AND '2019-04-05 12:00:00';

SELECT * FROM bon INNER JOIN article ON bon.ID=article.ID WHERE DESIGNATION LIKE '%boulon%';

SELECT * FROM bon INNER JOIN article ON bon.ID=article.ID JOIN fournisseur ON bon.ID_FOU=fournisseur.ID WHERE DESIGNATION LIKE '%boulon%';

SELECT SUM(PRIX), bon.NUMERO FROM bon INNER JOIN article ON bon.ID=article.ID GROUP BY bon.NUMERO;

SELECT bon.ID , bon.NUMERO, SUM(compo.QTE) FROM bon JOIN COMPO ON bon.ID = compo.ID_BON GROUP BY bon.ID, bon.NUMERO;

SELECT bon.NUMERO, SUM(compo.QTE) FROM BON JOIN COMPO ON bon.ID = compo.ID_BON GROUP BY bon.NUMERO HAVING SUM(compo.QTE) > 25;

SELECT SUM(article.PRIX * compo.QTE) FROM bon JOIN COMPO ON bon.ID = compo.ID_BON JOIN ARTICLE ON compo.ID_ART = article.ID WHERE bon.DATE_CMDE >= '2019-04-01' AND bon.DATE_CMDE < '2019-05-01';