# Fix all remaining HTML files
$files = @(
    "roles-and-permissions-mockup.html",
    "service-tasks-mockup.html", 
    "equipment-mockup.html",
    "module-categories-mockup.html",
    "imports-mockup.html",
    "departments-mockup.html",
    "administrator-users-mockup.html",
    "integration-mockup.html"
)

foreach ($file in $files) {
    Write-Host "Fixing $file..."
    (Get-Content $file) -replace '<div class="sidebar-item"[^>]*onclick="nav\([^)]*\)"\s*>([^<]*)</div>', '<a class="sidebar-item" href="$1.html">$1</a>' | Set-Content $file
}
