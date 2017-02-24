var gulp = require('gulp');
var sass = require('gulp-sass');
var minifyCSS = require('gulp-csso');

// Build SCSS
var scssPath = '_assets/scss/*.scss';

gulp.task('stylesheets', function(){
	return gulp.src(scssPath)
		   .pipe(sass().on('error', sass.logError))
		   .pipe(minifyCSS())
		   .pipe(gulp.dest('assets/css'));
});

gulp.task('watch', function(){
	gulp.watch(scssPath, ['stylesheets']);
});

gulp.task('default', ['stylesheets']);