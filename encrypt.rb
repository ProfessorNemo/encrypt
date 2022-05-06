# Программа для шифрования слова с помощью механизма MD5, SHA1 или SHA2

# https://ruby-doc.org/stdlib-2.4.0/libdoc/digest/rdoc/Digest.html
require 'digest'

# Запрашиваем у пользователя строку и записываем её в переменную string
puts 'Введите слово или фразу для шифрования:'
string = $stdin.gets.chomp

# Запрашиваем у пользователя метод шифрования
puts 'Каким способом зашифровать:'
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'
encrypt_method = $stdin.gets.to_i

until encrypt_method.between?(1, 3)
  puts 'Выберите 1, 2 или 3:'
  encrypt_method = $stdin.gets.to_i
end

puts 'Вот что получилось:'

# Выводим зашифрованную строку в зависимости от выбора пользователя

case encrypt_method
when 1 then puts Digest::MD5.hexdigest(string)
when 2 then puts Digest::SHA1.hexdigest(string)
when 3 then puts Digest::SHA2.hexdigest(string)
end
