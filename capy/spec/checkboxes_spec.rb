
describe 'Caixas de seleção', :checkbox do

    before(:each) do
        visit 'checkboxes'
    end
    
    it 'marcando uma opção' do
        check('thor')
        sleep 1
        uncheck('antman')
        sleep 1
        find('input[value=cap]').set(true)
        sleep 1
        check('antman')
    end

    after(:each) do
        sleep 1
    end

    it 'marcando uma opção' do
        uncheck('antman')
    end

    after(:each) do
        sleep 1
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    after(:each) do
        sleep 1
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians').set(false)
    end

end


# O Check funciona tanto para o nome como para o ID. E também pelo Value.