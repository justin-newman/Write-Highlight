
<#PSScriptInfo

.VERSION 1.1.1

.GUID c0ffed1f-af92-4858-811a-15fc61a12823

.AUTHOR Justin Newman

.COMPANYNAME

.COPYRIGHT

.TAGS Highlight

.LICENSEURI
https://github.com/justin-newman/Write-Highlight/blob/main/LICENSE.md
.PROJECTURI
https://github.com/justin-newman/Write-Highlight
.ICONURI

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
Version 1.0: Original published version.
Version 1.1: Removed [CmdletBinding()] that was left in by mistake
Version 1.1.1: Updated License information

.PRIVATEDATA

#>

<#
.SYNOPSIS
Command that mimics the Write-Highlight command from Octopus Deploy. Foreground color defaults to Blue

.DESCRIPTION
Command that mimics the Write-Highlight command from Octopus Deploy. Foreground color defaults to Blue. I also added the ablity to change the fore and background colors in case you need to.

.PARAMETER Object

.PARAMETER ForegroundColor
Color of the text. You can choose any of the same options as Write-Host (Black,DarkBlue,DarkGreen,DarkCyan,DarkRed,DarkMagenta,DarkYellow,Gray,DarkGray,Blue,Green,Cyan,
Red,Magenta,Yellow,White)

.PARAMETER BackgroundColor
Color of the background. You can choose any of the same options as Write-Host (Black,DarkBlue,DarkGreen,DarkCyan,DarkRed,DarkMagenta,DarkYellow,Gray,DarkGray,Blue,Green,Cyan,
Red,Magenta,Yellow,White)

.EXAMPLE
Write-Highlight Hello World

.EXAMPLE
Write-Highlight Hello World -ForegroundColor Green

.EXAMPLE
Write-Highlight Hello World -BackgroundColor White

.EXAMPLE
Write-Highlight Hello World -ForegroundColor Green -BackgroundColor White

.NOTES
MIT LICENSE
 
Copyright (c) 2022 Justin Newman
 
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
#>

param
(
    [Parameter(Mandatory = $true)]
    [Object]$Object,
    [Parameter(Mandatory = $false)]
    [ValidateSet("Black", "DarkBlue", "DarkGreen", "DarkCyan", "DarkRed", "DarkMagenta", "DarkYellow", "Gray", "DarkGray", "Blue", "Green", "Cyan", "Red", "Magenta", "Yellow", "White")]
    [ConsoleColor]$ForegroundColor = "Blue",
    [Parameter(Mandatory = $false)]
    [ValidateSet("Black", "DarkBlue", "DarkGreen", "DarkCyan", "DarkRed", "DarkMagenta", "DarkYellow", "Gray", "DarkGray", "Blue", "Green", "Cyan", "Red", "Magenta", "Yellow", "White")]
    [string]$BackgroundColor
    
)

if($BackgroundColor -ne ""){
    Write-Host -Object $Object -ForegroundColor $ForegroundColor -BackgroundColor $BackgroundColor
}
else {
    Write-Host -Object $Object -ForegroundColor $ForegroundColor
}   