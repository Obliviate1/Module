#!name=AD ByeBye+ 2.x
#!desc=(2.x)以最优性能表现去除各种繁杂广告。| Repo: https://tuu.cat/repo・Update: 09/19/2023・Support: @bunizao
#!author=@hututu0 整理，来源见脚本以及注释，感谢以下大佬！！！
#!icon=https://github.com/Toperlock/Quantumult/raw/main/icon/Doraemon/Doraemon-1064.png

[General]

force-http-engine-hosts = 118.89.204.198, 103.41.167.237, 2402:4e00:1200:ed00:0:9089:6dac:96b6, 103.41.167.236, 103.41.167.234, 103.41.167.235, 103.41.167.226

[Rewrite]

# > 高德地图_通用广告请求
^https?:\/\/.*\.amap\.com\/ws\/asa\/ads_attribution - reject
amdc\.m\.taobao\.com - reject
# > 微博_应用内弹窗广告@ddgksf2013
^https?:\/\/(preload-click|preload-impression)\.uve\.weibo\.com\/(interface\/wbpullad\/wbpullad_click\.php|wbapplua\/get_wbpullad_log\.lua) - reject
# > 微博_屏蔽sdkconfig请求@ddgksf2013
^https?:\/\/sdkapp\.uve\.weibo\.com\/interface\/sdk\/sdkconfig\.php - reject
# --------------------------------------Amap--------------------------------------
^https?:\/\/m5\.amap\.com\/ws\/(shield\/scene\/recommend|valueadded\/weather) - reject-dict
^https?:\/\/m5-zb\.amap\.com\/ws\/boss\/order_web\/\w{8}_information - reject-200
# > 微博国际版_趋势页热门影片@ddgksf2013
^https?:\/\/api\.weibo\.cn\/\d\/cardlist\?v_f=.*Weibo_intl - reject-dict
# > 微博_用户推荐弹窗@ddgksf2013
^https?:\/\/api\.weibo\.cn\/\d\/profile\/recommend_popuser - reject-dict
# > 微博_每日一次的开屏广告请求@ddgksf2013
^https?:\/\/boot.*weibo\.com\/v\d\/ad\/realtime - reject-200
# > 微博_去除底部超话栏表层浮icon及tips@ddgksf2013
^https?:\/\/api\.weibo\.cn\/\d\/!\/huati\/discovery_home_bottom_getdotinfo - reject-dict
# > 微博_屏蔽首页左上角每日的弹窗tips@ddgksf2013
^https?:\/\/m?api\.weibo\.c(n|om)\/\d/push/daily - reject-dict
# > 微博_Spotlight@ddgksf2013
^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/hot\/hours_spotlight - reject-dict
# > 微博国际版_屏蔽hotsearch@ddgksf2013
^https?:\/\/weibointl\.api\.weibo\.c(n|om)\/portal\.php\?a=hot_search_users - reject-dict
# > 微博国际版_屏蔽热推荐@ddgksf2013
^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/ad\/weibointl\? - reject-dict
# ------------------------------------ Cainiao ---------------------------------------
^https?:\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.cainiao\.(nbmensa\.research\.researchservice\.consultmerge|adx\.flyad\.getad) - reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.com\.cainiao\.longquan\.place\.getpageresourcecontent\.cn\/\d\. - reject-dict
^https:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.(guoguo\.nbnetflow\.ads\.index\.cn\/\d\.|adkeyword\.get\.cn\/1\d\.|nbmensa\.research\.researchservice\.(acquire|event|close)\.cn\/\d\.) - reject-dict
# ------------------------------------- Zhihu ---------------------------------------
^https?:\/\/118\.89\.204\.198 - reject-dict
^https?:\/\/103\.41\.167\.237 - reject-dict
^https?:\/\/2402:4e00:1200:ed00:0:9089:6dac:96b6 - reject-dict
# 屏蔽下发的配置，如皮肤等
^https?:\/\/api\.zhihu\.com\/ab\/api\/v1\/products\/zhihu\/platforms\/ios\/config - reject-dict
# 屏蔽我的页面开通会员的卡片
# ^https?:\/\/api\.zhihu\.com\/unlimited\/go\/my_card - reject-dict
# 去除底部标签页关注人角标
^https?:\/\/api\.zhihu\.com\/moments\/tab_v2 - reject-dict
# 去除消息通知角标
^https?:\/\/api\.zhihu\.com\/(notifications\/v\d\/count) - reject-dict
# 拦截回答下的卡片广告
^https?:\/\/www\.zhihu\.com\/api\/v\d\/answers\/\d+\/recommendations - reject-dict
# 拦截应用内弹窗
^https?:\/\/api\.zhihu\.com\/me\/guides - reject-dict
# 去除关注页最常访问
^https?:\/\/api\.zhihu\.com\/moments\/recent - reject-dict
# 拦截推荐页顶部广告
^https?:\/\/api\.zhihu\.com\/api\/v4\/ecom_data\/config - reject-dict
# 底栏加号的广告
^https?:\/\/api\.zhihu\.com\/content-distribution-core\/bubble\/common\/settings - reject-dict
# 推荐页搜索栏左侧图标
^https?:\/\/api\.zhihu\.com\/feed\/render\/revisit\/current_reading - reject-dict
# 疑似推荐页内容更新红点
^https?:\/\/api\.zhihu\.com\/feed\/render\/revisit\/tag_config - reject-dict
# 去除回答页的相关搜索
^https?:\/\/www\.zhihu\.com\/api\/v\d+\/search\/related_queries\/answer - reject-dict
# 暂不清楚作用
^https?:\/\/api\.zhihu\.com\/commercial_api\/banners_v3\/app_topstory_banner - reject-dict
^https?:\/\/api\.zhihu\.com\/ad-style-service\/request - reject-dict
# > 小红书_视频播放页商品推广@ddgksf2013
^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/note\/widgets - reject-dict
# > 小红书_通用广告请求@ddgksf2013
^https?:\/\/www\.xiaohongshu\.com\/api\/sns\/v\d\/(tag\/)?ads - reject-dict
# > 小红书_隐私屏蔽@ddgksf2013
^https?:\/\/referee\.xiaohongshu\.com\/v\d\/stateReport - reject-dict
# > 小红书_Switches@ddgksf2013
^https?:\/\/pages\.xiaohongshu\.com\/data\/native\/matrix_switches - reject-dict
# > 小红书_青少年请求@ddgksf2013
^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/user\/teenager\/status - reject-dict
# > 小红书_启动引导@ddgksf2013
^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/guide\/home_guide - reject-dict
# > 麦当劳
^https:\/\/api\.mcd\.cn\/bff\/portal\/home\/hotActivity - reject-dict
# > 必胜客
^https:\/\/res\.pizzahut\.com\.cn\/CRM - reject-dict
# > 肯德基
^https:\/\/orders\.kfc\.com\.cn\/preorder-portal\/api\/v2\/coupon - reject-dict
^https:\/\/dynamicad\.kfc\.com\.cn\/api - reject-dict
^https:\/\/res\.kfc\.com\.cn\/CRM\/kfcad\/custom_v2\/wxapp - reject-dict
^https:\/\/orders\.kfc\.com\.cn\/preorder-portal\/api\/v2\/activity - reject-dict
# > 星巴克
^https:\/\/3pp\.starbucks\.com\.cn\/wxmem\/popup - reject-dict
^https:\/\/3pp\.starbucks\.com\.cn\/wxmem\/index\/banner - reject-dict
^https:\/\/3pp\.starbucks\.com\.cn\/wxmem\/index\/global - reject-dict
# > 丰巢
^https:\/\/webchatapp\.fcbox\.com\/fcboxactivityweb\/api\/v2\/clientPage - reject-dict
^https:\/\/dsp\.fcbox\.com - reject-dict
# > 奈雪点单
^https:\/\/tm-api\.pin-dao\.cn\/home\/api\/index\/activeConfig\/v2 - reject-dict
^https:\/\/tm-api\.pin-dao\.cn\/home\/api\/resource\/config\/homeBannerNodes - reject-dict
# > 青桔单车
^https:\/\/htwkop\.xiaojukeji\.com\/gateway\?api=cms\.htw\.delivery - reject-dict
^https:\/\/htwkop\.xiaojukeji\.com\/gateway\?api=hm\.fa\.combineHomepageInfo - reject-dict
^https:\/\/htwkop\.xiaojukeji\.com\/gateway\?api=hm\.fa\.mallRecommend - reject-dict
# > 哈啰出行
^https:\/\/api\.hellobike\.com\/api\?adx - reject-dict
# > 顺丰速运
^https?:\/\/ucmp\.sf-express\.com\/proxy\/operation-platform\/info-flow-adver\/query$ - reject-200
# > 猫眼
^https:\/\/vod-movie\.maoyan\.com\/vod\/video\/onlineMovies\.json - reject-dict
^https:\/\/wx\.maoyan\.com\/maoyansh\/myshow\/ajax\/movie\/wonderShow - reject-dict
^https:\/\/wx\.maoyan\.com\/maoyansh\/myshow\/ajax\/performances\/calendar\/0 - reject-dict
^https:\/\/wx\.maoyan\.com\/maoyansh\/myshow\/ajax\/performances\/rob\/main - reject-dict
^https:\/\/wx\.maoyan\.com\/maoyansh\/myshow\/ajax\/celebrityBasicList\/query - reject-dict
^https:\/\/wx\.maoyan\.com\/maoyansh\/myshow\/ajax\/recommend\/performances - reject-dict
^https:\/\/api\.maoyan\.com\/sns\/common\/feed\/channel\/v2\/list\.json - reject-dict
^https:\/\/ad\.maoyan\.com\/api\/position\/detail - reject-dict

