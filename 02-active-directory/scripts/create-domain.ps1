# Installation du rôle AD DS
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promotion en contrôleur de domaine
Install-ADDSForest -DomainName "laplateforme.io" -InstallDns
