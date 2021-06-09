

# test resolve
conan remove "ndk*"

# no build happens
conan install ndk/0.1@cross/testing --build=never -r=demo-conan-virtual -pr ./android_21_arm_clang
conan test test_package ndk/0.1@cross/testing -pr ./android_21_arm_clang