[Script]

# --------------------------------------Amap--------------------------------------
http-response ^http:\/\/amdc\.m\.taobao\.com script-path=https://raw.githubusercontent.com/kokoryh/Script/master/js/self_use.js, tag=self_use_25

http-response ^https?:\/\/m5\.amap\.com\/ws\/shield\/(search\/(new_hotword|nearbyrec_smart)|dsp\/profile\/index\/nodefaas|frogserver\/aocs\/updatable) script-path=https://raw.githubusercontent.com/kokoryh/Script/master/js/amap.js, requires-body=true, tag=amap_26

http-response ^https?:\/\/m5\.amap\.com\/ws\/(valueadded\/alimama\/splash_screen|faas\/amap-navigation\/main-page|message\/notice\/list) script-path=https://raw.githubusercontent.com/kokoryh/Script/master/js/amap.js, requires-body=true, tag=amap_27

http-response ^https?:\/\/m5-zb\.amap\.com\/ws\/promotion-web\/resource script-path=https://raw.githubusercontent.com/kokoryh/Script/master/js/amap.js, requires-body=true, tag=amap_28

http-response ^https?:\/\/sns\.amap\.com\/ws\/msgbox\/pull script-path=https://raw.githubusercontent.com/kokoryh/Script/master/js/amap.js, requires-body=true, tag=amap_29

