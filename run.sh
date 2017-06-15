#!/bin/sh

exec /go/bin/phpfpm-prometheus-exporter -phpfpm.listen-key ${LISTEN_KEY} -phpfpm.pool-name ${POOL_NAME} -phpfpm.status-key ${STATUS_KEY} -web.listen-address ${METRICS_ADDR}
