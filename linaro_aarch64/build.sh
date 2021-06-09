
# init
# conan new linaro_aarch64/0.1 -t

# build = export, install, test
conan create . cross/testing -pr:h ./linaro_aarch64_gcc_release -pr:b default
