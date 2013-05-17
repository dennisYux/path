describe "myApp", ->

  describe "Home view", ->
    beforeEach ->
      browser().navigateTo "/#/"

    it "should render home when user navigates to /", ->
      expect(element("h1:first").text()).toMatch 'Home'

  describe "About view", ->
    beforeEach ->
      browser().navigateTo "/#/about"

    it "should render about when user navigates to /about", ->
      expect(element("h1:first").text()).toMatch 'About'

  describe "Path list view", ->    
    beforeEach ->
      browser().navigateTo "/#/paths"

    it "should render path list view when user navigates to /paths", ->
      expect(element("h1:first").text()).toMatch 'Paths'

  describe "Path detail view", ->    
    beforeEach ->
      browser().navigateTo "/#/paths/1"

    it "should render path detail view when user navigates to /paths/1", ->
      expect(element("h1:first").text()).toMatch 'Detail'

  describe "Trace detail view", ->    
    beforeEach ->
      browser().navigateTo "/#/paths/1/traces/1"

    it "should render trace detail view when user navigates to /paths/1/traces/1", ->
      expect(element("h1:first").text()).toMatch 'Detail'