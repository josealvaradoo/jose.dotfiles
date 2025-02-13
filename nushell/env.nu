# env.nu
#
# Installed by:
# version = "0.101.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

$env.PATH = (
    $env.PATH
    | split row (char esep)
    | prepend '/opt/homebrew/bin'
    | append '/usr/local/bin'
    | append ($env.HOME | path join ".config")
    | append ($env.HOME | path join ".cargo/bin")
    | append ($env.HOME | path join "go/bin")
)

$env.EDITOR = "nvim"
$env.ZELLIJ_CONFIG_DIR = ($env.HOME | path join ".config/zellij")
$env.GEMINI_API_KEY = ""
$env.ANTHROPIC_API_KEY = ""
$env.DEEPSEEK_API_KEY = ""
$env.OPENAI_API_KEY = ""
