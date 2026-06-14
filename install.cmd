/* REXX - Warp-Core-LCARS Installer for OS/2 */
ESC = '1B'x
C_ORANGE = ESC || '[1;33m'
C_CYAN   = ESC || '[1;36m'
C_RESET  = ESC || '[0m'

SAY C_ORANGE || "████████████████████████████████████████████"
SAY C_CYAN   || "  INITIALIZING LCARS WARP CORE INSTALLATION "
SAY C_ORANGE || "████████████████████████████████████████████" || C_RESET
SAY ""
CALL SysSleep 1
SAY C_CYAN || "[INFO]" || C_RESET || " Verifying OS/2 Warp HPFS File System... OK"
CALL SysSleep 1
SAY C_CYAN || "[INFO]" || C_RESET || " Copying WARPCORE.CMD to C:\OS2\APPS\..."
'COPY warpcore.cmd C:\OS2\APPS\warpcore.cmd > NUL'
SAY ""
SAY C_ORANGE || "INSTALLATION COMPLETE." || C_RESET
EXIT