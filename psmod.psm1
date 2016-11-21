$Functions = Get-ChildItem -Path $PSScriptRoot\Functions\Public

foreach ($File in $Functions) {
	. $File.FullName
	Write-Verbose -Message ('Imported file: {0}' -f $File.Name)
}


