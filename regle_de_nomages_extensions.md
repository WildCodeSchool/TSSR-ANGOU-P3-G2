# Règles de Nommage pour le Matériel - Lyon

## Structure Générale
- **Format général** : `[Type]_[Rôle]_[Localisation]_[ID]`
- **Exemples** :
  - Serveur : `SRV_DB_LYON_01`
  - Poste fixe : `DESK_RH_LYON_02`
  - Portable : `LTP_MD_LYON_01`

---

## Types de Matériel et Conventions Spécifiques

### 1. Serveurs
- **Format** : `SRV_[Rôle]_[Localisation]_[ID]`
- **Rôles disponibles** :
  - `DC` : Contrôleur de domaine
  - `FS` : Serveur de fichiers
  - `DB` : Serveur de bases de données
  - `APP` : Serveur d'application
  - `WEB` : Serveur web
  - `VMH` : Hyperviseur
- **Exemples** :
  - `SRV_DC_LYON_01` : Contrôleur de domaine principal
  - `SRV_DB_LYON_02` : Serveur de base de données

---

### 2. Postes Fixes
- **Format** : `DESK_[Département]_[Localisation]_[ID]`
- **Départements disponibles** :
  - `RH` : Ressources humaines
  - `IT` : Informatique
  - `MK` : Marketing
  - `CM` : Commercial
- **Exemples** :
  - `DESK_RH_LYON_01` : Poste fixe RH
  - `DESK_IT_LYON_03` : Poste fixe IT

---

### 3. Ordinateurs Portables
- **Format** : `LTP_[Utilisateur]_[Localisation]_[ID]`
- **Utilisateur** : Initiales ou identifiant personnel.
- **Exemples** :
  - `LTP_MD_LYON_01` : Portable de Marie Dupont
  - `LTP_IT_LYON_05` : Portable générique pour IT

---

### 4. Machines Virtuelles (VMs)
- **Format** : `VM_[Rôle]_[Localisation]_[ID]`
- **Exemple** :
  - `VM_DB_LYON_01` : VM pour base de données

---

### 5. Périphériques Réseau
- **Format** : `NET_[Type]_[Localisation]_[ID]`
- **Types disponibles** :
  - `SW` : Switch
  - `FW` : Firewall
  - `RT` : Routeur
- **Exemples** :
  - `NET_SW_LYON_01` : Switch principal
  - `NET_FW_LYON_02` : Firewall secondaire

---

### 6. Imprimantes
- **Format** : `PRT_[Département]_[Localisation]_[ID]`
- **Exemple** :
  - `PRT_RH_LYON_01` : Imprimante pour le service RH

---

### 7. Stockage
- **Format** : `STO_[Rôle]_[Localisation]_[ID]`
- **Exemple** :
  - `STO_NAS_LYON_01` : NAS principal

---

## Localisation
- Code pour Lyon : `LYON`

---

## Avantages des Conventions
- Gestion centralisée et efficace.
- Identification rapide des appareils.
- Facilitation des tâches de maintenance et de documentation.
- Respect d’une hiérarchie claire pour éviter les ambiguïtés.

---

## Notes
- **ID** : Numérotation séquentielle (ex. `01`, `02`, `03`, ...).
- Ajustements possibles en fonction des besoins spécifiques.

---

# Règles de Nommage des Utilisateurs par Département - Lyon

## Structure Générale
- **Format général** : `[Département]_[Prénom].[Nom]_[ID]`
  - Inclure le nom du département en préfixe pour une identification claire.
  - Utilisation d’un identifiant unique pour éviter les doublons.
- En cas d’homonymes : Ajouter un suffixe numérique.

---

## Conventions de Nommage

### 1. Format Standard
- **Format** : `[Département]_[Prénom].[Nom]`
  - Exemple : `SI_Jean.Dupont`

### 2. Gestion des Homonymes
- Si plusieurs utilisateurs portent le même prénom et nom :
  - Ajouter un numéro à la fin : `[Département]_[Prénom].[Nom][01]`
  - Exemple : `SI_Jean.Dupont01`, `SI_Jean.Dupont02`

### 3. Identifiant Unique
- Possibilité d’ajouter un identifiant numérique ou alphanumérique pour distinguer les utilisateurs :
  - Format : `[Département]_[Prénom].[Nom]_[ID]`
  - Exemple : `SI_Jean.Dupont_1234`

---

## Départements et Codes

| Département                          | Code      |
|--------------------------------------|-----------|
| Communication                        | COM       |
| Direction Financière                 | DF        |
| Direction Générale                   | DG        |
| Direction Marketing                  | MK        |
| Recherche & Développement            | RD        |
| Ressources Humaines                  | RH        |
| Services Généraux                    | SG        |
| Service Juridique                    | SJ        |
| Systèmes d'Information               | SI        |
| Ventes et Développement Commercial   | VDC       |

---

## Exemples de Nommage par Département
1. **Systèmes d'Information** :
   - `SI_Marie.Durand`
   - `SI_Jean.Dupont01`
2. **Ressources Humaines** :
   - `RH_Sophie.Bernard`
   - `RH_Claire.Morel01`
