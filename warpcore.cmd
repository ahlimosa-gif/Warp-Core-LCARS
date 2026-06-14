/* REXX - Warp-Core-LCARS Terminal Environment for OS/2 */
/* Ensure ANSI support is enabled in OS/2 session before running */
ESC = '1B'x
C_ORANGE = ESC || '[1;33m'
C_CYAN   = ESC || '[1;36m'
C_WHITE  = ESC || '[1;37m'
C_PURPLE = ESC || '[1;35m'
C_RESET  = ESC || '[0m'

'CLS'
SAY C_ORANGE || "██████████████████████████████████████████████████████████"
SAY C_ORANGE || "██" || C_CYAN || "  LCARS TERMINAL OVERRIDE ENGAGED  " || C_ORANGE || "           4749-2 " || C_ORANGE || "██"
SAY C_ORANGE || "██████████████████████████████████████████████████████████"
SAY C_CYAN   || "   ▌" || C_WHITE || " SYSTEM: OS/2 WARP SUBSYSTEM"
SAY C_CYAN   || "   ▌" || C_WHITE || " U.S.S. ENTERPRISE DATA RETRIEVAL"
SAY C_CYAN   || "   ▌"
SAY C_CYAN   || " ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"

DO FOREVER
    curr_dir = DIRECTORY()
    CALL CHAROUT , C_ORANGE || " ▌" || C_PURPLE || " 03-11 " || C_ORANGE || "▌ " || C_WHITE || curr_dir || C_CYAN || " > " || C_RESET
    PARSE PULL user_cmd
    
    IF TRANSLATE(user_cmd) = 'EXIT' | TRANSLATE(user_cmd) = 'LOGOFF' THEN DO
        SAY C_CYAN || "LCARS SUBSYSTEM DISENGAGED. GOODBYE." || C_RESET
        LEAVE
    END
    
    IF user_cmd \= '' THEN DO
        SAY C_RESET
        ADDRESS CMD user_cmd
        SAY ""
    END
END
EXIT 0
