require "functions_framework"

FunctionsFramework.http("hello") do |request|
  "Hello, world! (Deploy from GitHub Actions)\n"
end
