.PHONY: generate-module
generate-module: # Generate module
	mint run genesis generate ./template/template.yml --options "date:$(shell date +%Y/%m/%d), module_name:ExampleModule" --option-path default_values.yml

.PHONY: format
format: # Run SwiftFormat
	mint run swiftformat .
