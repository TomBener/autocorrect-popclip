# AutoCorrect Extension for PopClip

基于 [AutoCorrect](https://github.com/huacnlee/autocorrect) 实现的 PopClip 插件，用于「自动纠正」或「检查并建议」文案，给 CJK（中文、日语、韩语）与英文混写的场景，补充正确的空格，纠正单词，同时尝试以安全的方式自动纠正标点符号等等。除此之外，也将简体中文使用的弯引号 `“`、`”` 分别转换为直角引号 `「`、`」`。

## 安装

1. **安装 PopClip**

   - 前往 [官网](https://www.popclip.app) 下载，免费版可以使用 250 次，[付费](https://www.popclip.app/buy) 解锁无限使用次数。

2. **安装 AutoCorrect**

   - 通过 [Homebrew](https://brew.sh) 安装：

   ```shell
   brew install autocorrect
   ```

   - 或者使用 [Curl](https://curl.se) 安装：

   ```shell
   curl -sSL https://git.io/JcGER | bash
   ```

3. **安装 AutoCorrect Extension for PopClip**

   鼠标选中下方 6 行 YAML 代码块后，PopClip 开启状态下会自动弹出提示 `Install Extension "AutoCorrect"`，点击即可安装。

   ```yaml
   # popclip AutoCorrect
   name: AutoCorrect
   title: Formatting CJK
   icon: square CJK
   applescript: do shell script "export LANG='en_US.UTF-8' && /bin/echo -n '{popclip text}' | sed 's/“/「/g; s/”/」/g' | /opt/homebrew/bin/autocorrect --stdin"
   after: paste-result
   ```

   在 Apple Silicon Mac 上，使用 Homebrew 安装的 AutoCorrect 路径为 `/opt/homebrew/bin/autocorrect`。如果你的 Mac 中 AutoCorrect 不安装在此位置，可以在终端中输入 `which autocorrect`，然后用输出结果替换上方的 `/opt/homebrew/bin/autocorrect`。请注意，可执行文件的路径**不可省略**。

   或者直接下载 Releases 中的 [autocorrect-popclip.popclipext.zip](https://github.com/TomBener/autocorrect-popclip/releases)，解压之后双击安装。

## 使用效果

![demo](https://p15.p3.n0.cdn.getcloudapp.com/items/5zuPjPbb/f877d3ec-3d4a-4e2d-a07f-8716f80c23e9.gif)

## 相关项目

[盘古之白 PopClip 插件](https://github.com/mousepotato/pangu-space.popclipext)

## Credits

Pete and Nick on [PopClip Forum](https://forum.popclip.app/t/shell-script-not-working/1100)

## License

[MIT license](LICENSE)
