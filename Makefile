.PHONY: build clean

build: gen/Version.hs
	stack build

gen/Version.hs:
	./tools/gen-version

clean:
	rm -rf gen/
	stack clean
