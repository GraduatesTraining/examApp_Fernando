###global element, By###
'use strict'

class DashboardMainPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = DashboardMainPage
