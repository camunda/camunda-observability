# Camunda Observability

This repository contains resources to monitor Camunda components.

It includes Grafana dashboards, and may container other resources in the future (e.g., Prometheus rules, etc.).

> [!TIP]
> To contribute to this repository, please read the [contribution guidelines](CONTRIBUTING.md).

## Grafana Dashboards

We use Grafana to visualize our metrics in dashboards for  monitoring and troubleshooting purposes.
You can find general information about Grafana [here](https://grafana.com/docs/grafana/latest/fundamentals/).

You can add the dashboards from this repository into Grafana through different
methods. The following list should give good starting points, but is not
exhaustive:

* You can use the [Grafana Helm Chart](https://github.com/grafana-community/helm-charts/blob/main/charts/grafana/)'s
  [`dashboards`](https://github.com/grafana-community/helm-charts/tree/main/charts/grafana#import-dashboards)
  feature to add specific dashboards:
  ```yaml
  dashboards:
    camunda.json:
      url: https://raw.githubusercontent.com/camunda/camunda-observability/refs/heads/main/grafana/dashboards/camunda/camunda.json
  ```
* If you have a local clone of the repository reachable by Grafana, you can use Grafana's
  [Provisioning](https://grafana.com/docs/grafana/latest/administration/provisioning/#dashboards)
  capabilities to add specific dashboards:
  ```yaml
  apiVersion: 1

  providers:
    - name: 'Camunda Dashboards'
      orgId: 1
      folder: 'Camunda'
      type: file
      # Disable local edits
      disableDeletion: true
      allowUiUpdates: false
      options:
        # Path to the local clone
        path: /var/lib/grafana/camunda-observability/grafana/dashboards
        foldersFromFilesStructure: true
  ```
* Using Grafana's [Git Sync](https://grafana.com/docs/grafana/latest/as-code/observability-as-code/git-sync/)
  feature.
  Keep in mind that if Grafana is authenticating with GitHub as a GitHub App, the GitHub App must
  have been authorized to read this repository, even if the repository is public.
