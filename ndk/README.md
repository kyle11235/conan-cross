
# ndk

        - guide
        https://docs.conan.io/en/latest/systems_cross_building/cross_building.html#examples-using-profiles

        - prepare env
        install conan, cmake, config artifactory conan repo
        
        best to get env ready by finishing conan's getting started guide
        e.g.
        https://docs.conan.io/en/latest/getting_started.html
        
        - install ndk
        wget https://dl.google.com/android/repository/android-ndk-r21e-linux-x86_64.zip
        unzip android-ndk-r21e-linux-x86_64.zip

        - update path in profile
        vi android_21_arm_clang

        - clone
        git clone https://github.com/kyle11235/conan-cross

        - build
        cd ndk
        build.sh