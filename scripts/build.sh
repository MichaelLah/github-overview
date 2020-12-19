
#dos2unix scripts/build.sh

build() {
    echo 'building react'

    rm -rf dist/*

    export INLINE_RUNTIME_CHUNK=false
    export GENERATE_SOURCEMAP=false

    echo test1

    react-scripts build


    mkdir -p dist
    cp -r build/* dist

    mv dist/index.html dist/popup.html

  #   cp -r dist /mnt/c/Users/Mkrah/chrome\ extension\ testing/build
}

build