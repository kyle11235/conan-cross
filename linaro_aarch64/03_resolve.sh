

# test resolve
conan remove "linaro_aarch64*"

# no build happens
conan install linaro_aarch64/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./linaro_aarch64_gcc_release
conan test test_package linaro_aarch64/0.1@cross/testing -pr ./linaro_aarch64_gcc_release