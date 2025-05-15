@echo off
echo === Activating Virtual Environment ===
call .venv\Scripts\activate.bat

echo === Running Pytest ===
pytest -v --tb=short --maxfail=5 --disable-warnings > pytest_output.log

echo === Pytest Output ===
type pytest_output.log
