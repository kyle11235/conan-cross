
# init
# conan new ndk/0.1 -t

# build = export, install, test
conan create . cross/testing -pr:h ./android_21_arm_clang -pr:b default
