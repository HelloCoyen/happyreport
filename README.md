# happyreport

标准化报表创建模板

## 1. 安装工具包

```
pip install happyreport
```

## 2. 创建报表作业

命令行工具创建报表作业

```
hrc project_name
```

## 3. 目录结构

`result`:  报表本地excel保存目录

`custom.py`: 报表自定义内容逻辑，该脚本必须包含workbook函数，用来实现一份报表的内容，返回子sheet的dataframe列表

`logger.py`: 日志记录模块

`settings.py`: 报表配置项，主要用于配置邮件属性

`main.py`: 报表输出主程序入口，执行该程序将会将`custom.py`内定义的报表逻辑保存至本地，并将本地文件按照`settings.py`的设置发送邮件

## 4.报表标准类
`happyreport.happy.MailJob`类定义了标准的线上报表配置，可以脱离模板直接传参实现报表发送功能。该类开发背景主要用于结合调度器，从数据库中读取邮件配置与报表逻辑。
具体可以请教小舟与参考代码注释
