
class WafBuildEnvironment(object):
    def __init__(self, conanfile):
        self._conanfile = conanfile
        self._settings = self._conanfile.settings

    def build_type_flags(self, settings):
        if "Visual Studio" in self._compiler:
            if self._build_type == "Debug":
                return ['/Zi', '/FS']
            elif self._build_type == "Release":
                return ['/O2']
        else:
            if self._build_type == "Debug":
                return ['-g']
            elif self._build_type == "Release":
                return ['-O3']

    # create something like a standard Waf script - wscript_example.py
    def _toolchain_content(self):
        sections = []
        sections.append("def configure(conf):")
        sections.append("    conf.env.CXXFLAGS = conf.env.CXXFLAGS or []")
        _build_type_flags = build_type_flags(self._settings)
        sections.append("    conf.env.CXXFLAGS.extend({})".format(_build_type_flags))
        return "\n".join(sections)

    def _save_toolchain_file(self):
        filename = "waf_conan_toolchain.py"
        content = self._toolchain_content()

        # write into build_folder 
        output_path = self._conanfile.build_folder
        save(os.path.join(output_path, filename), content)

    def configure(self, args=None):
        self._save_toolchain_file()
        args = args or []
        command = "waf configure " + " ".join(arg for arg in args)
        self._conanfile.run(command)

    def build(self, args=None):
        args = args or []
        command = "waf build " + " ".join(arg for arg in args)
        self._conanfile.run(command)
