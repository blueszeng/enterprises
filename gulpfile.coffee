gulp = require 'gulp'
coffee = require 'gulp-coffee'
gutil = require 'gulp-util'
sourcemaps = require 'gulp-sourcemaps'
jade = require 'gulp-jade'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
rev = require 'gulp-rev-append'
shell = require 'gulp-shell'
less  = require 'gulp-less'

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
        './components/bootstrapvalidator/dist/css/bootstrapValidator.min.css'
        './components/google-code-prettify/src/prettify.css'
        './components/bootstrap-table/src/bootstrap-table.css'
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
        './components/bootstrapvalidator/dist/js/bootstrapValidator.min.js'
        './components/jquery.hotkeys/jquery.hotkeys.js'
        './components/bootstrap-wysiwyg/bootstrap-wysiwyg.js'
        './components/google-code-prettify/src/prettify.js'
        './components/bootstrap-table/src/bootstrap-table.js'
        ]
    .pipe gulp.dest './src/public/assets/global/plugins'


gulp.task 'buildBootstrapLess', () ->
    gulp.src ['./components/bootstrap/less/bootstrap.less']
        .pipe sourcemaps.init()
        .pipe less()
        .pipe sourcemaps.write '.'
        .pipe gulp.dest './src/public/assets/global/css'

gulp.task 'buildAll', [ "converCoffee", "copyPublicSource","copyViewsSource", "copyPackageJSON"],
() ->
    console.log 'build success....'

gulp.task 'watch', () ->
    gulp.watch './components/bootstrap/less/**/*', ['buildBootstrapLess']
