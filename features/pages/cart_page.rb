class CartPage < SitePrism::Page
    element  :title_page, 'h1[class=ty-mainbox-title]'
    elements :list_products, 'a[class=ty-cart-content__product-title]'
end