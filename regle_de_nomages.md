# Domaine et Structure Active Directory pour PharmaGreen.fr

## 1. Domaine Principal
- **Nom de Domaine** : `PharmaGreen.fr`
- **Nom FQDN** : `PharmaGreen.local` (pour les environnements internes).
- **Exemples** :
  - Contrôleur de Domaine (DC) : `DC1.PharmaGreen.local`
  - Serveur DNS : `DNS1.PharmaGreen.local`
  - Serveur de fichiers : `FS1.PharmaGreen.local`

---

## 2. Structure de l'Active Directory

### a. Organisation des OU (Unités Organisationnelles)
L'AD est structuré en fonction des départements, localisations et rôles.  
- **Structure Exemple** :
  ```
  DC=PharmaGreen, DC=local
    OU=Utilisateurs
      OU=Direction
      OU=RH
      OU=IT
      OU=Marketing
      OU=Ventes
    OU=Ordinateurs
      OU=PostesFixes
      OU=Portables
      OU=Serveurs
    OU=Groupes
      OU=Sécurité
      OU=Distribution
    OU=Ressources
      OU=Imprimantes
      OU=Partages
  ```

---

## 3. Conventions de Nommage

### a. Contrôleurs de Domaine (DC)
- **Format** : `DC[Numéro]_[Localisation]`
- **Exemple** : `DC1_Lyon`

### b. Serveurs
- **Format** : `SRV_[Rôle]_[Localisation]_[ID]`
- **Exemples** :
  - Serveur de fichiers : `SRV_FS_LYON_01`
  - Serveur DNS : `SRV_DNS_LYON_01`

### c. Postes de Travail
- **Postes Fixes** :
  - **Format** : `DESK_[Département]_[Localisation]_[ID]`
  - **Exemple** : `DESK_RH_LYON_01`
- **Portables** :
  - **Format** : `LTP_[Utilisateur]_[Localisation]_[ID]`
  - **Exemple** : `LTP_MD_LYON_01`

### d. Groupes de Sécurité
- **Format** : `[Type]_[Portée]_[Description]`
- **Exemples** :
  - Accès global aux serveurs : `SG_GLOBAL_AccesServeurs`
  - Groupe local pour imprimantes : `SG_LOCAL_Lyon_Imprimantes`

### e. Utilisateurs
- **Format** : `[Département]_[Prénom].[Nom]_[ID]`
- **Exemples** :
  - Employé RH : `RH_Marie.Durand`
  - Employé IT avec homonyme : `IT_Jean.Dupont01`

---

## 4. Localisation
- **Code Localisation** : `LYON` (ou autres sites si nécessaire).
- **Exemple dans AD** :
  ```
  OU=Ordinateurs
    OU=LYON
      OU=PostesFixes
      OU=Portables
  ```

---

## 5. Exemple Complet de Nommage dans PharmaGreen
### Serveur :
- Serveur de fichiers à Lyon : `SRV_FS_LYON_01`

### Poste Fixe :
- Poste de travail RH : `DESK_RH_LYON_02`

### Portable :
- Portable pour un employé IT : `LTP_JD_LYON_03`

### Utilisateur :
- Directeur Général : `DG_Lucas.Moreau`

### Groupe de Sécurité :
- Accès global à une application : `SG_GLOBAL_AccesApplication`

---

## 6. Gestion des Ressources
### a. Imprimantes
- **Format** : `PRT_[Département]_[Localisation]_[ID]`
- **Exemple** : `PRT_IT_LYON_01`

### b. Partages Réseau
- **Format** : `SHR_[Description]_[Localisation]`
- **Exemple** : `SHR_Projets_LYON`

---

## 7. Notes et Recommandations
1. **Homonymes** : Utiliser des suffixes numériques ou des identifiants uniques.
2. **Documentation** : Maintenir une liste claire des noms et rôles des machines, groupes, et utilisateurs.
3. **Audits** : Effectuer des revues régulières pour s'assurer que les conventions sont respectées.
4. **Localisation Étendue** : Ajouter de nouveaux codes pour d'autres sites (ex. `PAR` pour Paris).

---
