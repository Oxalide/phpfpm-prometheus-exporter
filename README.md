# PHP FPM Exporter for Prometheus

Exports php-fpm status and statistics via HTTP. This version is forked from this [project](https://github.com/blablacar/phpfpm-prometheus-exporter) and has been modified to be able to run with Docker et Kubernetes. 

# Usage

```
Usage of ./phpfpm-prometheus-exporter:
  -log.format value
    	Set the log target and format. Example: "logger:syslog?appname=bob&local=7" or "logger:stdout?json=true" (default "logger:stderr")
  -log.level value
    	Only log messages with the given severity or above. Valid levels: [debug, info, warn, error, fatal] (default "info")
  -nc.connect-timeout int
    	Native client connect timeout in ms (default 500)
  -phpfpm.listen-key string
    	phpfpm's listen address (default "127.0.0.1:9000")
  -phpfpm.pid-file string
    	Path to phpfpm's pid file. (default "/var/run/php5-fpm.pid")
  -phpfpm.poll-interval int
    	Poll interval in seconds (default 10)
  -phpfpm.pool-name string
    	phpfpm's pool name (default "www")
  -phpfpm.status-key string
    	phpfpm's status path (default "/status")
  -version
    	Print version information.
  -web.listen-address string
    	Address to listen on for web interface and telemetry. (default ":9101")
  -web.telemetry-path string
    	Path under which to expose metrics. (default "/metrics")
```

When using with Docker, the following environnements variables are available : 

* `LISTEN_KEY`
* `STATUS_KEY` 
* `POOL_NAME` 
* `METRICS_ADDR`  
