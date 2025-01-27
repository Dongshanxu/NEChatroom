# NEChatroom（轻松复刻本土Clubhouse）

轻松复刻本土Clubhouse，产品源码全开放，1天上线，领衔语音社交热潮！

基于网易云信新一代（G2）实时音视频SDK的多人语音聊天室Demo，包含了实时音频通话、互动连麦、麦位控制等功能，完全满足Clubhouse这类语音社交产品的需求。

## 场景角色

- 房主：有且仅有一个房主

  房主声音可以被所有人听见，同时也能够对观众进行上/下麦、禁麦、封麦等操作。
  
- 观众：可以有N个观众

  频道内所有观众都可以收听房主与连麦主播的声音，也可以在聊天室中聊天交流，支持上千人在房间内自由交流。 
  
- 主播：最多支持8位连麦主播

  观众可以申请（举手）或被邀请上麦成为连麦主播，与其他主播进行互动。
  
## 场景应用

该场景在语音社交行业内应用广泛，适用于Clubhouse等兴趣语聊、在线 KTV、连麦开黑、语音电台、多人相亲、歌曲接龙等场景。

多人语音聊天室 Demo界面截图:
![多人语音聊天室 Demo界面截图](https://yx-web-nosdn.netease.im/quickhtml%2Fassets%2Fyunxin%2Fdefault%2F%E5%AE%89%E5%8D%93%E8%AF%AD%E8%81%8A%E6%88%BF-%E4%BA%A4%E4%BA%92.png)


## 功能列表
网易云信 可以在你的项目中根据场景需要，实现如下功能：

- 实时音频：超低延时下，观众实时接收房主的音频流，保证语聊房的社交氛围；
- 互动连麦：房主邀请或观众请求上麦，连麦后，频道所有用户都能听到房主和连麦主播的声音，提升用户参与度；
- 麦位控制：房主对观众进行上麦、下麦、禁麦、解麦、封麦、解封等操作，观众可以实时看到每个麦位及各麦位上观众的状态，确保房间内发言平和有序；
- 实时消息：房间内的主播和观众使用文字消息实时交流；观众还可以通过实时消息给主播送礼物，增加互动气氛；
- 用户管理：维护房间成员列表；
- 混音：房主在说话的同时播放背景音乐，语聊房内所有观众都能听到，可以烘托主题氛围。

## 体验 Demo

IOS：https://www.pgyer.com/LFki

Android：https://www.pgyer.com/r2Nm

密码：iosNIM

成功运行Demo后，创建房间并输入频道名称，然后选择一种房间类型。使用另一设备进入房间，即为观众观看模式，可进行相应互动。

*本开源示例项目简化了业务相关的逻辑*

## 集成接入

场景概述及接入指引详见 [集成接入](https://dev.yunxin.163.com/docs/product/%E9%9F%B3%E8%A7%86%E9%A2%91%E9%80%9A%E8%AF%9D2.0/%E5%9C%BA%E6%99%AF%E5%AE%9E%E8%B7%B5/%E5%AE%9E%E7%8E%B0%E5%A4%9A%E4%BA%BA%E8%AF%AD%E9%9F%B3%E8%81%8A%E5%A4%A9%E5%AE%A4/%E5%9C%BA%E6%99%AF%E6%A6%82%E8%BF%B0)

## 解决方案

解决方案详见  [网易云信多人语聊解决方案](http://yunxin.163.com/voicechat)

## 联系我们
* 如果您遇到了困难，可以先参阅 [知识库](https://faq.yunxin.163.com/kb/main/#/)
* 完整的 API 文档见 [文档中心](https://dev.yunxin.163.com/?from=bdjjnim0035)
* 如果需要售后技术支持, 您可以在 [网易云信控制台](https://app.yunxin.163.com/index#/issue/submit) 提交工单
* 若遇到其他开发者问题需要帮助，您可以加产品运营微信 nim_pscs_jing 咨询