# > 微博国际版_帖子下方广告banner@ddgksf2013
http-response ^https?:\/\/weibointl\.api\.weibo\.cn\/portal\.php\?a=open_app script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_96_32

# > 微博_开屏广告预加载处理@ddgksf2013
http-response ^https?:\/\/boot.*weibo\.com\/v\d\/ad\/preload script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_102_34

# > 微博_未登陆状态下首页信息流处理@ddgksf2013
http-response ^https?:\/\/api\.weibo\.cn\/\d\/\w{5}\/(statuses_unread_hot_timeline|timeline) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_104_36

# > 微博_视频信息处理@ddgksf2013
http-response ^https?:\/\/api\.weibo\.cn\/\d\/video\/tiny_stream_mid_detail script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_108_38

# > 微博_屏蔽发现页面搜索框热词@ddgksf2013
http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/\w{5}\/cardlist script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_114_40

# > 微博_自定义tab皮肤@zmqcherish
http-response ^https://api.weibo.cn/2/!/client/light_skin script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_122_42

# > 微博_非会员设置tab皮肤@zmqcherish
http-response ^https://new.vip.weibo.cn/littleskin/preview script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_124_44

# > 微博_去广告以及去除各部分推广模块@zmqcherish,@ddgksf2013
http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/(searchall|page\?|messageflow) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_126_46

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/statuses/(unread_)?friends(/|_)timeline script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_127_47

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/groups/timeline script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_128_48

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/statuses/(container_timeline|unread_hot_timeline|extend|video_mixtimeline|unread_topic_timeline) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_129_49

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/profile/(me|container_timeline) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_130_50

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/video/(community_tab|remind_info|tiny_stream_video_list) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_131_51

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/search/(finder|container_timeline|container_discover) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_132_52

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/(checkin/show|\!/live/media_homelist|comments/build_comments|container/get_item) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_133_53

