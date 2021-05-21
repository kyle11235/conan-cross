
# init
# conan new linaro_arm/0.1 -t

# build
conan create . cross/testing -pr:h ./linaro_arm_gcc_release -pr:b default
