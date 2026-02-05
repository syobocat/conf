eval "$(/opt/homebrew/bin/brew shellenv)"
source "${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${HOMEBREW_PREFIX}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

typeset -U path
path+=(
  "/run/current-system/sw/bin"
  "${HOME}/.cargo/bin"
)

bindkey -d
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey "^[[1;9D" beginning-of-line
bindkey "^[[1;9C" end-of-line

autoload -U compinit; compinit
zstyle ':completion:*' completer _extensions _complete _approximate _prefix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-tab false
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' menu select
zstyle ':completion:*' show-ambiguity true
zstyle ':completion:*' use-cache true

HISTFILE="${HOME}/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

PROMPT="[%n@%m %F{green}%~%f]%# "
RPROMPT="%F{red}[%?]%f"

# ===OPTIONS===

# Changing Directories
setopt AUTO_CD
setopt AUTO_PUSHD
setopt NO_CDABLE_VARS
setopt CD_SILENT
setopt NO_CHASE_DOTS
setopt NO_CHASE_LINKS
setopt NO_POSIX_CD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS
setopt NO_PUSHD_SILENT
setopt PUSHD_TO_HOME

# Completion
setopt ALWAYS_LAST_PROMPT
setopt ALWAYS_TO_END # 謎
setopt AUTO_LIST
setopt NO_AUTO_MENU # MENU_COMPLETEにより上書き
setopt AUTO_NAME_DIRS
setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH # 意外と謎
setopt AUTO_REMOVE_SLASH
setopt NO_BASH_AUTO_LIST
setopt COMPLETE_ALIASES # 要検証
setopt COMPLETE_IN_WORD
setopt GLOB_COMPLETE
setopt HASH_LIST_ALL # unsetするとsudo/doasが補完できなくなる
setopt NO_LIST_AMBIGUOUS
setopt LIST_BEEP # 変えるかも
setopt LIST_PACKED
setopt NO_LIST_ROWS_FIRST
setopt LIST_TYPES
setopt MENU_COMPLETE
setopt NO_REC_EXACT

# Expansion and Globbing
# 使ったことない機能が多いので要検証多め
setopt BAD_PATTERN
setopt BARE_GLOB_QUAL # 要検証
setopt BRACE_CCL
setopt CASE_GLOB
setopt CASE_MATCH
setopt CASE_PATHS
setopt NO_CSH_NULL_GLOB # 要検証
setopt EQUALS
setopt EXTENDED_GLOB
setopt NO_FORCE_FLOAT # 要検証
setopt GLOB
setopt NO_GLOB_ASSIGN
setopt GLOB_DOTS
setopt GLOB_STAR_SHORT
setopt NO_GLOB_SUBST
setopt HIST_SUBST_PATTERN # 要検証
setopt NO_IGNORE_BRACES
setopt NO_IGNORE_CLOSE_BRACES
setopt NO_KSH_GLOB # 要検証
setopt MAGIC_EQUAL_SUBST
setopt MARK_DIRS
setopt MULTIBYTE
setopt NOMATCH
setopt NO_NULL_GLOB
setopt NUMERIC_GLOB_SORT
setopt NO_RC_EXPAND_PARAM
setopt NO_REMATCH_PCRE # 要検証
setopt NO_SH_GLOB # 要検証
setopt NO_UNSET # 変えるかも
setopt WARN_CREATE_GLOBAL
setopt NO_WARN_NESTED_VAR # unsetするとzsh-autosuggestionがwarningを出しまくる

# History
setopt NO_APPEND_HISTORY # INC_APPEND_HISTORY_TIMEを採用
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt HIST_ALLOW_CLOBBER # 変えるかも
setopt HIST_BEEP # 変えるかも
setopt NO_HIST_EXPIRE_DUPS_FIRST # HIST_IGNORE_ALL_DUPSがあればよい
setopt HIST_FCNTL_LOCK
setopt NO_HIST_FIND_NO_DUPS # HIST_IGNORE_ALL_DUPSがあればよい
setopt HIST_IGNORE_ALL_DUPS
setopt NO_HIST_IGNORE_DUPS # HIST_IGNORE_ALL_DUPSがあればよい
setopt NO_HIST_IGNORE_SPACE # 変えるかも
setopt HIST_LEX_WORDS # 変えるかも
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_BY_COPY
setopt NO_HIST_SAVE_NO_DUPS # HIST_INGORE_ALL_DUPSがあればよい
setopt HIST_VERIFY
setopt NO_INC_APPEND_HISTORY # INC_APPEND_HISTORY_TIMEを採用
setopt INC_APPEND_HISTORY_TIME
setopt NO_SHARE_HISTORY # INC_APPEND_HISTORY_TIMEを採用

