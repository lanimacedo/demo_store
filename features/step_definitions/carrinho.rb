Dado("que estou na home")do
    home.load
    expect(home.nav.phone.text).to eql '+1 917-722-7425Mon-Fr 9a.m.-6p.m.'
end

Quando("pesquiso pelo produto {string} no campo de busca") do |string|
    home.nav.search_item(string)
    expect(busca.title.text).to eql 'Search results'
    @title_push=busca.title_product.text
end

Quando("acesso o detalhe do produto") do
    busca.select_product.click
    expect(detail.title_detail.text).to eql @title_push
end

Quando("adiciono ao carrinho") do
    click_button 'Add to cart'
    expect(page).to have_css('.notification-body-extended')
    expect(detail.title_modal.text).to eql 'The product was added to your cart'
end

Entao("valido se os produtos foram adicionados com sucesso") do
    home.nav.link_cart.click
    home.nav.view_cart.click
    expect(cart.title_page.text).to eql 'Cart contents'
    total = cart.list_products.size
    expect(total).to eql 2
end