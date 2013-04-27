targets:
	@echo 'available targets:'
	@echo '--------------------------'
	@echo 'make sync   -> grab latest version of everything'
	@echo 'make retro  -> build and run ./b4/gen/retro'
	@echo

sync:
	git fetch
	git submodule init
	mkdir -p b4/gen
	cd b4; make init
	git submodule update

retro:
	cd b4; make retro
