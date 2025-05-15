@echo off
echo === Running Pytest using virtual environment Python ===

REM Go to script directory
cd /d %~dp0

REM Ensure Reports folder exists
if not exist Reports mkdir Reports

REM Run pytest using virtual environment Python
".venv\Scripts\python.exe" -m pytest -v --tb=short --maxfail=5 --disable-warnings --html=Reports/report.html --self-contained-html > pytest_output.log

echo === Pytest Output ===
type pytest_output.log
