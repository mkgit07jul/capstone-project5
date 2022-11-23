docker-build: docker build --tag=capstone .

install:
	curl -O https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64

validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute


lint:
	hadolint Dockerfile

all: install lint test
