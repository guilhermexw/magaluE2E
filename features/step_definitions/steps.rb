#encoding: utf-8

Dado("que digito o item {string} no campo da busca") do |product|
  @product = product
  fill_in 'inpHeaderSearch', with: @product
end

Dado("entrei na página de detalhes deste produto") do
  find("a", text: @product).click
end

Quando("eu clico no botão para realizar a busca") do
  find("#btnHeaderSearch").click
end

Então("vejo a mensagem com a quantidade de: {string}") do |expect_message|
  expect(page).to have_text expect_message
end

Então("vejo a mensagem: {string}") do |expect_message|
  expect(page).to have_text expect_message
end

Dado("que escolhi o item {string} na lista") do |product|
  @product = product

  steps %(
    Dado que digito o item "#{product}" no campo da busca
    Quando eu clico no botão para realizar a busca
  )

  if product == 'Televisor Smart TV LED 43” LG 43LM' 
    find("#product_gkg76gc40f").click  
  else  
    find("#product_dj2a545g47").click
  end  
end

Quando("eu adiciono ao meu carrinho de compras") do
  click_on "Adicionar à sacola"
end

Então("visualizo o produto e seu respectivo preço no carrinho") do 
  expect(page).to have_text "gkg76gc40f"
end
