# Contributing

This guide describes how to contribute to this project for internal Camundi.

## Grafana Dashboards

To modify the Grafana dashboards in this repositoryn you can either:

1. Edit them directly into Grafana
2. Or do the modifications on the dashboard files directly

### Editing the dashboards through Grafana

The dashboards in this repository can be edited directly through Grafana and
saved back in the repository (this uses [Grafana's Git Sync](https://grafana.com/docs/grafana/latest/as-code/observability-as-code/git-sync/)).

To do this:

1. Open the list of dashboards in Grafana at https://dashboard.benchmark.camunda.cloud/dashboards
2. In **the `camunda-observability` folder**: select the dashboard you want to edit
3. Edit the dashboard as needed
4. To save the changes back to the repository, click on the "Save" button, then:
   1. Pick a branch name like: `dashboard/XXX`
   2. Add a comment explaining your change
   3. Click the "Save" button
   4. Grafana will display a link to open the change has a pull request:
      1. Click on the link to GitHub
      2. Adjust the pull request title and description as needed
      3. Open the pull request

The pull request should automatically be updated by Grafana with links back
towards the dashboard and some screenshots showing the changes made.

> [!NOTE]
> It can take up to 1 minute to have the screenshots posted by Grafana.
> Depending on your change and the dashboards modified, the change will may not
> be easily visible in the screenshots; they don't remove the need to explain
> what was changed in the pull request description.

Once the pull request has been merged, the changes should be automatically reflected in Grafana.

### Editing the dashboard files directly

Instead of making the changes in Grafana, you can also directly edit the
dashboard JSON files in the repository.

This follows the usual pull request process:

1. Make the changes on the dashboards files and create a pull request
2. Grafana should automatically react and post links to see the edited
   dashboards directly in Grafana, including screenshots of the changes made.

Once merged, Grafana should automatically reflect the changes made.

## Commit Guidelines

Commit messages should follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary) format.

For example:

```
fix: adjust error colors

Use the "red" color scheme to display all the errors, instead of random colors.
```

Available commit types:

- `feat` - enhancements, new features
- `fix` - bug fixes
- `refactor` - non-behavior changes
- `test` - only changes in tests
- `docs` - changes in the documentation, readme, etc.
- `style` - apply code styles
- `ci` - changes to the CI
