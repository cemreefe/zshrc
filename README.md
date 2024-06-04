# A repo for my personal zshrc file

Decided to save these somewhere after losing my zshrc file while changing jobs.

## Setup

```
cd ~ \
&& git clone https://github.com/cemreefe/zshrc \
&& mv zshrc .zshrc-git \
&& echo "source $(pwd)/.zshrc-git/user-defined.sh" >> ~/.zshrc
```

## Update

You can edit this repository from any source and then pull latest changes by simply running [`zupdate`](https://github.com/cemreefe/zshrc/blob/main/user-defined.sh#L20)
