
describe 'Botões de Radio', :radio do

    before(:each) do
        visit 'radios'
    end
    

    it 'seleção por ID' do
        choose('cap')
    end

    it 'seleção por find e css selector' do
        find('input[value=guardians]').click
        sleep 2
        find('input[value=ant-man]').click
        sleep 2
        find('input[value=black-panther]').click
    end

    after(:each) do
        sleep 2
    end

end