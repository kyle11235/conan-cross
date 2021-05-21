
# init
# conan new linaro_aarch64/0.1 -t

# build
conan create . cross/testing -pr:h ./armv7_cortex_a9_gcc_release -pr:b default
