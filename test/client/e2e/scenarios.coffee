describe "myApp", ->

  describe "Home view", ->
    beforeEach ->
      browser().navigateTo "/#/"

    it "should render home when user navigates to /", ->
      expect(element("h1:first").text()).toMatch 'Home'

    it "should navigate to /paths/1 when user clicks first path detail link", ->
      element("li.path > h3 > a:first").click()
      expect(browser().location().url()).toBe '/paths/1'

  describe "Path detail view", ->    
    beforeEach ->
      browser().navigateTo "/#/paths/1"

    it "should render path detail view when user navigates to /paths/1", ->
      expect(element("h1:first").text()).toMatch 'Detail'

  describe "About view", ->
    beforeEach ->
      browser().navigateTo "/#/about"

    it "should render about when user navigates to /about", ->
      expect(element("h1:first").text()).toMatch 'About'