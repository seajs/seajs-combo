
build:
	@rm -rf dist
	@mkdir dist
	@sed "s/seajs-combo/seajs-combo-debug/" src/seajs-combo.js >dist/seajs-combo-debug.js
	@sed "s/data\.test/false/" src/seajs-combo.js >dist/t.js
	@uglifyjs dist/t.js -o dist/seajs-combo.js -mc
	@rm dist/t.js
	@make size

test:
	@make test -C ../seajs

size:
	@../seajs/tools/size.sh seajs-combo
