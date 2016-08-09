#!/bin/bash

case $1 in
    def* )
        echo "Changing to Default Scheme (Pantheon.dark)"
        palette="#073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4"
        foreground_color="#94a3a5"
        background_color="#252e32"
        cursor_color="#839496"
        ;;
    ash*)
        echo "Changing to Ashes.dark"
        palette="#1c2023:#c7ae95:#95c7ae:#aec795:#ae95c7:#c795ae:#95aec7:#c7ccd1:#747c84:#c7ae95:#95c7ae:#aec795:#ae95c7:#c795ae:#95aec7:#f3f4f5"
        foreground_color="#c7ccd1"
        background_color="#1c2023"
        cursor_color="#c7ccd1"
        ;;
    dun*)
        echo "Changing to Dune.dark"
        palette="#20201d:#d73737:#60ac39:#cfb017:#6684e1:#b854d4:#1fad83:#a6a28c:#7d7a68:#d73737:#60ac39:#cfb017:#6684e1:#b854d4:#1fad83:#fefbec"
        foreground_color="#a6a28c"
        background_color="#20201d"
        cursor_color="#a6a28c"
        ;;
    for*)
        echo "Changing to Forest.dark"
        palette="#1b1918:#f22c40:#5ab738:#d5911a:#407ee7:#6666ea:#00ad9c:#a8a19f:#766e6b:#f22c40:#5ab738:#d5911a:#407ee7:#6666ea:#00ad9c:#f1efee"
        foreground_color="#a8a19f"
        background_color="#1b1918"
        cursor_color="#a8a19f"
        ;;
    gre*|gra*)
        echo "Changing to Greyscale.dark"
        palette="#101010:#7c7c7c:#8e8e8e:#a0a0a0:#686868:#747474:#868686:#b9b9b9:#525252:#7c7c7c:#8e8e8e:#a0a0a0:#686868:#747474:#868686:#f7f7f7"
        foreground_color="#b9b9b9"
        background_color="#101010"
        cursor_color="#b9b9b9"
        ;;
    hea*)
        echo "Changing to Heath.dark"
        palette="#282a2e:#a54242:#8c9440:#de935f:#5f819d:#85678f:#5e8d87:#707880:#373b41:#cc6666:#b5bd68:#f0c674:#81a2be:#b294bb:#8abeb7:#c5c8c6"
        foreground_color="#c5c8c6"
        background_color="#1d1f21"
        cursor_color="#c5c8c6"
        ;;
    lak*)
        echo "Changing to Lakeside.dark"
        palette="#161b1d:#d22d72:#568c3b:#8a8a0f:#257fad:#5d5db1:#2d8f6f:#7ea2b4:#5a7b8c:#d22d72:#568c3b:#8a8a0f:#257fad:#5d5db1:#2d8f6f:#ebf8ff"
        foreground_color="#7ea2b4"
        background_color="#161b1d"
        cursor_color="#7ea2b4"
        ;;
    mon*)
        echo "Changing to Monokai.dark"
        palette="#272822:#f92672:#a6e22e:#f4bf75:#66d9ef:#ae81ff:#a1efe4:#f8f8f2:#75715e:#f92672:#a6e22e:#f4bf75:#66d9ef:#ae81ff:#a1efe4:#f9f8f5"
        foreground_color="#f8f8f2"
        background_color="#272822"
        cursor_color="#f8f8f2"
        ;;
    oce*)
        echo "Changing to Ocean.dark"
        palette="#2b303b:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#c0c5ce:#65737e:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#eff1f5"
        foreground_color="#c0c5ce"
        background_color="#2b303b"
        cursor_color="#c0c5ce"
        ;;
    par*)
        echo "Changing to Paraiso.dark"
        palette="#3f283d:#ef6155:#3e9d03:#fec418:#047da4:#815ba4:#06b6ef:#a39e9b:#776e71:#ef6155:#52cf05:#fec418:#06b6ef:#815ba4:#5ba4bf:#e7e9db"
        foreground_color="#a39e9b"
        background_color="#2f1e2e"
        cursor_color="#a39e9b"
        ;;
    sea*)
        echo "Changing to Seaside.dark"
        palette="#131513:#e6193c:#29a329:#c3c322:#3d62f5:#ad2bee:#1999b3:#8ca68c:#687d68:#e6193c:#29a329:#c3c322:#3d62f5:#ad2bee:#1999b3:#f0fff0"
        foreground_color="#8ca68c"
        background_color="#131513"
        cursor_color="#8ca68c"
        ;;
    sol*)
        echo "Changing to Solarized.dark"
        palette="#002b36:#dc322f:#859900:#b58900:#268bd2:#6c71c4:#2aa198:#93a1a1:#657b83:#dc322f:#859900:#b58900:#268bd2:#6c71c4:#2aa198:#fdf6e3"
        foreground_color="#93a1a1"
        background_color="#002b36"
        cursor_color="#93a1a1"
        ;;
    twi*)
        echo "Changing to Twilight.dark"
        palette="#1e1e1e:#cf6a4c:#8f9d6a:#f9ee98:#7587a6:#9b859d:#afc4db:#a7a7a7:#5f5a60:#cf6a4c:#8f9d6a:#f9ee98:#7587a6:#9b859d:#afc4db:#ffffff"
        foreground_color="#a7a7a7"
        background_color="#1e1e1e"
        cursor_color="#a7a7a7"
        ;;
    *)
        NC='\e[0m'
        WHITE='\e[1;37m'
        clear
        echo -e $WHITE"Usage: ./changeColor.sh [scheme]"$NC
        echo
        echo -e $WHITE"Available Schemes"$NC
        echo "  default"
        echo "  ashes.dark"
        echo "  dune.dark"
        echo "  forest.dark"
        echo "  greyscale.dark"
        echo "  heath.dark"
        echo "  lakeside.dark"
        echo "  monokai.dark"
        echo "  ocean.dark"
        echo "  paraiso.dark"
        echo "  seaside.dark"
        echo "  solarized.dark"
        echo "  twilight.dark"
        echo
        echo -e $WHITE"Examples:"$NC
        echo "  ./changeColor.sh default"
        echo "  ./changeColor.sh par"
        echo
        echo -e $WHITE"Use ./showColor.sh script to view your artwork!:"$NC
        echo
        exit 0
        ;;
esac

gsettings set org.pantheon.terminal.settings palette $palette
gsettings set org.pantheon.terminal.settings foreground $foreground_color
gsettings set org.pantheon.terminal.settings background $background_color
gsettings set org.pantheon.terminal.settings cursor-color $cursor_color


