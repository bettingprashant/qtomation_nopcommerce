@echo off
echo === Running Pytest using virtual environment Python ===

REM Activate virtual environment and run pytest with HTML report and log output
.venv\Scripts\activate

pytest -v --tb=short --maxfail=5 --disable-warnings --html=Reports/report.html --self-contained-html > pytest_output.log

echo === Pytest Output ===
type pytest_output.log
