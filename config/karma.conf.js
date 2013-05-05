basePath = '../';

files = [
  // JASMINE,
  // JASMINE_ADAPTER,
  MOCHA,
  MOCHA_ADAPTER,
  'public/js/lib/angular/angular.js',
  'public/js/lib/angular/angular-*.js',
  'test/client/lib/angular/angular-mocks.js',
  'public/js/**/*.coffee',
  'test/client/unit/**/*.coffee'
];

autoWatch = true;

browsers = ['Chrome'];

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
};
