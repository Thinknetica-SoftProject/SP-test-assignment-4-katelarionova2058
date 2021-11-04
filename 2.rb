## Задача №2:
#
# Ганс Грубер в это время пытается намайнить биткоины - чтобы сделать это ему нужно найти MD5 хэши,
# которые начинаются как минимум с 5 нулей.
# Значение, хэш которого нужно посчитать - это инпут (пользовательский ввод), за которым следует положительное число (1, 2, 3 итд).
#
# Например, для инпута abcdef результатом будет число 609043, потому что MD5 хэш для abcdef609043 начинается с 5 нулей (000001dbbfa...)
# и это минимальное такое число.
#
# Помогите Гансу найти это число.
#
# Требования к решению:
# - Инпут вводится пользователем (получение данных в коде через команду gets)
# - Результат (число) выводится через puts
#
#
## Решение:

require 'digest'
input_str = gets

input_str = input_str.chop

str_hash = ""

n = 0

number = 0

answer = true
while answer do
	number = n.to_s
	str_test = ""
	str_test = input_str + number
	str_hash = Digest::MD5.hexdigest(str_test)
	if str_hash[0] == '0' && str_hash[1] == '0' && str_hash[2] == '0' && str_hash[3] == '0' && str_hash[4] == '0' then
		#puts str_test
		#puts str_hash
		
		answer = false
	else
		n+=1
	end

end
puts number
