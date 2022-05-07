#!/bin/bash
# Build env
docker build . --file Dockerfile.base --tag builder-base

BOARDS=$(ls ./boards)
VERSIONS=$(ls ./versions)

for VERSION in $VERSIONS; do
	docker build . --file Dockerfile.version --tag builder-version:$VERSION --build-arg VERSION=$VERSION

	for BOARD in $BOARDS; do
		mkdir -p boards/$BOARD/build

		docker run --rm -v $(pwd)/scripts:/tmp/scripts -v $(pwd)/boards/$BOARD:/tmp/board -e VERSION=$VERSION builder-version:$VERSION /bin/bash /tmp/scripts/build-toolchain.sh
	done
done
