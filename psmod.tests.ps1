#!/usr/bin/powershell

Write-Information -Message 'Invoking Pester tests'

Import-Module -Name /psmod -Verbose

describe 'psmod' {
	it 'Should have an AddValues function' {
		(Get-Command -Module psmod -Name AddValues).Count | Should be 1
	}

	it 'Should output 4 when parameters 2 and 2 are passed in' {
		AddValues -First 2 -Second 2 | Should be 4
	}
}
