from datetime import datetime

current_time = datetime.now()
current_time_string = str(current_time)  # Chuyển đổi thời gian thành chuỗi
numbers_only = ''.join(filter(str.isdigit, current_time_string))
print(current_time)
print(numbers_only)
