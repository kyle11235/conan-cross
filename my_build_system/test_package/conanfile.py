from conans import ConanFile


class TestWafConan(ConanFile):

    # 1. declare custom build helper/python requires
    python_requires = "waf-build-helper/0.1@cross/testing"
    settings = "os", "compiler", "build_type", "arch"
    name = "waf-consumer"

    # declare generator
    generators = "Waf"

    # required pkg/dep / pkg to be tested
    # requires = "mylib-waf/1.0"

    # required pkg/dep for build (generator, installer)
    build_requires = "WafGen/0.1", "waf/2.0.19"

    # source code
    exports_sources = "wscript", "main.cpp"

    def build(self):

        # 2. use custom build helper/python requires -> WafBuildEnvironment
        waf = self.python_requires["waf-build-helper"].module.WafBuildEnvironment(self)
        waf.configure()
        waf.build()
