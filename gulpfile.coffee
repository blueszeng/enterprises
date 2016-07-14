gulp = require 'gulp'
coffee = require 'gulp-coffee'
gutil = require 'gulp-util'
sourcemaps = require 'gulp-sourcemaps'
jade = require 'gulp-jade'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
rev = require 'gulp-rev-append'
shell = require 'gulp-shell'

gulp.task 'converCoffee', (cb) ->
    gulp.src ['./src/**/*.coffee', '!./src/node_modules/**/*',
    '!./src/public/**/*']
    .pipe coffee(bare:true).on 'error', gutil.log
    .pipe gulp.dest './build'

gulp.task 'copyPublicSource', () ->
    gulp.src './src/public/**/*'
    .pipe gulp.dest './build/public'

gulp.task 'copyViewsSource', () ->
    gulp.src './src/views/**/*'
    .pipe gulp.dest './build/views'

gulp.task 'copyPackageJSON', () ->
    gulp.src './package.json'
    .pipe gulp.dest './build'

gulp.task 'buildDocker', shell.task [
  'cnpm install',
  'docker build -t remote-deerwar-op',
  'docker tag $(docker images | awk "{printf("%s\n", $3)}"" | awk "NR ==2")
    registry.aliyuncs.com/tdtz/deerwar-op',
  'docker push registry.aliyuncs.com/tdtz/deerwar-op'
]

gulp.task 'buildBowerlib', () ->
    # copy css file
    gulp.src [
        './components/bootstrap/dist/css/bootstrap.css'
        ]
    .pipe gulp.dest './src/public/assets/global/css'

    # copy css.map file
    gulp.src [
        './components/bootstrap/dist/css/bootstrap.css.map'
        ]
    .pipe gulp.dest './src/public/assets/global/css'
    
    # copy js file
    gulp.src [
        './components/bootstrap/dist/js/bootstrap.js'
        './components/jquery/dist/jquery.js'
        './components/crypto-js/crypto-js.js'
        ]
    .pipe gulp.dest './src/public/assets/global/plugins'

gulp.task 'default', [ "converCoffee", "copyPublicSource","copyViewsSource", "copyPackageJSON"],
() ->
    console.log 'cover...ok..'
