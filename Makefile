all:
	pack build --builder gcr.io/buildpacks/builder:v1 --env GOOGLE_ENTRYPOINT="python hello.py" flask-hello-world
