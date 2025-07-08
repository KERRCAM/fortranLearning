
build:
	@gfortran $(f).f90 -o bin/$(f)

	$(info Output:)
	@./bin/$(f)