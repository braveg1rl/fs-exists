build:
	mkdir -p lib
	coffee --compile -m --output lib/ src/

watch:
	coffee --watch --require coffeescript-growl --compile --output lib/ src/
	
test:
	true

jumpstart:
	curl -u 'meryn' https://api.github.com/user/repos -d '{"name":"fs-exists", "description":"Wraps fs.exists so callback is called with (err, result) instead of just (result).","private":false}'
	touch src/fs-exists.coffee
	git init
	git remote add origin git@github.com:meryn/fs-exists
	git add *
	git commit -m "jumpstart commit."
	git push -u origin master