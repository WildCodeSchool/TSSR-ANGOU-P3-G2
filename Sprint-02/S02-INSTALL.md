Mise en Place des VM :
On as mis en place plusieurs VM (Windows Server, Debian, Windows Core etc..)
Installation Ad (Gui) :
1.	Ajout rôles et fonctionnalité
 
Dans rôles du serveurs sélectionné : serveurs AD DS
 
Cliquer sur installer
 
2.	Configuration AD
Une Notification apparait cliquée sur promouvoir ce serveur en contrôleur de domaine
 
Cliquer sur ajouter une nouvelle forêt
Rentrer le Nom de Domaine (Modifier)
 
Rentrée le Mots de Passe du Domaine
 
Cliquer sur installer votre ordinateur risque de redémarrer
 
Votre Serveur et maintenant installé
 

A
 Installation Ad (Core) : 
Installation Ou Et Utilisateur :
1. Création de l'Unité D'Organisation
Clic droit sur Pharmagreen.lan et sélectionner une nouvelle unité de d'organisation
 
Cilquer sur suivant et rentré le nom que vous voullez lui donné
 
2. Création Groupe
Clic droit sur l'unité d'organisation sélectionné nouveau/Groupes
Mettez le nom de votre groupe et le type de groupe
 
3. Création Utilisateur
Cliquer sur l'icône utilisateur
 
Rentré les information puis validé
4. Ajout Utilisateur à un Groupe
Clique droit ajout à un groupe
 
Entrez le Groupe ciblé et validé pour l'ajouté
 
5. Vérifier que l'utilisateur à bien était ajouté au groupe souhaitais
 

Pour les Ou nous les avons créés à la main 
Cette semaine nous avons Crée un script pour automatiser l’installation des utilisateurs 
Le script crée des utilisateurs selon la convention de nommage et les directives demandé 
Le script place les utilisateurs dans les bonne Ou et sous Ou il rentre aussi Des information récupéré sur un fichier Excel (le fichier Excel fournit des Informations sur les numéros de téléphones, Lieu de Travail, l’entreprise ou il travail etc…)    


