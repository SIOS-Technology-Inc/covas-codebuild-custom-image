.PHONY: build

IMAGE   := codebuild-custom-image
VERSION := latest

build:
	docker build -t $(IMAGE):$(VERSION) -f Dockerfile .

run:
	@echo ""
	@echo "-------------------------------------"
	@echo "Login to Docker:"
	@echo "docker exec -e COLUMNS=300 -e LINES=200 -it $(IMAGE) bash"
	@echo "-------------------------------------"
	@echo ""
	@docker run --rm --name $(IMAGE) $(IMAGE):$(VERSION) bash -c "tail -f /dev/null"
