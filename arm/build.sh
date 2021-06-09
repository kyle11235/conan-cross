
# init
# conan new arm/0.1 -t

# build = export, install, test
conan create . cross/testing -pr:h ./armv7_cortex_a9_gcc_release -pr:b default
