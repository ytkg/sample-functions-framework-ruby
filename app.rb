require "functions_framework"

FunctionsFramework.http("hello") do |request|
  "Hello, world! (Take 2)\n"
end
