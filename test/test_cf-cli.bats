@test "cf-cli is the correct version" {
  run docker run smizy/cf-cli:${TAG} cf -v
  [ $status -eq 0 ]
  [ "${lines[0]:0:17}" = "cf version ${VERSION}" ]
}