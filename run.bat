@echo off
echo === Running Pytest using virtual environment Python ===
".venv\Scripts\python.exe" -m pytest -v --tb=short --maxfail=5 --disable-warnings > pytest_output.log

echo === Pytest Output ===
type pytest_output.log
