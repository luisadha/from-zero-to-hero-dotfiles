# .functions.sh -*- mode: sh/bash -*-
# for bash preexec login shells sessions

preexec() { echo -e "just typed $1\n"; }
precmd_1() { echo -e "\n🔀 Suffle the songs, (\`unset precmd' or \`precmd_functions' to disable this feature)"; }
precmd_2() { brandomusicv && drawercli; }
