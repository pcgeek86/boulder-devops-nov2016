#!/usr/bin/powershell

Write-Information -Message 'Invoking Pester tests'

Import-Module -Name /psmod -Verbose

describe 'psmod' {

	it 'Should have an AddValues function' {
		(Get-Command -Module psmod -Name AddValues).Count | Should be 1
	}

  context 'AddValues Function' {
    it 'Should output 4 when parameters 2 and 2 are passed in' {
	  	AddValues -First 2 -Second 2 | Should be 4
  	}
  
  	it 'Should throw an exception when a string is passed in' {
			{ AddValues -First somestring -Second 2 } | Should throw
    }
	}
}
