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
## Решение

require 'digest'
input_str = gets.chomp()
str_hash = ""
n = 0
number = 0
answer = true
help_md5 = Digest::MD5.new

while answer do
	help_md5 << "#{n.to_s}"
	help_str = help_md5.hexdigest
	if help_str[0] == '0' && help_str[1] == '0' && help_str[2] == '0' && help_str[3] == '0' && help_str[4] == '0' then
		#puts str_test
		#puts str_hash
		answer = false
	else
		help_md5.reset
		help_md5.update input_str
		n+=1
	end


end