http-response ^https?:\/\/m?api\.weibo\.c(n|om)\/\d\/cardlist script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_134_54

# > 微博国际版_屏蔽开屏广告@ddgksf2013 
http-response ^https?:\/\/weibointl\.api\.weibo\.c(n|om)\/portal\.php.*get_coopen_ads script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_144_56

# > 微博国际版_屏蔽sdkad@ddgksf2013
http-response ^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua) script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_146_58

# > 微博国际版_趋势顶部Card去广告@ddgksf2013
http-response ^https?:\/\/weibointl\.api\.weibo\.c(n|om)\/portal\.php.*feed&a=trends script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_148_60

# > 微博国际版_屏蔽用户VIP栏@ddgksf2013
http-response ^https?:\/\/weibointl\.api\.weibo\.cn\/portal\.php\?a=user_center script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_150_62

# > 微博国际版_热搜处理@ddgksf2013
http-response ^https?:\/\/weibointl\.api\.weibo\.cn\/portal\.php\?a=search_topic script-path=https://github.com/ddgksf2013/Scripts/raw/master/weibo_json.js, requires-body=true, tag=weibo_json_152_64

# 跳过重定向页面以直接访问 //weibo.cn, shop.sc.weibo.com, t.cn, sinaurl.cn
http-request ^https:\/\/weibo\.cn\/sinaurl\?(.*&)?(u|toasturl|goto)= script-path=https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/noRedirect.js, tag=noRedirect_42_66

http-request ^https:\/\/shop\.sc\.weibo\.com\/h5\/jump\/error\?(.*&)?url= script-path=https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/noRedirect.js, tag=noRedirect_43_67

http-response ^https:\/\/(sinaurl|t)\.cn\/ script-path=https://raw.githubusercontent.com/RuCu6/QuanX/main/Scripts/noRedirect.js, tag=noRedirect_44_68

# 获取用户信息 - 隔离用户数据，开启本地会员等
http-response ^https?:\/\/api\.zhihu\.com\/people\/ script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_处理用户信息_71

# 关键词屏蔽 - 解锁本地的关键词屏蔽功能，需要开启本地VIP
http-request ^https?:\/\/api\.zhihu\.com\/feed-root\/block script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_解锁关键词屏蔽_73

# 优化软件配置 - 优化下发的配置文件来实现某些效果
http-response ^https?:\/\/m-cloud\.zhihu\.com\/api\/cloud\/config\/all\? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_优化软件配置1_75

http-response ^https?:\/\/appcloud2\.zhihu\.com\/v\d+\/config script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_优化软件配置2_76

# 用户信息 - 修改用户盐值
http-response ^https?:\/\/api\.zhihu\.com\/user-credit\/basis script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=修改用户盐值_78

# 关注页 - 内容优化及屏蔽转发的黑名单用户想法
http-response ^https?:\/\/api\.zhihu\.com\/moments_v3\? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_关注列表优化_80

