describe "myApp", ->

  describe "home", ->
    beforeEach ->
      browser().navigateTo "/#/"

    it "should render home when user navigates to /", ->
      console.log browser().location().url()
      expect(element("h1:first").text()).toMatch 'Home'

  describe "about", ->
    beforeEach ->
      browser().navigateTo "/#/about"

    it "should render about when user navigates to /about", ->
      expect(element("h1:first").text()).toMatch 'About'