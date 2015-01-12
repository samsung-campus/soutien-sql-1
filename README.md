# Soutien SQL - Jour 01 #

Ce premier jour de soutien sera consacré à réviser nos bases en SQL.

Nous vous invitons à revoir le PowerPoint de cours numéro un, disponible à cette adresse : [http://goo.gl/2xivao](http://goo.gl/2xivao).

Les notions abordées dans ce TP n°1 sont donc :

- Afficher toutes les informations dont on a besoin dans la console
- Structure d'une table
- SELECT
- AS
- ORDER BY

Le programme reste donc concis pour ce premier TP de soutien. Le but est de réellement bien assimiler les choses afin de partir sur de bonnes bases avant de pouvoir continuer sur des choses plus complexes.

N'hésitez donc pas à solliciter **vos pangolins** !

----------

## Exercice 0 ##

Dans cet exercice, vous allez lancer MySQL avec l'utilisateur ROOT. En console évidemment.

## Exercice 0bis ##

La console MySQL permet d'afficher toutes les informations dont nous avons besoin, y compris au cours d'un examen.
Trouvez la commande d'aide et utilisez la quelques minutes en faisant des recherches sur quelques commandes SQL que vous connaissez (SELECT, WHERE, LIMIT etc).

## Exercice 1 ##

Vous allez afficher la liste des bases de données installées sur votre serveur SQL.

Vous devriez obtenir quelque chose du genre :

	+--------------------+
	| Database           |
	+--------------------+
	| information_schema |
	| mysql              |
	| webacademie        |
	+--------------------+
	2 rows in set (0.00 sec)

Vous allez certainement retrouver d'autres bases en plus de celles dans cet exemple. C'est normal. Ca doit être vos anciennes bases de projet.

## Exercice 2 ##

Sortons pour le moment de MySQL et retournons dans notre shell.

Pour ce TP, nous allons importer une nouvelle base de données. Cette base de données, vous allez la trouver dans le dossier que vous avez dézippé pour trouver le présent sujet.

Pour importer cette base (et tout au long de ce TP d'ailleurs), vous utiliserez **la ligne de commande**, et **uniquement** la ligne de commande !

Le fichier à importer est ***base.sql*** et contient tout ce qu'il faut **sans besoin d'être modifié** avant l'import.

## Exercice 3 ##

Une fois le fichier importé, nous allons relancer MySQL en root.

Si nous faisons à nouveau la liste des bases de données présentes, nous devrions avoir une ligne en plus :

	+--------------------+
	| Database           |
	+--------------------+
	| [...]              |
    | soutien            |
	| [...]              |
	+--------------------+

Maintenant que nous avons vérifié que notre base nouvellement importée est bien là, nous pouvons dire à MySQL d'entrer dedans et **de l'utiliser**.

## Exercice 4 ##

Nous sommes dans notre base.

Faites maintenant en sorte d'afficher les tables présentes dans la base.

	+-------------------+
	| Tables_in_soutien |
	+-------------------+
	| friendship        |
	| members           |
	| privatemsg        |
	| wallmsg           |
	+-------------------+
	4 rows in set (0.00 sec)

## Exercice 5 ##

En reprenant la question précédente (question 4), on souhaite maintenant changer le nom de la colonne de résultats.

La sortie attendue est la suivante :

	+-------------------+
	| Tables : soutien  |
	+-------------------+
	| friendship        |
	| members           |
	| privatemsg        |
	| wallmsg           |
	+-------------------+
	4 rows in set (0.00 sec)

## Exercice 6 ##

On voit 4 tables dans la base.

C'est en fait un début de représentation d'un réseau social. On voit une table de relations (friendship), une table de membres, une table de messages privés et enfin une table de message sur "le mur".

On voudrais maintenant connaitre la structure de la table des membres.

Si vous avez des questions sur cette structure de la table "members", n'hésitez pas.

## Exercice 7 ##

On va maintenant passer au SQL pur et dur.

Nous souhaitons désormais connaitre le prénom, le nom, et le login de chaque membre. Vous nommerez les colonnes "Prenom", "Nom" et "Login".

## Exercice 8 ##

Maintenant qu'on sait faire un SELECT et des AS pour changer le nom des colonnes, nous allons ajouter une composante bien utile d'SQL : ordonner nos données.

On souhaite maintenant selectionner le prénom, le nom et le login de chaque membre. Les colonnes seront nommées "Prenom", "Nom" et "Login", comme dans l'exercice 7. Nous classerons cependant les résultats dans l'ordre alphabétique des noms, puis des prénoms (dans le cas où on a deux fois le même nom dans la table, ce qui est fort probable sur un réseau social).

## Exercice 9 ##

On veut maintenant faire la liste de tous les messages postés sur les murs du réseau social. On affichera pour chaque message, l'id du membre qui a posté ce message (colonne nomée "ID membre"), son contenu (colonne nomée "Contenu") puis pour terminer la date du post (colonne nommée "Poste le").

Nous classerons ces posts par ordre d'ID membres, puis par date de post.

## Exercice 10 ##

Revenir en soutien demain. Bonne soirée :)