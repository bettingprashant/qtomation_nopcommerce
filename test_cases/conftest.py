import pytest
import undetected_chromedriver as uc
from pytest_metadata.plugin import metadata_key
@pytest.fixture()
def setup():
    options = uc.ChromeOptions()
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-blink-features=AutomationControlled")
    # Optional: open in headful mode (visible browser)
    # options.headless = False

    driver = uc.Chrome(options=options)
    yield driver
    driver.quit()



###################### for pytest html reports ######################
# hook for adding environment info in html report
def pytest_configure(config):
    config.stash[metadata_key]['Project Name'] = 'Ecommerce Project, nopcommerce'
    config.stash[metadata_key]['Test Module Name'] = 'Admin Login Tests'
    config.stash[metadata_key]['Tester Name'] = 'Raj'

# hook for delete/modify environment info in html report
@pytest.mark.optionalhook
def pytest_metadata(metadata):
    metadata.pop('JAVA_HOME', None)
    metadata.pop('Plugins', None)







# import pytest
# from selenium import webdriver
#
# @pytest.fixture()
# def setup():
#     driver = webdriver.Chrome()
#     return driver