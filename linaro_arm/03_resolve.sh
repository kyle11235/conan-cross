
# test resolve
conan remove "linaro_arm*"

# no build happens
conan install linaro_arm/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./linaro_arm_gcc_release
conan test test_package linaro_arm/0.1@cross/testing -pr ./linaro_arm_gcc_release