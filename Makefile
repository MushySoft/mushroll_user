.PHONY: all lint typecheck test check

lint:
	ruff check .

typecheck:
	mypy .

test:
	pytest --maxfail=1 --disable-warnings

check: lint typecheck test
