class ResultadoBusca < SitePrism::Page
    section :nav, Navbar, 'div[class*=header-grid]'

    element :title, 'h1 span[class*=left]'
    element :select_product, '.ty-column3:nth-of-type(1)'
    element :title_product, '.ty-column3:nth-of-type(1) a[class=product-title]'

end