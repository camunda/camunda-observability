# Camunda Observability

This repository contains resources to monitor Camunda components.

It includes Grafana dashboards, and may container other resources in the future (e.g., Prometheus rules, etc.).

## Grafana Dashboards

We use Grafana to visualize our metrics in dashboards for  monitoring and troubleshooting purposes.
You can find general information about Grafana [here](https://grafana.com/docs/grafana/latest/fundamentals/).

You can add the dashboards from this repository into Grafana through different methods:

* You can use the Grafana Helm Chart's `dashboards` feature to add the dashboards into Grafana:
  ```yaml
  dashboards:
    camunda.json:
      url: https://raw.githubusercontent.com/camunda/camunda-observability/refs/heads/main/grafana/dashboards/camunda/camunda.json
  ```
* Using Grafana's [Git Sync](https://grafana.com/docs/grafana/latest/as-code/observability-as-code/git-sync/)
  feature: the application/user used by Grafana to authenticate with GitHub
  must have the ability to read into this repository.
