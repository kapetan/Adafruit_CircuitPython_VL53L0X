PYTHON = python3
ENVIRONMENT = env

.PHONY: virtual virtual-activate virtual-deactivate requirements-install requirements-freeze build

virtual: ${ENVIRONMENT}

# Usage: $(make virtual-activate)
virtual-activate: virtual
	@echo source ${ENVIRONMENT}/bin/activate

virtual-deactivate:
	deactivate

requirements-install:
	${PYTHON} -m pip install -r requirements.txt

requirements-freeze:
	${PYTHON} -m pip freeze > requirements.txt

build:
	${PYTHON} -m mpy_cross -mno-unicode -msmall-int-bits=31 adafruit_vl53l0x.py

${ENVIRONMENT}:
	${PYTHON} -m venv ${ENVIRONMENT}
