describe 'Module-level tests' {

    it 'the module imports successfully' {
        { Import-Module -Name "$PSScriptRoot\PowerShellModuleProject.psm1" -ErrorAction Stop } | should not throw
    }

    it 'the module has an associated manifest' {
        Test-Path "$PSScriptRoot\PowerShellModuleProject.psd1" | should -Be $true
    }

}