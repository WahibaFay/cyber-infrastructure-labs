# Import des utilisateurs depuis le fichier CSV
$users = Import-Csv -Path "C:\users.csv"

foreach ($user in $users) {
    $username = ($user.Prenom.Substring(0,1) + $user.Nom).ToLower()
    New-ADUser -Name "$($user.Prenom) $($user.Nom)" `
               -GivenName $user.Prenom `
               -Surname $user.Nom `
               -SamAccountName $username `
               -UserPrincipalName "$username@laplateforme.io" `
               -AccountPassword (ConvertTo-SecureString "Azerty_2025!" -AsPlainText -Force) `
               -ChangePasswordAtLogon $true `
               -Enabled $true
    $groupes = $user.Groupes -split ","
    foreach ($g in $groupes) {
        Add-ADGroupMember -Identity $g.Trim() -Members $username
    }
}
