# Copy Current Wallpaper 项目说明

## 项目简介

这是一个简单实用的开源工具，能够帮助用户快速复制当前桌面壁纸到指定位置。该项目支持 PowerShell 和 CMD 脚本，专为 Windows 操作系统设计。

## 功能特性

- **自动识别**：快速获取当前桌面壁纸的系统存储路径。
- **一键复制**：将当前壁纸复制到用户指定的目录中。
- **多种脚本**：支持 PowerShell 和 CMD 两种脚本方式运行。
- **简单易用**：无需复杂配置，适合集成到自动化任务或日常使用。

## 系统要求

- **操作系统**：Windows 10 或更高版本

## 使用方法

### PowerShell 方式
1. 确保您的系统已安装 PowerShell（PowerShell 7.1 或更高版本推荐）。
2. 下载项目脚本文件 `copyCurrentWallPaper.ps1`。
3. 右键点击脚本文件，选择"使用 PowerShell 运行"，或在 PowerShell 终端中导航到脚本所在目录，执行以下命令：
   ```powershell
   .\copyCurrentWallPaper.ps1
   ```

### CMD 方式
1. 在命令提示符中导航到脚本所在目录
2. 执行以下命令：
   ```cmd
   copyCurrentWallPaper.cmd
   ```

4. 执行后，您当前的桌面壁纸将会被自动复制到脚本所在目录的 `WallPaper` 文件夹下（如不存在会自动创建）：`.\WallPaper\`。

## 示例

运行脚本后，它会自动获取当前壁纸文件，并将其复制到 `.\WallPaper\` 目录下。文件名为时间戳格式：`yyyyMMddHHmmss.jpg`，便于按日期管理。

## 贡献指南

我们欢迎任何形式的贡献，包括但不限于代码改进、功能建议或文档完善。请通过提交 Pull Request 或在项目的 Issues 页面提出您的想法。

## 许可证

本项目采用 MIT 许可证。有关详细信息，请查看项目文件中的许可证声明。

---

如果您在使用过程中遇到任何问题或有改进建议，请随时提交 Issue 或联系项目维护者。
