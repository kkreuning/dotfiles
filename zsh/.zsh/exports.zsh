export PATH=$HOME/bin:/usr/local/bin:$PATH

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_202`

export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss2M -Duser.timezone=GMT"

export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh

export DEFAULT_USER=kkreuning

# Geometry prompt
export PROMPT_GEOMETRY_RPROMPT_ASYNC=true
export PROMPT_GEOMETRY_GIT_TIME=false

# Postgresql
export PGHOST=127.0.0.1
export PGPORT=5432
export PGUSER=postgres
export PGPASSWORD=password
export PGDATABASE=movies
