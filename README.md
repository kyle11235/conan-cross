
# conan cross building demo

- prepare env

        install conan, cmake, config artifactory conan repo
        best to finish my example http://github.com.npmjs.org/kyle11235/conan-example which was tested according to the official get started guide - https://docs.conan.io/en/latest/getting_started.html

- android_ndk.tar.gz

        - guide
        
                https://docs.conan.io/en/latest/systems_cross_building/cross_building.html#examples-using-profiles

        - install ndk
        
                wget https://dl.google.com/android/repository/android-ndk-r21e-linux-x86_64.zip
                unzip android-ndk-r21e-linux-x86_64.zip

        - install ndk in other ways

                - ndk installer
                https://conan.io/center/android-ndk

                - docker
                https://docs.conan.io/en/latest/howtos/run_conan_in_docker.html#docker-conan
                https://github.com/conan-io/conan-docker-tools

        - update path in profile
        
                vi android_21_arm_clang

        - clone
        
                git clone https://github.com/kyle11235/conan-cross

        - build
        
                cd ndk
                build.sh

        - test

                cd conan-cross/ndk
                ./build.sh

- gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2

        - guide
        
                https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm

                arm -> open source tool -> Compiler toolchain for Arm processors -> Consists of GCC, GDB, Glibc, binutils and libraries

        - install

                https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads

                cd /opt
                
                wget https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2

                tar -xf gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz

        - install by installer ?

                https://github.com/omicronns/conan-arm-none-eabi-gcc-installer

        - test

                cd conan-cross/arm
                mv ./setting.yml ~/.conan/setting.yml
                ./build.sh

                - error
                error related to target os

                - fix
                remove os in profile/all conanfile.py

                - error
                exit.c:(.text.exit+0x2c): undefined reference to `_exit'

                - fix
                export CFLAGS="--specs=nosys.specs -mcpu=cortex-a9"
                export CXXFLAGS="--specs=nosys.specs -mcpu=cortex-a9"

                move these into the profile - arm_none_eabi_gcc
                add cpu settings into system.yml

- gcc-linaro-7.2.1-2017.11-x86_64_aarch64-elf.tar.xz

        - install
        
                https://releases.linaro.org/components/toolchain/binaries/7.2-2017.11/aarch64-elf/

- gcc-linaro-7.5.0-2019.12-x86_64_arm-eabi.tar.xz

        - install
        
                https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-eabi/

