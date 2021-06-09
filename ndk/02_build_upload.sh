
# init
# conan new ndk/0.1 -t

# build
conan create . cross/testing -pr:h ./android_21_arm_clang -pr:b default

# upload
conan upload ndk/0.1@cross/testing --all -r=demo-conan-local
