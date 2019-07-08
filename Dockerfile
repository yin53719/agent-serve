#制定node镜像的版本
FROM node:10.16.0
#声明作者
MAINTAINER hardy-yin
#移动当前目录下面的文件到app目录下
ADD . /app/
#进入到app目录下面，类似cd
WORKDIR /app
COPY . .
#安装依赖
RUN npm install && npm start
#对外暴露的端口
#程序启动脚本
EXPOSE 7001