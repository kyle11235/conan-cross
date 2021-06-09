

# test resolve
conan remove "arm*"

# no build happens
conan install arm/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./armv7_cortex_a9_gcc_release
conan test test_package arm/0.1@cross/testing -pr ./armv7_cortex_a9_gcc_release