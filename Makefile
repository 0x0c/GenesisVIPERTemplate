.PHONY: generate
generate: # Generate module
	mint run genesis generate template.yml --options "date:$(shell date +%Y/%m/%d)"