###global element, By###
'use strict'

class HomeSignupPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = HomeSignupPage
