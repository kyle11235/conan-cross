
# init
# conan new linaro_aarch64/0.1 -t

# build
conan create . cross/testing -pr:h ./linaro_aarch64_gcc_release -pr:b default

# upload
conan upload linaro_aarch64/0.1@cross/testing --all -r=demo-conan-local

# test resolve
conan remove "linaro_aarch64*"
conan install linaro_aarch64/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./linaro_aarch64_gcc_release
conan test test_package linaro_aarch64_gcc_release/0.1@cross/testing -pr ./linaro_aarch64_gcc_release