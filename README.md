# code-with-docker
Use docker to write code in different languages

<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/fork_github.png" /></a>

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

[![LinkedIn](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/linkedin_icon.png)](https://www.linkedin.com/in/dennyzhang001) <a href="https://www.dennyzhang.com/slack" target="_blank" rel="nofollow"><img src="http://slack.dennyzhang.com/badge.svg" alt="slack"/></a> [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang)

File me [tickets](https://github.com/DennyZhang/code-with-docker/issues) or star [the repo](https://github.com/DennyZhang/code-with-docker).

<a href="https://www.dennyzhang.com"><img align="right" width="185" height="37" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/dns_small.png"></a>

# Run code developemnt
In below `https://goo.gl/ytazxG` points to [start-container.sh](start-container.sh)

## Golang

```
mkdir -p ~/code/golang_test

LANG_DEV="golang" curl -L https://goo.gl/ytazxG | bash -e

ls -lth
# run code test
go run ./XXX.go
```

- Install facilities to the docker image

- Switch golang version

## Python
```
mkdir -p ~/code/python_test

LANG_DEV="python" curl -L https://goo.gl/ytazxG | bash -e

ls -lth
# run code test
python ./XXX.py
```

# License
- Code is licensed under [MIT License](https://www.dennyzhang.com/wp-content/mit_license.txt).
