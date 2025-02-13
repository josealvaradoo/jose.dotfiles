# config.nu
#
# Installed by:
# version = "0.101.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

# alias to create a symlink
def ln [path: string] {
    echo "ln -s /Volumes/SSDCrucial/Library/Application Support/$path ~/Library/Application Support/$path"
}

# remove greeting message on start
$env.config.show_banner = false

# config starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

let rose_pine_moon_theme = {
    separator: "#817c9c"
    leading_trailing_space_bg: "#393552"
    header: { fg: "#c4a7e7" attr: b}
    empty: "#3e8fb0"
    bool: "#ebbcba"
    int: "#e0def4"
    filesize: "#9ccfd8"
    duration: "#f6c177"
    date: "#c4a7e7"
    range: "#817c9c"
    float: "#e0def4"
    string: "#f6c177"
    nothing: "#eb6f92"
    binary: "#eb6f92"
    cellpath: "#9ccfd8"
    row_index: "#c4a7e7"
    hints: "#817c9c"
}

let everforest_theme = {
    separator: "#7fbbb3"
    leading_trailing_space_bg: "#2b3339"
    header: {fg: "#d3c6aa" attr: b}
    empty: "#a7c080"
    bool: "#e67e80"
    int: "#d3c6aa"
    filesize: "#7fbbb3"
    duration: "#dbbc7f"
    date: "#d3c6aa"
    range: "#7fbbb3"
    float: "#d3c6aa"
    string: "#dbbc7f"
    nothing: "#e67e80"
    binary: "#e67e80"
    cellpath: "#7fbbb3"
    row_index: "#d3c6aa"
    hints: "#7fbbb3"
}

# Configure colors for ls
$env.config.color_config = $everforest_theme
