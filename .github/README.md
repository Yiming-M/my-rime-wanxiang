# my-rime-wanxiang

个人使用的 Rime 配置：[万象拼音](https://github.com/amzxyz/rime-wanxiang) Base 版全拼 + 少量个人定制，用于 macOS 鼠须管。

方案、词库、Lua 脚本均来自上游 `wanxiang-base` 分支，原样保留；上游说明见根目录的 [README.md](../README.md) 与 [万象文档](https://amzxyz.github.io/rime-wanxiang/)。

## 个人定制

| 文件 | 内容 |
|---|---|
| `wanxiang.custom.yaml` | 全拼（保留 7/8/9/0 声调筛选）、每页 6 个候选、默认中文标点、默认显示表情、开启自动调频、关闭附加简码 |
| `squirrel.custom.yaml` | 鼠须管外观：横排候选、霞鹜文楷字体、配色 |
| `others/script/sync-wanxiang.sh` | 合并上游更新、下载语法模型、部署并重载鼠须管 |
| `others/docs/Changelog.md` | 个人改动记录 |

## 更新上游

仓库需要一个名为 `upstream` 的远程，指向官方仓库并禁用推送：

```bash
git remote add upstream https://github.com/amzxyz/rime-wanxiang.git
git remote set-url --push upstream DISABLED
```

之后在 `main` 分支、工作区干净时运行：

```bash
zsh others/script/sync-wanxiang.sh
```

加 `--refresh-model` 会重新下载语法模型 `wanxiang-lts-zh-hans.gram`（不入库）。

## 许可

上游万象拼音以 [CC BY 4.0](https://github.com/amzxyz/rime-wanxiang/blob/wanxiang/LICENSE) 发布，本仓库沿用。
