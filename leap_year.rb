puts 'Введите день, месяц, год через пробел'
day, month, year = gets.chomp.split(' ').map(&:to_i)

leap = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
calendar = {
    1 => 31, 2 => leap ? 29 : 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31,
    8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31
}
result = calendar.take(month - 1).sum(day) { |_, days| days }

puts "Порядковый номер дня: #{result}"