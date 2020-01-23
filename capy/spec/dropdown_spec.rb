

describe 'Caixa de Opções', :dropdown do 
    
    it 'item especifico simples' do
        visit 'dropdown'
        select('Loki', from: 'dropdown')
        sleep 5 # Tempo
    end

    it 'item especifico como find' do
        visit 'dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 5 # Tempo
    end

    it 'qualquer item', :sample do
        visit 'dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 5
    end

end