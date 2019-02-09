IMAGE := $(notdir $(shell pwd))
JEKYLL := docker run --init --rm -v $${PWD}:/site -p 4000:4000 ${IMAGE} bundle exec jekyll

.PHONY: image
image:
	docker build -t $(IMAGE) .

.PHONY: serve
serve:
	$(JEKYLL) serve -H 0.0.0.0

.PHONY: build
build:
	$(JEKYLL) build

.PHONY: clean
clean:
	rm -rf _site
