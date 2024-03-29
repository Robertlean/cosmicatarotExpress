var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');
const methodOverride = require('method-override');


let indexRouter = require('./routes/index');
let usersRouter = require('./routes/users');
let registerRouter = require('./routes/register');
let logoutRouter = require('./routes/logout');
let perfilRouter = require('./routes/profile');
let horoscopoRouter = require('./routes/horoscopo');
let passwordRouter = require('./routes/password')

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({secret:'CosTar',resave: false,
saveUninitialized: true}))
app.use(methodOverride('_method'));

app.use('/', indexRouter);
app.use('/login', usersRouter)
app.use('/register',registerRouter);
app.use('/logout', logoutRouter);
app.use('/profile',perfilRouter);
app.use('/horoscope',horoscopoRouter);
app.use('/editpassword', passwordRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
