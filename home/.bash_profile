[ -s ~/.bashrc ] && . ~/.bashrc
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
export PATH=$PATH:$HOME/bin:$HOME/Downloads/apache-maven-3.3.3/bin
export PATH=${PATH}:/usr/local/sicstus4.3.2/bin
export SAVN_ENV='DEV'

##
# Your previous /Users/smitra/.bash_profile file was backed up as /Users/smitra/.bash_profile.macports-saved_2015-08-03_at_12:17:36
##

# MacPorts Installer addition on 2015-08-03_at_12:17:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/smitra/.bash_profile file was backed up as /Users/smitra/.bash_profile.macports-saved_2015-08-03_at_12:19:45
##

# MacPorts Installer addition on 2015-08-03_at_12:19:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/smitra/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/smitra/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/smitra/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/smitra/Downloads/google-cloud-sdk/completion.bash.inc'; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
