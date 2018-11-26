class DetailProduct < SitePrism::Page
    element :title_detail, 'h1[class*=product]'
    element :modal_cart, '.notification-body-extended'
    element :title_modal, 'div[class*=cm-notification-content] h1'

end