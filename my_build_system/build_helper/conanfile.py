from conans import ConanFile

from waf_environment import WafBuildEnvironment
 
class PythonRequires(ConanFile):
    name = "waf-build-helper"
    version = "0.1"
    
    # export a local source code
    exports = "waf_environment.py"
    


