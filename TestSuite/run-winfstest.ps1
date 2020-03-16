param (
    $testSubDir=".",
    $testedPath)

$scriptLocation = [System.IO.Path]::GetDirectoryName(
    $myInvocation.MyCommand.Definition)

$env:PYTHONPATH=$scriptLocation
& python.exe $scriptLocation\simpletap.py $scriptLocation\$testSubDir $testedPath
