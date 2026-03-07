# Copy Current Wallpaper

This is a simple open-source project designed to help users quickly copy the current desktop wallpaper to a specified location or perform other related operations. The project consists of PowerShell and CMD scripts and is compatible with the Windows operating system.

## Features

- Quickly retrieve the path of the current desktop wallpaper.
- Supports copying the current wallpaper to a specified directory.
- Multiple script options: Supports both PowerShell and CMD execution methods.
- Simple and easy to use, ideal for automation tasks or daily use.

## Usage

### PowerShell Method
1. Ensure your operating system is Windows and PowerShell is installed.
2. Download the `copyCurrentWallPaper.ps1` script file.
3. Open PowerShell and run the script:
   ```powershell
   .\copyCurrentWallPaper.ps1
   ```

### CMD Method
1. Navigate to the script directory in Command Prompt
2. Run the following command:
   ```cmd
   copyCurrentWallPaper.cmd
   ```

4. After execution, your current desktop wallpaper will be automatically copied to the `WallPaper` folder under the script directory (created automatically if it doesn't exist): `.\WallPaper\`.

## Examples

After running the script, it automatically retrieves the current wallpaper file and copies it to the `.\WallPaper\` directory. The filename is in timestamp format: `yyyyMMddHHmmss.jpg`, making it easy to manage by date.

## Contribution Guidelines

Contributions to the code or script improvements are welcome. Please submit a Pull Request or suggest improvements on the project's Issues page.

## License

This project is licensed under the MIT License. See the license notice in the project files for details.

---

If you have any questions or suggestions, feel free to open an Issue or contact the project maintainers.
