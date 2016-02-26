###global element, By###
'use strict'

class HomeLoginPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = HomeLoginPage
