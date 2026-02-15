var gulp = require('gulp');
var sass = require('gulp-sass');
var minifyCSS = require('gulp-csso');

var scssPath = '_assets/scss/**/*.scss';

// Build SCSS
gulp.task('stylesheets', function(){
	return gulp.src(scssPath)
		   .pipe(sass().on('error', sass.logError))
		   .pipe(minifyCSS())
		   .pipe(gulp.dest('assets/css'));
});

// Watch
gulp.task('watch', function(){
	gulp.watch(scssPath, ['stylesheets']);
});

// Default task
gulp.task('default', ['stylesheets']);