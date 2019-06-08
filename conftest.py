from app import create_app
import pytest

@pytest.fixture
def runApi():
    app = create_app()
    return app
