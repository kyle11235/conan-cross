
# init
# conan new linaro_aarch64/0.1 -t

# build
conan create . cross/testing -pr:h ./linaro_aarch64_gcc_release -pr:b default

# upload
conan upload linaro_aarch64/0.1@cross/testing --all -r=demo-conan-local
