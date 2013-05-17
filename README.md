# Path

A blog-like stuff to write people's life stories. Basically it is a single page example app to learn a lot of cool techniques.

- Angular
- Express
- Mongoose / Mongodb
- Jasmine
- Mocha


### Directory Layout

    app.coffee                    --> app config
    app/                          --> server side js
      controllers/                --> render views and serve json data
      models/                   
    assets/                       --> stylus stylesheets and js configured by assets-connect
      css/                      
      img/                      
      js/                         --> client side js
        app.coffee                --> declare top-level app module
        controllers.coffee        --> application controllers
        directives.coffee         --> custom angular directives
        filters.coffee            --> custom angular filters
        services.coffee           --> custom angular services
        ...
    config/
      app.example.coffee          --> app environment config
      karma-e2e.conf.js           --> karma config file for angular e2e tests
      karma.conf.js               --> karma config file for angular unit tests
      routes.coffee               --> server side routes config
    package.json                  --> app dependencies for npm
    scripts/
      e2e-test.bat                --> angular e2e test runner for windows
      e2e-test.sh                 --> angular e2e test runner for unix
      test.bat                    --> angular unit test runner for windows
      test.sh                     --> angular unit test runner for unix
      watchr.rb                   --> watcher for auto re-running angular tests
    test/
      client/                     --> client side jasmine test
        e2e/
          scenarios.coffee        --> angular e2e tests
        lib/
          angular/                --> angular library for testing
        unit/
          controllersSpec.coffee  --> angular controllers' tests
          directivesSpec.coffee   --> angular directives' tests
          filtersSpec.coffee      --> angular filters' tests
          servicesSpec.coffee     --> angular services' tests
      mocha.opts                  --> mocha options
      server/                     --> server side mocha test
        unit/
    utils/                        --> app utilis
    views/
      index.jade                  --> main page for app
      partials/                   --> angular view partials (jade templates)
    
