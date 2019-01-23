.PHONY: release build clean

COMPONENT="stack-drift-check-trigger"

clean:
	rm -rf BUILD package.zip

build: clean package.zip

package.zip:
	mkdir -p BUILD
	cp src/trigger.rb BUILD/
	cd BUILD && zip -9 -q -r ../package.zip .

release: clean build
	cosmos-release lambda --lambda-version=`cosmos-release generate-version $(COMPONENT)` "./package.zip" $(COMPONENT)