# Initialisation
setopt NO_ALL_EXPORT
setopt NO_GLOBAL_EXPORT
setopt GLOBAL_RCS # ~/.zshrcは最後に読まれるので無意味
setopt RCS

# Input/Output
setopt ALIASES
setopt NO_CLOBBER # 変えるかも
setopt NO_CLOBBER_EMPTY # 変えるかも
setopt NO_CORRECT
setopt NO_CORRECT_ALL
setopt NO_DVORAK
setopt NO_FLOW_CONTROL
setopt IGNORE_EOF
setopt INTERACTIVE_COMMENTS
setopt HASH_CMDS # 変えるかも
setopt HASH_DIRS # 変えるかも
setopt NO_HASH_EXECUTABLES_ONLY # 変えるかも
setopt NO_MAIL_WARNING
setopt NO_PATH_DIRS # 変えるかも
setopt NO_PATH_SCRIPT
setopt NO_PRINT_EIGHT_BIT
setopt NO_PRINT_EXIT_VALUE
setopt RC_QUOTES # 変えるかも
setopt NO_RM_STAR_SILENT
setopt NO_RM_STAR_WAIT
setopt NO_SHORT_LOOPS # CSH_JUNKIE_LOOPSを採用
setopt NO_SHORT_REPEAT
setopt NO_SUN_KEYBOARD_HACK

# Job Control
setopt AUTO_CONTINUE
setopt AUTO_RESUME
setopt BG_NICE
setopt CHECK_JOBS
setopt CHECK_RUNNING_JOBS
setopt HUP
setopt LONG_LIST_JOBS
setopt MONITOR
setopt NOTIFY
setopt NO_POSIX_JOBS

# Prompting
setopt NO_PROMPT_BANG
setopt PROMPT_CR
setopt PROMPT_SP
setopt PROMPT_PERCENT
setopt NO_PROMPT_SUBST
setopt TRANSIENT_RPROMPT

# Scripts and Functions
setopt NO_ALIAS_FUNC_DEF
setopt C_BASES
setopt NO_C_PRECEDENCES
setopt NO_DEBUG_BEFORE_CMD
setopt NO_ERR_EXIT
setopt ERR_RETURN # 変えるかも
setopt EVAL_LINENO
setopt EXEC # インタラクティブでは強制オン
setopt FUNCTION_ARGZERO
setopt LOCAL_LOOPS
setopt NO_LOCAL_OPTIONS
setopt NO_LOCAL_PATTERNS
setopt NO_LOCAL_TRAPS
setopt NO_MULTI_FUNC_DEF
setopt MULTIOS
setopt NO_OCTAL_ZEROES
setopt PIPE_FAIL # 変えるかも
setopt SOURCE_TRACE # 変えるかも
setopt NO_TYPESET_SILENT
setopt NO_TYPESET_TO_UNSET
setopt NO_VERBOSE
setopt NO_XTRACE

# Shell Emulation
setopt NO_APPEND_CREATE # 変えるかも
setopt NO_BASH_REMATCH
setopt NO_BSD_ECHO # 変えるかも
setopt NO_CONTINUE_ON_ERROR
setopt NO_CSH_JUNKIE_HISTORY
setopt CSH_JUNKIE_LOOPS # 変えるかも
setopt NO_CSH_JUNKIE_QUOTES
setopt CSH_NULLCMD
setopt NO_KSH_ARRAYS
setopt NO_KSH_AUTOLOAD
setopt NO_KSH_OPTION_PRINT
setopt NO_KSH_TYPESET
setopt NO_KSH_ZERO_SUBSCRIPT
setopt NO_POSIX_ALIASES
setopt NO_POSIX_ARGZERO
setopt NO_POSIX_BUILTINS
setopt NO_POSIX_IDENTIFIERS
setopt NO_POSIX_STRINGS
setopt NO_POSIX_TRAPS
setopt NO_SH_FILE_EXPANSION
setopt NO_SH_NULLCMD
setopt NO_SH_OPTION_LETTERS
setopt NO_SH_WORD_SPLIT
setopt NO_TRAPS_ASYNC

# Zle
setopt BEEP # 変えるかも
setopt COMBINING_CHARS
setopt NO_EMACS
setopt NO_OVERSTRIKE
setopt NO_SINGLE_LINE_ZLE
setopt NO_VI
setopt ZLE
