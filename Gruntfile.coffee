module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    compass:
      dist:
       option:
        config: 'config.rb'

    watch:
      css:
        files: ['sass/**/*.scss']
        tasks: ['compass']
        options:
          atBegin: true
  })

  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.registerTask('default',['compass'])
