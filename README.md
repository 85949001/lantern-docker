# lantern-docker
## 生成基础镜像
https://github.com/85949001/lantern-ubuntu-docker

## 编译镜像
docker build -t lantern:x.y.z .

x.y.z 为版本号，推荐使用lantern版本号

## 运行
docker run -itd --restart=always --name lantern -p 8010:8010 -p 8020:8020  -p 8080:8080 lantern:x.y.z

## lantern ui
访问lantern ui：http://hostip:8080/lantern 
