$win_user = "hungton"
$linux_user = "hungton"
$package = "CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc"
$base_path = "C:\Users\" + $win_user + "\AppData\Local\Packages\" + $package + "\LocalState\rootfs"
$dirs = @("\bin", "\sbin", "\usr\bin", "\usr\sbin", ("\home\" + $linux_user + "\.cargo\bin"))
$dirs | ForEach { Add-MpPreference -ExclusionProcess ($base_path + $_ + "\*") }
Add-MpPreference -ExclusionPath $base_path