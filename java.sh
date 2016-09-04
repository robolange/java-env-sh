# Configure and export the Java environment variables for whichever Java
# runtime is the default (i.e., first in $PATH). For correct behavior of
# Java applications, this script must be re-sourced if the default Java
# runtime is changed.

if which java >/dev/null; then
    JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
    if [ "x$(basename ${JAVA_HOME})" = "xjre" -a \
         -x "$(dirname ${JAVA_HOME})/bin/java" ]; then
        JAVA_HOME=$(dirname ${JAVA_HOME})
    fi
    export JAVA_HOME
fi
