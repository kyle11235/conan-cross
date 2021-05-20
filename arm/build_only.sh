
# init
# conan new arm/0.1 -t

# build
conan create . cross/testing -pr:h ./arm_none_eabi_gcc -pr:b default
