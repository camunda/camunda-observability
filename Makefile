.PHONY: all
all: lint

.PHONY: lint
lint:
	./scripts/lint.sh grafana/dashboards
