m=.

push:
	./gather_files && git add . && git commit -m $(m); git push
pull:
	git pull && ./deploy_files
setup:
	./setup
diff:
	./gather_files && git add . && git diff --cached
gather:
	./gather_files
deploy:
	./deploy_files
