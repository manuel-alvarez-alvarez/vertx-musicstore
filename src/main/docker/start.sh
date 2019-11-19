#!/bin/sh

exec java -agentlib:jdwp=transport=dt_socket,server=n,address=host.docker.internal:5005,suspend=y -Dvertx.options.blockedThreadCheckInterval=200000000 -Dhdiv.console.level=FINE -Dhdiv.file.level=FINE -Dhdiv.single.app=true -Dhdiv.config.dir=/hdiv -javaagent:/hdiv/hdiv-ee-agent.jar -Dhdiv.toolbar.enabled=true -Dvertx.disableDnsResolver=true -jar ${APP_FILE} -conf ${APP_CONF}
