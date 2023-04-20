FILE=main

.PHONY: build
build:
	@clear
	@echo Start compiling ./main

	@gcc -std=c99 -Wall ./lib/lua/src/*.c ./src/*.c -o main
	@echo Build was succeccfully.

.PHONY: clean
clean:
	@clear
	@rm ./main
	@echo File ./main was deleted succeccfully.
	@echo

.PHONY: run
run: main
	@clear
	@./main

.PHONY: setup
setup:
	@./setup.sh

.PHONY: help
help:
	@clear
	@echo \#########

	@echo Commands: help, setup, build, run, clean
	@echo \#########

.PHONY: check
check:
	#It's first step for synthax analize
	@cat -e -t -v Makefile

.PHONY: pre
pre:
	#Usually used alias `gd --staged`
	@git diff --staged
