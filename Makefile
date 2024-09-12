 install:
	pip install --upgrade pip  &&\
	pip install -r requirements.txt

format:
	black *.py #format all files	

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py

test:
	python -m pytest -cov test_multiply.py