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
| [colorizer](https://github.com/norcalli/nvim-colorizer.lua) | 预览RGB颜色 |
| [web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | 常见的icon |
| [lualine](https://github.com/nvim-lualine/lualine.nvim) | 文件状态栏 |
| [treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | 显示当前代码所属于代码块 |
| [barbecue](https://github.com/utilyre/barbecue.nvim) | 类似vscode的winbar |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | 自动匹配对应的括号 |
| [nui](https://github.com/MunifTanjim/nui.nvim) | ui组件库 |
| [noice](https://github.com/folke/noice.nvim) | ui美化 |
| [rainbow-delimiters](https://github.com/HiPhish/rainbow-delimiters.nvim) | 多彩括号 |
| [notify](https://github.com/rcarriga/nvim-notify) | 信息美化 | 

### treesitter

| Name | Description |
| ---- | ----------- |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 语法高亮插件 |
| [treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | 显示当前代码所属于代码块 |
