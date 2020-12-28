

* 编译程序

```bash 
mvn -B clean compile package -Prlease -Dmaven.test.skip=true
```

* 编译打包基础镜像``qiujiahong/base-dolphinscheduler:latest`` 

```bash
sh ./docker/build-base/hooks/build
```

* 编译打包运行镜像``qiujiahong/dolphinscheduler:latest``

```
sh ./docker/build/hooks/build
```