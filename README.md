# win_7_10_VPN
Хочется ускорить настройку VPN на компьютерах пользователей

Основные настройки VPN подключений хранятся в одном файле rasphone.pbk, по пути
C:\Users\[Имя пользователя]\AppData\Roaming\Microsoft\Network\Connections\Pbk

Поэтому сначала нужно настроить VPN подключение и уже копировать готовый файл rasphone.pbk на другие ПК.
Скриптик на PowerShell копирует нужные нам файлы и отключает прокси в настройках.
Обновляем список сетевых адаптеров если не появилось VPN подключение.
В файле rasphone.pbk не хранятся шифрованные данные (пароли и ключи), 
поэтому при первом подключений укажем логин и пароль, если требуется в настройках должны указать PreSharedKey в L2TP.