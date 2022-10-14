describe 'Ids Dinâmicos', :id_din do 
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/access'
    end
    it 'Cadastro' do
        find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'Leonardo'
        find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '06071987'
        find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end

    it 'Melhorando a escrita do codigo' do
        find('input[id$=UsernameInput').set 'Leonardo'
        find('input[id^=PasswordInput').set '06071987'
        find('a[id*=GetStartedButton').click
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end

    # * = Contem
    # ^ = Começa com 
    # $ = Termina com
end