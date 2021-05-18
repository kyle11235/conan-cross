
# A python requires is similar to any other recipe, only the way used by customer code is different
# https://docs.conan.io/en/latest/extending/python_requires.html#python-requires

# custom build helper = python requires
conan export . waf_build_helper/0.1@cross/testing


