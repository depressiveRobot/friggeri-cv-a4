.DEFAULT_GOAL := default

# default goal
default: pdf clean

## Create PDF
pdf:
	xelatex cv
	biber cv
	xelatex cv

## Cleanup build files
clean:
	rm -rf cv.log cv.out cv.aux cv.blg cv.bbl cv.bcf cv.run.xml

## Show this help screen
help:
	@printf "Available targets\n\n"
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-30s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)
