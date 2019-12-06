goods = {}
loop do
  puts 'Наименование'
  name = gets.chomp
  break if name == 'стоп'

  puts 'Цена за ед.'
  unit_price = gets.chomp.to_f
  puts 'Количество'
  quantity = gets.chomp.to_f
  goods[name] = { unit_price: unit_price, quantity: quantity }
end
puts goods

total = 0
puts 'Наименование - сумма'
goods.each do |name, money|
  good_total = money[:unit_price] * money[:quantity]
  total += good_total
  puts "#{name} - #{good_total}"
end
puts "Итого - #{total}"
