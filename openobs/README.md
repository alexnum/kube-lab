Using FQDN and openobs port to apply collectors on current node:
helm --namespace openobserve-collector \
  install o2c openobserve/openobserve-collector \
  --set exporters."otlphttp/openobserve".endpoint=http://openobserve.default.svc.cluster.local:5080/api/default  \
  --set exporters."otlphttp/openobserve".headers.Authorization="Basic YWRtaW5AbWFpbC5jb206ZzJ2cG44Sm5OUDlOeHF2TA=="  \
  --set exporters."otlphttp/openobserve_k8s_events".endpoint=http://openobserve.default.svc.cluster.local:5080/api/default  \
  --set exporters."otlphttp/openobserve_k8s_events".headers.Authorization="Basic YWRtaW5AbWFpbC5jb206ZzJ2cG44Sm5OUDlOeHF2TA=="