3. **Direction Générale** :
   - `DG_Lucas.Moreau`
   - `DG_Laurent.Martin`
4. **Direction Marketing** :
   - `MK_Anne.Lemoine`
   - `MK_Lucie.Deschamps`
5. **Ventes et Développement Commercial** :
   - `VDC_Paul.Robert`
   - `VDC_Elisa.Morel`

---

## Gestion dans Active Directory (AD)
- **OU (Organizational Units)** :
  - Les utilisateurs sont organisés selon leur département et localisation.
  - Exemple d’arborescence :
    ```
    OU=Utilisateurs
      OU=Communication
      OU=Direction_Financière
      OU=Direction_Générale
      OU=Direction_Marketing
      OU=R&D
      OU=RH
      OU=Services_Généraux
      OU=Service_Juridique
      OU=Systèmes_Information
      OU=Ventes
    ```

---

## Notes
- Toujours vérifier les doublons avant la création d’un compte utilisateur.
- Homonymes : Utiliser des suffixes ou un identifiant unique.
- Utilisateurs temporaires : Préfixe `TMP_` (ex. `TMP_RH_Lisa.Martin`).

---

# Règles de Nommage pour les Groupes de Sécurité

## Structure Générale
- **Format général** : `[Type]_[Portée]_[Description]`
  - **Type** : Définit la nature du groupe (ex. SG, LG, GG, etc.).
  - **Portée** : Indique le niveau d'accès ou le département concerné.
  - **Description** : Décrit brièvement la fonction ou la cible du groupe.
- **Exemple** :
  - `SG_GLOBAL_AccesServeurs`
  - `GG_IT_LectureDossiers`

---

## Types de Groupes

| Abréviation | Type de groupe                   | Description                          |
|-------------|----------------------------------|--------------------------------------|
| **SG**      | Groupe de Sécurité               | Gestion des accès aux ressources     |
| **LG**      | Local Group                      | Groupes locaux                       |
| **GG**      | Global Group                     | Groupes globaux dans AD              |
| **UG**      | Universal Group                  | Groupes universels dans AD           |
| **DL**      | Distribution List                | Listes de distribution e-mail        |

---

## Portée
- **GLOBAL** : Accès à l’échelle de l’entreprise.
- **LOCAL** : Accès limité à une localisation spécifique.
- **Département** : Indique le département (ex. IT, RH, MK, etc.).
- **Exemple d'arborescence par portée** :
  - Global : `SG_GLOBAL_AccesServeurs`
  - Local : `SG_LOCAL_Lyon_Imprimantes`
  - Département : `SG_IT_AdminServeurs`

---

## Conventions de Nommage

### 1. Groupes de Sécurité
- **Format** : `SG_[Portée]_[Description]`
- **Exemples** :
  - `SG_GLOBAL_AccesServeurs` : Accès global aux serveurs.
  - `SG_RH_AccesPaie` : Accès aux fichiers de paie pour le département RH.
  - `SG_LOCAL_Lyon_Imprimantes` : Accès aux imprimantes à Lyon.

### 2. Groupes Locaux
- **Format** : `LG_[Description]`
- **Exemples** :
  - `LG_ServeursImprimantes`
  - `LG_UtilisateursVM`

### 3. Groupes Globaux
- **Format** : `GG_[Département]_[Description]`
- **Exemples** :
  - `GG_IT_AdminServeurs`
  - `GG_Marketing_LectureRapports`

### 4. Groupes Universels
- **Format** : `UG_[Description]`
- **Exemples** :
  - `UG_AllUsers` : Tous les utilisateurs.
  - `UG_AllLocationsAccess` : Accès pour toutes les localisations.

### 5. Listes de Distribution
- **Format** : `DL_[Portée]_[Description]`
- **Exemples** :
  - `DL_GLOBAL_ToutesEquipes`
  - `DL_IT_Notifications`

---

## Gestion des Groupes
- **Structure dans AD** :
  - Les groupes sont organisés selon leur type et leur portée.
  - Exemple d'arborescence :
    ```
    OU=Groupes
      OU=Sécurité
        OU=Global
        OU=Local
      OU=Distribution
    ```

---

## Exemples d'utilisation
### Ressources humaines (RH)
- Accès global aux fichiers : `SG_GLOBAL_RH_AccesFichiers`
- Accès local aux imprimantes : `SG_LOCAL_Lyon_Imprimantes`

### Systèmes d'information (IT)
- Administrateurs serveurs : `GG_IT_AdminServeurs`
- Accès à distance pour support : `SG_GLOBAL_IT_SupportRemote`

### Direction Marketing (MK)
- Accès aux rapports : `SG_GLOBAL_Marketing_Rapports`
- Lecture des fichiers : `GG_Marketing_LectureDossiers`

---

## Notes
- **Gestion des doublons** : Vérifier les groupes existants avant création.
- **Documentation** : Toujours inclure une description claire de la fonction et de la portée du groupe.
- **Audits réguliers** : S’assurer que les membres des groupes de sécurité sont correctement attribués.

---
