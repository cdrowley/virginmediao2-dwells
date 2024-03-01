# Virgin Media 02 Dwell Analysis

A book to present a data analysis of Virgin Media / o2 mobile data focusing on dwell times.

## Getting Started

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/cdrowley/virginmediao2-dwells?quickstart=1)

Click the button above to open a new GitHub Codespace for this repository. This will create a new Codespace with all the required dependencies installed and ready to go.

You can then start working on the project using the provided make commands in a terminal to either:

- **Making Book Changes**:
	- Following any changes, to rebuild the book use `make book`.

- **Run Dwell Analysis**:
	- Create dev virtual environment using `make venv`.
    - Activate the virtual environment using `source .venv/bin/activate`.
    - Run the analysis using `python book/dwells.py`.

**Makefile Commands**:
The Makefile provides the following commands that you can execute:

- `venv`: Creates a virtual environment for development notebooks.
- `book`: Builds the Jupyter book for the project (using the `book_venv` environment).
- `book_venv`: Used by `book` to creates a Mamba environment for the book (if not already created).
- `clean`: Removes the `.venv` dev and `book_venv` book environments as well as the `book/_build` directory.


## Acknowledgements

The book/site was created using a [cookiecutter-jupyter-book template](https://github.com/giswqs/cookiecutter-jupyter-book) from [Qiusheng Wu](https://scholar.google.com/citations?user=vmml4_0AAAAJ), which itself builds on the open source [Jupyter Book project](https://jupyterbook.org/) and the [executablebooks/cookiecutter-jupyter-book template](https://github.com/executablebooks/cookiecutter-jupyter-book).
