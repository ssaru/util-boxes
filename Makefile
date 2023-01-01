init: set-git
clean: clean-pyc clean-test

####  set  ####
set-git:
	git config --local commit.template .gitmessage.txt
	git config --local core.editor "vim"

####  clean  ####
clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	rm -f .coverage
	rm -f .coverage.*
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf tests/output
	rm -rf *.log
	rm -rf .pytest_cache
#################
