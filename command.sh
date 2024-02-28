$totalLines = 0
git ls-files | ForEach-Object {
    $lineCount = (Get-Content $_ | Measure-Object -Line).Lines
    $totalLines += $lineCount
    New-Object PSObject -Property @{ Path = $_; Lines = $lineCount }
} | Format-Table -AutoSize

"Total lines: $totalLines"
