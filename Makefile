targets:
	@echo 'available targets:'
	@echo '--------------------------'
	@echo 'make sync   -> grab latest version of everything'
	@echo 'make retro  -> build and run ./b4/gen/retro'
	@echo

sync:
	git fetch
	git submodule init
	git submodule update
	mkdir -p b4/gen
	cd b4; make init


retro:
	cd b4; make retro
