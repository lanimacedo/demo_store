
class Navbar < SitePrism::Section
    element :phone, '.ty-cr-phone'
    element :insert_item, 'input[id=search_input]'
    element :button_search, '.ty-search-block button[title=Search]'
    element :link_cart, '#sw_dropdown_8 a'
    element :list_cart, 'div[class*=ty-cart-items] a'
    element :view_cart, 'div[class*=cm-cart-content] .ty-float-left'

    def search_item(dados)
        insert_item.click
        insert_item.set dados
        button_search.click
    end
end