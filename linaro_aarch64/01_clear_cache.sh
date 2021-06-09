
# clear local cache
conan remove "linaro_aarch64*"

# clear remote pkg
FROM=demo-conan-local/cross/linaro_aarch64/0.1/testing

curl -H 'X-JFrog-Art-Api: '"$ART_API_KEY"'' \
-X DELETE "http://182.92.214.141:8082/artifactory/$FROM"
