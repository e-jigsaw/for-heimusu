module.exports = (grunt)->
  grunt.initConfig
    pkg: "<json:package.json>"
    coffee:
      src:
        files:
          "build/javascripts/eventPage.js": "src/eventPage.coffee"
        options:
          bare: true
    copy:
      manifest:
        files:
          "build/manifest.json": "manifest.json"

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-copy"

  grunt.registerTask "build", ["coffee", "copy"]
