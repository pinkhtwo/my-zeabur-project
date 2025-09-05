from http.server import HTTPServer, SimpleHTTPRequestHandler
import os

# 设置文件存放的文件夹（当前文件夹）
os.chdir('.')

# 启动服务器，端口 8080（Zeabur 推荐用 8080）
server_address = ('', 8080)
httpd = HTTPServer(server_address, SimpleHTTPRequestHandler)
print('服务器启动，端口 8080...')
httpd.serve_forever()