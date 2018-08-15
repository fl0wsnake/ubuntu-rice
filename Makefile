push:
	./gather_files && git add . && git commit -m . && git push
pull:
	git pull && ./deploy_files
