setopt PROMPT_SUBST
RPSI='${MODE_INDICATOR_PROMPT} ${vcs_info_msg_0_}'

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  golang        # Go section
  rust          # Rust section
  venv          # virtualenv section
  pyenv         # Pyenv section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
