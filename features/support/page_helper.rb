# import de pagians

Dir[File.join(File.dirname(__FILE__), '../page/*_page.rb')].each { |file| require file }

module Pages
    def home
        @home ||= HomePage.new
    end

    def busca
        @busca ||= ResultadoBusca.new
    end

    def detail
        @detail ||= DetailProduct.new
    end

    def cart
        @cart ||= CartPage.new
    end
end