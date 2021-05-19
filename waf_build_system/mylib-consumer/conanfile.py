import os

from conans import ConanFile, python_requires

# 1. declare custom build helper/python requires
waf_import = python_requires("waf-build-helper/0.1@user/channel")


class TestWafConan(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    name = "waf-consumer"

    # declare generator
    generators = "Waf"

    # required pkg/dep / pkg to be tested
    requires = "mylib-waf/1.0@user/channel"

    # required pkg/dep for build (generator, installer)
    build_requires = "WafGen/0.1@user/channel", "waf/2.0.19@user/channel"

    # source code
    exports_sources = "wscript", "main.cpp"

    def build(self):

        # 2. use custom build helper/python requires -> WafBuildEnvironment
        waf = waf_import.WafBuildEnvironment(self)
        waf.configure()
        waf.build()



