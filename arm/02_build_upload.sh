
# init
# conan new arm/0.1 -t

# build
conan create . cross/testing -pr:h ./armv7_cortex_a9_gcc_release -pr:b default

# upload
conan upload arm/0.1@cross/testing --all -r=demo-conan-local
