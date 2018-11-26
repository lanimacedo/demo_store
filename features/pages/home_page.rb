require_relative 'sections'

class HomePage < SitePrism::Page
    set_url 'http://demo.cs-cart.com/'
    section :nav, Navbar, 'div[class*=header-grid]'
end