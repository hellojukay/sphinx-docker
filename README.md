# sphinx-docker
包含 sphinx 工具链的 docker 容器

![image](https://travis-ci.org/hellojukay/sphinx-docker.svg?branch=main)

# pull
```bash
docker pull hellojukay/sphinx-docker:3.2.1
```
# 相关信息
| 软件   | 版本          |
| ---    | ---           |
| OS     | debian buster |
| Python | 3.10.0a1      |
| sphinx | 3.2.1         |

# gitlab-ci
```yml
pages:
  image: hellojukay/sphinx-docker:3.2.1
  script:
    - make html
    - mv build/html public
  artifacts:
    paths:
      - public
  tags:
    - k8s
```
# docker run
```bash
docker run --rm -it -v $PWD:/workspace hellojukay/sphinx-docker:3.2.1 bash
cd /workspace 
make html
```