# 推荐页 - 移除黑名单用户发布的文章、去除广告，及自定义一些屏蔽项目
http-response ^https:\/\/api\.zhihu\.com\/topstory\/recommend script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_推荐页优化_82

# 黑名单页 - 同步黑名单数据
http-response ^https?:\/\/api\.zhihu\.com\/settings\/blocked_users script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_同步黑名单_84

# 问题的回答列表 - 移除黑名单用户的回答、去除广告
http-response ^https?:\/\/api\.zhihu\.com\/(v4\/)?questions\/\d+ script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_回答列表优化_86

# 回答信息流 - 移除黑名单用户的回答、去除广告
http-response ^https?:\/\/api\.zhihu\.com\/next-(data|bff|render) script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_回答信息流优化_88

# 回答页底部评论摘要 - 移除黑名单用户发表的评论
http-response ^https?:\/\/www\.zhihu\.com\/api\/v4\/comment_v5\/answers\/\d+\/abstract_comment\? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_评论摘要优化_90

# 评论页及子页面 - 去除黑名单用户发表的评论
http-response ^https?:\/\/api\.zhihu\.com\/(comment_v5\/)?(answers|comments?|articles|pins)\/\d+\/(root_|child_)?comments? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_评论优化_92

# 消息页 - 折叠官方消息、屏蔽营销消息
http-response ^https?:\/\/api\.zhihu\.com\/notifications\/v3\/(message|timeline\/entry\/system_message) script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_消息优化_94

# 回答页 - 内容优化，付费、营销、推广内容文首提醒
http-response ^https?:\/\/www\.zhihu\.com\/appview\/v2\/answer\/.*(entry=(?!(preload-topstory|preload-search|preload-subscription)))? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_回答内容优化_96

# 回答页 - 屏蔽下翻出现的黑名单用户的回答
http-response ^https?:\/\/api\.zhihu\.com\/next\? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_回答翻页优化_98

# 文章页 - 去除底部广告
http-response ^https?:\/\/www\.zhihu\.com\/api\/v\d\/articles\/\d+\/recommendation\? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_文章优化_100

# 热榜页 - 去除广告
http-response ^https?:\/\/api\.zhihu\.com\/topstory\/hot-lists(\?|\/) script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_热榜优化_102

# 搜索页 - 去除预置广告
http-response ^https?:\/\/api\.zhihu\.com\/search\/preset_words\? script-path=https://gist.githubusercontent.com/blackmatrix7/f5f780d0f56b319b6ad9848fd080bb18/raw/zheye.min.js, requires-body=true, tag=哲也_预置关键词优化_104

# ------------------------------------- Pixiv ---------------------------------------
http-response ^https?:\/\/oauth\.secure\.pixiv\.net\/(auth\/token) script-path=https://github.com/ddgksf2013/Scripts/raw/master/pixivAds.js, requires-body=true, tag=pixivAd_106

# ------------------------------------ Cainiao ---------------------------------------
http-response ^https?:\/\/(cn-acs\.m\.cainiao|guide-acs\.m\.taobao)\.com\/gw\/mtop\.cainiao\.guoguo\.nbnetflow\.ads\.m?show script-path=https://raw.githubusercontent.com/Keywos/rule/main/JS/cainiao.js, requires-body=true, tag=Cainiao_1_108

http-response ^https?:\/\/cn-acs\.m\.cainiao\.com\/gw\/mtop\.cainiao\.nbpresentation\.(homepage\.merge|pickup\.empty\.page|protocol\.homepage)\.get\.cn script-path=https://raw.githubusercontent.com/Keywos/rule/main/JS/cainiao.js, requires-body=true, tag=Cainiao_2_109

# > 小红书_视频播放页商品推广@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/note\/widgets script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_17_112

# > 小红书_短视频流去水印+强制开启保存功能@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/note\/redtube\? script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_19_114

# > 小红书_信息流视频去水印+强制开启保存功能@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/note\/videofeed\? script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_21_116

# > 小红书_信息流图片去水印@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/note\/feed\? script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_23_118

# > 小红书_开屏广告@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/system_service\/splash_config script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_25_120

