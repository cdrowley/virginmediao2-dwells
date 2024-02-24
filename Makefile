.PHONY: venv book_venv book

SHELL := /bin/bash

CONDA_DIR := /opt/conda
BOOK_VENV := virginmediao2-dwells

venv:
	@echo "Creating .venv"
	set -e; \
	python -m venv .venv; \
	source .venv/bin/activate; \
	pip install --upgrade pip; \
	pip install -r requirements_dev.txt;

book_venv:
	@echo "Creating Mamba environment $(BOOK_VENV)"
	set -e; \
	if [[ ! -d "$(CONDA_DIR)/envs/$(BOOK_VENV)" ]]; then \
		$(CONDA_DIR)/bin/mamba create -n $(BOOK_VENV) python=3.9 -y; \
		echo "Mamba environment $(BOOK_VENV) created."; \
		else \
		echo "Mamba environment $(BOOK_VENV) already exists."; \
	fi

book: book_venv
	@echo "Building book"
	set -e; \
	source $(CONDA_DIR)/bin/activate $(BOOK_VENV); \
	pip install -r requirements_book.txt; \
	jupyter-book build .; \
	cd _build/html && python -m http.server 8000

clean:
	@echo "Cleaning up environments"
	rm -rf .venv
	$(CONDA_DIR)/bin/conda env remove -n $(BOOK_VENV) -y
	rm -rf _build
