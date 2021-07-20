# web-dnd-ws

Backend webserver for the D&D v2 quick reference website. Handles user API queries and database access.

## How To

### Setup virtual environment

You should use a python virtual environnement to ensure version and code compatibility. You can configure a virtual environment with `python -m venv venv`.

### Virtual environment

To enter the virtual environment, navigate to the repository and ensure you've created the virtual environment. On Windows run `.\venv\Scripts\activate.bat`, on Unix run `source venv/bin/activate`.

To exit the virtual environment run `deactivate`.

### Install required packages

This project, being a python project, uses pip for package management. To install the required packages use the `requirements.txt` file, installing them with `pip install -r requirements.txt`.

### Export required packages

If you install new packages you need to ensure you update the requirements.txt file so other developers can ensure they have the correct / same packages. You can export your requirements with `pip freeze > requirements.txt`.

### Start development server

To start a development server run `hypercorn main:app --bind 0.0.0.0:5000`.