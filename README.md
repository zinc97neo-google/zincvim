<h2 align="center">zincvim</h2>

> 这个仓库是我配置的nixvim

## 如何修改配置

所有配置文件都放置在`./config`文件夹下

## 测试该应用

克隆本项目，并在项目根目录下运行以下命令

```sh
nix run .
```

## 通过远程测试

```sh
nix run github:zinc97neo-google/zincvim
```

## 通过flake安装

需要在`fale.nix`中引入

```nix
{ ... }:
inputs = {
  zincvim.url = "github:zinc97neo-google/zincvim";
}
....
};
```

然后可以类似pkgs下的软件一样安装

```nix
{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    inputs.zincvim.packages.${pkgs.system}.default
  ];
}
```

## 插件

### UI

| Name | Description |
| ---- | ----------- |
| [catppuccin](https://github.com/catppuccin/nvim) | 颜色主题包 |
