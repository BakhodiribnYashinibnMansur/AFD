.PHONY: all

CURRENT_DIR=$(shell pwd)
APP=$(shell basename ${CURRENT_DIR})

APP_CMD_DIR=${CURRENT_DIR}/cmd

accessBash:
	sudo chmod +x ${CURRENT_DIR}/access/access.sh;
	bash ${CURRENT_DIR}/access/access.sh ${CURRENT_DIR} 2> /dev/null;
