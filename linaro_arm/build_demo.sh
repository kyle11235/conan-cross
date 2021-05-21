
# init
# conan new linaro_arm/0.1 -t

# build
conan create . cross/testing -pr:h ./linaro_arm_gcc_release -pr:b default

# upload
conan upload linaro_arm/0.1@cross/testing --all -r=demo-conan-local

# test resolve
conan remove "linaro_arm*"
conan install linaro_arm/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./linaro_arm_gcc_release
conan test test_package linaro_arm/0.1@cross/testing -pr ./linaro_arm_gcc_release