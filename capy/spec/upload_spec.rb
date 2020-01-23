describe 'Upload', :upload do
    
    before(:each) do
        visit 'upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/Pig.jpg'
    end

# PWD é um metodo que retorna o caminho do diretório do projeto que esta sendo executado.

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        # Verificando que o teste foi para a proxima página
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload de imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
    

        # img é um elemento do Capybara que tem acesso a todos os atributos (Src, alt, width, style).
     
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/Pig.jpg'
    end

    after(:each) do
        sleep 3
    end

end