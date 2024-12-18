function menu_AD {
Clear-Host
    Write-Output "Menu Active Directory
  1.Creation Utilisateur
  2.Sortie "
    $choix = Read-Host "Sélectionné votre option"
    switch ($choix) {

        1 {
            $Nom = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Nom 
            $Prenom = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Prenom
            $UniteOrganisationnel = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Departement
            $Mobile = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Mobile
            $Fixe = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Fixe
            $fonction = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty fonction
            $Entreprise = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Societe
            $Services = Import-Excel -Path 'C:\Users\Administrateur\Downloads\Copie de s01_Pharmgreen.xlsx' | Select-Object -ExpandProperty Service 
	for ( $i = 0; $i -lt $Nom.Count; $i++ ) {
                $NomDeDomaine = 'PharmaGreen.Local'
                $MotDePasse = "Azerty1*"
                $PrenomUtilisateur = $Prenom[$i]
                $NomUtilisateur = $Nom[$i]
                $prenomNom = "$PrenomUtilisateur.$NomUtilisateur"
                $NomPrenom = "$PrenomUtilisateur $NomUtilisateur"
                $fixephone = $Fixe[$i]
                $Mobilephone = $Mobile[$i]
                $adresse = "25 Rue des Remparts d'Ainay"
                $Region = "Rhône-Alpes (69)"
                $pays = "France"
                $Codepostal = "69002"
                $ville = "Lyon"
                $Unite = $UniteOrganisationnel[$i]
                $fonctiontaff = $fonction[$i]
                $NomPrenom = "$NomUtilisateur.$PrenomUtilisateur"
                $Société = $Entreprise[$i]
                $InitNom = $NomUtilisateur.Substring(0,1)
                $InitPrenom = $PrenomUtilisateur.Substring(0,1)
                $Initial = "$InitNom.$InitPrenom"
		            $Service = $Services[$i]
		            $PrenomNomInit = "$PrenomUtilisateur.$InitNom"
                Write-Output "Nom = $prenomNom giveName $PrenomUtilisateur Surname $NomUtilisateur MDP $MotDePasse Nom $prenomNom NomDomaine $NomDeDomaine $UnitéOrganisationnelle" 
                New-ADUser -Name "$prenomNom" -GivenName "$PrenomUtilisateur" -Surname "$NomUtilisateur" -SamAccountName "$PrenomNomInit" -UserPrincipalName "$prenomNom@$NomDeDomaine" -OfficePhone "$fixephone" -MobilePhone "$Mobilephone" -StreetAddress "$adresse" -PostalCode "$Codepostal" -City "$ville"  -State "$Region" -Country "Fr" -AccountPassword (ConvertTo-SecureString "Azerty1*" -AsPlainText -Force) -EmailAddress "$NomPrenom@PharmaGreen.fr" -Title "$fonctiontaff" -Company "$Société" -Initials "$Initial" -Path "OU=$Service,OU=$Unite,OU=Utilisateur,OU=Lyon,DC=PharmaGreen,Dc=Local"
                Enable-ADAccount -Identity $PrenomNomInit
               	 
            }
            menu_AD
        }
        2 { 
        exit
        }
        default {
            menu_AD
        }
    }
}
menu_AD
#New-ADUser -Name $prenomNom -GivenName $PrenomUtilisateur -Surname $NomUtilisateur -PasswordNotRequired $true -SamAccountName $NomUtilisateur -Path "OU=LabUtilisateurs,DC=$NomDeDomaine"
                
