module.exports = (grunt)->
  grunt.initConfig
    pkg: "<json:package.json>"
    coffee:
      src:
        files:
          "build/javascripts/popup.js": "src/popup.coffee"
        options:
          bare: true
    copy:
      manifest:
        files:
          "build/manifest.json": "manifest.json"
      vendor:
        files:
          "build/javascripts/jquery.js": "vendor/jquery.js"
    jade:
      popup:
        files:
          "build/popup.html": "views/popup.jade"

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-jade"

  grunt.registerTask "build", ["coffee", "copy", "jade"]
