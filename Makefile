DATE=$(shell date +%Y/%m/%d)
.PHONY: generate
generate: # Generate module
	mint run genesis generate template.yml --options "date:${DATE}"