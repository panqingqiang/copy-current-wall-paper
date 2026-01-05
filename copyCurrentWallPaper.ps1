# 定义源文件路径和目标目录
# 使用 USERPROFILE 环境变量，避免硬编码用户名
$userProfile = $env:USERPROFILE
$sourceFile = "$userProfile\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$destinationDir = Join-Path -Path $scriptDir -ChildPath "WallPaper"

# 检查源文件是否存在
if (-not (Test-Path -Path $sourceFile)) {
    Write-Host "错误：源文件不存在！" -ForegroundColor Red
    exit 1
}

# 如果目标子文件夹不存在，则创建它
if (-not (Test-Path -Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir | Out-Null
    Write-Host "已创建目录: $destinationDir" -ForegroundColor Cyan
}

# 生成时间戳格式的文件名（格式：yyyyMMddHHmmss.jpg）
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
$destinationFile = Join-Path -Path $destinationDir -ChildPath "$timestamp.jpg"

# 执行文件复制操作
try {
    Copy-Item -Path $sourceFile -Destination $destinationFile -Force
    Write-Host "聚焦壁纸备份成功！" -ForegroundColor Green
    Write-Host "源文件: $sourceFile" -ForegroundColor Yellow
    Write-Host "目标文件: $destinationFile" -ForegroundColor Yellow
}
catch {
    Write-Host "文件复制失败: $($_.Exception.Message)" -ForegroundColor Red
}
