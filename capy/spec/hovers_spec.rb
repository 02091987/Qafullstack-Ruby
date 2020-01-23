
describe 'Mouse Hover', :hovers do

    before(:each) do
        visit 'hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt=Blade]')
        card.hover

        #Verificar se esta exibindo o texto abaixo da foto
        expect(page).to have_content 'Nome: Blade'
    end

    after(:each) do
        sleep 1 #temporário, só para verificar o resultado
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt="Pantera Negra"]')
        card.hover

        #Verificar se esta exibindo o texto abaixo da foto
        expect(page).to have_content 'Nome: Pantera Negra'
    end

    after(:each) do
        sleep 1 #temporário, só para verificar o resultado
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        card = find('img[alt="Homem Aranha"]')
        card.hover

        #Verificar se esta exibindo o texto abaixo da foto
        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 1 #temporário, só para verificar o resultado
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt^=Pantera]')
        card.hover

        #Verificar se esta exibindo o texto abaixo da foto
        expect(page).to have_content 'Nome: Pantera Negra'
    end



end


# Para realizar buscas por elementos na tela que comece com a palavra, colocar ^
# Exemplo $('img[alt^=Pantera]'); Vai pesquisar tudo que começa com a palavra Pantera.

# Para realizar buscas por elementos na tela que termina com a palavra, colocar $
# Exemplo $('img[alt$=Aranha]'); Vai pesquisar tudo que começa com a palavra Aranha.

# Para realizar buscas por elementos na tela que contenha a palavra, colocar *
# Exemplo $('img[alt*=Aranha]'); Vai pesquisar tudo que contem com a palavra Aranha.