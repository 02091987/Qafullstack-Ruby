
describe 'IDs Dinamicos', :ids_dinamicos do
    
    before(:each) do
        visit 'access'
    end

    it 'cadastro' do

        #Pegando todo o ID, geralmente assim é desenvolvido por scripts que geram html automático
        #find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'paulo'
        #find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
        #find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click

        #Simplificando a Pesquisa de ID
        # $ => termina com
        # ^ => começa com
        # * => Contem

        find('input[id$=UsernameInput]').set 'Paulo'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3

    end

end