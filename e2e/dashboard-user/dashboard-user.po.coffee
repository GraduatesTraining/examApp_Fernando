###global element, By###
'use strict'

class DashboardUserPage
  constructor: ->
    @text = element By.tagName('p')
    @heading = element By.tagName('h2')

module.exports = DashboardUserPage