# > 小红书_首页瀑布流@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/homefeed\? script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_27_122

# > 小红书_启动处理@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/system_service\/config\? script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_29_124

# > 小红书_热搜发现@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/search\/hot_list script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_31_126

# > 小红书_默认填词@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/search\/hint script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_33_128

# > 小红书_去除购物@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/homefeed\/categories script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_35_130

# > 小红书_猜你想搜@ddgksf2013
http-response ^https?:\/\/edith\.xiaohongshu\.com\/api\/sns\/v\d\/search\/trending script-path=https://github.com/ddgksf2013/Scripts/raw/master/redbook_json.js, requires-body=true, tag=redbook_json_37_132

# ------------------------------------- Tieba ---------------------------------------
http-response ^http(s:\/\/tiebac|:\/\/c\.tieba)\.baidu\.com\/(c\/(s\/sync|f\/(frs\/(page|threadlist|generalTabList)|pb\/(pic)?page|excellent\/personalized))$|tiebaads\/commonbatch\?) script-path=https://raw.githubusercontent.com/app2smile/rules/master/js/tieba-json.js, requires-body=true, tag=tieba_json_134

http-response ^http(s:\/\/tiebac|:\/\/c\.tieba)\.baidu\.com\/c\/f\/(frs\/(page|threadlist|generalTabList)|pb\/page|excellent\/personalized)\?cmd script-path=https://raw.githubusercontent.com/app2smile/rules/master/js/tieba-proto.js, requires-body=true, binary-body-mode=true, tag=tieba_proto_135

# > 微博国际版_屏蔽searching_info@shiro
http-request ^https?:\/\/weibointl\.api\.weibo\.c(n|om)\/portal\.php.*user&a=get_searching_info script-path=http://script.hub/convert/_start_/https://github.com/ddgksf2013/Scripts/raw/master/weibo_search_info.json/_end_/weibo_search_info.json?type=mock&target-app=loon-plugin, timeout=60 ,tag=weibo_search_info.json_159

# > 微博国际版_屏蔽search_topic@shiro
http-request ^https?:\/\/weibointl\.api\.weibo\.c(n|om)\/portal\.php.*feed&a=search_topic script-path=http://script.hub/convert/_start_/https://github.com/ddgksf2013/Scripts/raw/master/weibo_search_topic.json/_end_/weibo_search_topic.json?type=mock&target-app=loon-plugin, timeout=60 ,tag=weibo_search_topic.json_161

[MITM]

hostname = m5*.amap.com,sns.amap.com,api.weibo.*,*.api.weibo.*,mapi.weibo.*,*.uve.weibo.com,new.vip.weibo.cn,boot.biz.weibo.com,shop.sc.weibo.com,t.cn,sinaurl.cn,api.zhihu.com,appcloud2.zhihu.com,m-cloud.zhihu.com,www.zhihu.com,zhuanlan.zhihu.com,edith.xiaohongshu.com,www.xiaohongshu.com,pages.xiaohongshu.com,referee.xiaohongshu.com,oauth.secure.pixiv.net,tiebac.baidu.com,cn-acs.m.cainiao.com,guide-acs.m.taobao.com,api.mcd.cn,orders.kfc.com.cn,dynamicad.kfc.com.cn,res.kfc.com.cn,res.pizzahut.com.cn,3pp.starbucks.com.cn,htwkop.xiaojukeji.com,tm-api.pin-dao.cn,webchatapp.fcbox.com,dsp.fcbox.com,go.heytea.com,api.hellobike.com,ucmp.sf-express.com,vod-movie.maoyan.com,api.maoyan.com,ad.maoyan.com,wx.maoyan.com,118.89.204.198,103.41.167.237,2402:4e00:1200:ed00:0:9089:6dac:96b6,www.zhihu.com,api.zhihu.com,zhuanlan.zhihu.com,appcloud2.zhihu.com,m-cloud.zhihu.com,103.41.167.236,103.41.167.234,103.41.167.235,103.41.167.226
