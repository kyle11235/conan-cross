
# init
# conan new ndk/0.1 -t

# build
conan create . cross/testing -pr:h ./android_21_arm_clang -pr:b default

# upload
conan upload ndk/0.1@cross/testing --all -r=demo-conan-local

# test resolve
conan remove "ndk*"
conan install ndk/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./android_21_arm_clang
conan test test_package ndk/0.1@cross/testing -pr ./android_21_arm_clang