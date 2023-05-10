install:
	pip install -r requirements.txt

mypy:
	python -m mypy --ignore-missing-imports -p weather_scraper 
	rm -r -rf .mypy_cache

pylint:
	python -m pylint --fail-under 10 weather_scraper

test:
	pytest tests -s \
	--doctest-modules \
	--cov=weather_scraper \
	--cov-report term-missing \
	--cov-fail-under=100

	find . | grep -E "(/__pycache__)" | xargs rm -rf
	rm -r -rf .pytest_cache .coverage .coverage.*

clean:
	rm -r -rf .mypy_cache
	find . | grep -E "(/__pycache__)" | xargs rm -rf
	rm -r -rf .pytest_cache .coverage .coverage.*
	isort weather_scraper
	python -m black weather_scraper 

isort:
	isort weather_scraper
