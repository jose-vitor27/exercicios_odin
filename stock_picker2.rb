def stock_picker(prices)
  melhor_lucro = 0
  melhores_dias = []
  prices.each_with_index do |preco_compra, dia_compra|
    prices.each_with_index do |preco_venda, dia_venda|
      if dia_venda > dia_compra
        lucro = preco_venda - preco_compra
      
        if lucro > melhor_lucro
          melhor_lucro = lucro
          melhores_dias = [dia_compra, dia_venda]
        end
      end
    end  
  end
    
    p melhores_dias
end

stock_picker([80,3,6,9,15,8,6,7,1]) 


