
# init
# conan new arm/0.1 -t

# build
conan create . cross/testing -pr:h ./arm_none_eabi_gcc -pr:b default

# upload
conan upload arm/0.1@cross/testing --all -r=demo-conan-local

# test resolve
conan remove "arm*"
conan install arm/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./arm_none_eabi_gcc
conan test test_package arm/0.1@cross/testing -pr ./arm_none_eabi_gcc