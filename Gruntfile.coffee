module.exports = (grunt) ->

  # Utilities
  # =========
  path = require "path"

  (()->
    # load tasks
    require("load-grunt-tasks") @
    
    # Package
    # =======
    pkg = @file.readJSON "package.json"
    
    @initConfig
      pkg: pkg
      coffeelint:
        meta: "Gruntfile.coffee"
        pkg: "index.coffee"
        options:
          no_trailing_whitespace:
            level: "error"
    
    @registerTask "default",
      "coffeelint"
  ).call grunt