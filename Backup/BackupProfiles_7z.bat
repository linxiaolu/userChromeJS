<<<<<<< HEAD
@echo off
taskkill /im firefox.exe
@echo 关闭火狐浏览器后自动开始备份……
ping -n 3 127.1>nul
::取得当前批处理所在路径
cd /d %~dp0
::设置要备份目标的路径
set ProfilesPath=..\..\

::设置备份存放的路径以及压缩包文件名，添加了时间月和日（注意我使用短日期，通常使用的是长日期那么就是%date:~5,2%%date:~8,2%）
set ArchiveName=.\Profiles_%date:~5,2%%date:~8,2%.7z
::设置要打包的文件以及文件夹，请酌情自己添加
:: abp
set opt="%ProfilesPath%adblockplus" "%ProfilesPath%adblockplus"
set opt=%opt% "%ProfilesPath%autoproxy"
:: 表单历史
set opt=%opt% "%ProfilesPath%formhistory.sqlite"
:: userchrome
set opt=%opt% "%ProfilesPath%chrome"
:: 全部扩展包
set opt=%opt% "%ProfilesPath%*extensions*"
:: 插件
=======
锘緻echo off
taskkill /im firefox.exe
@echo 鍏抽棴鐏嫄娴忚鍣ㄥ悗鑷姩寮�濮嬪浠解�︹��
ping -n 3 127.1>nul
::鍙栧緱褰撳墠鎵瑰鐞嗘墍鍦ㄨ矾寰�
cd /d %~dp0
::璁剧疆瑕佸浠界洰鏍囩殑璺緞
set ProfilesPath=..\..\

::璁剧疆澶囦唤瀛樻斁鐨勮矾寰勪互鍙婂帇缂╁寘鏂囦欢鍚嶏紝娣诲姞浜嗘椂闂存湀鍜屾棩锛堟敞鎰忔垜浣跨敤鐭棩鏈燂紝閫氬父浣跨敤鐨勬槸闀挎棩鏈熼偅涔堝氨鏄�%date:~5,2%%date:~8,2%锛�
set ArchiveName=.\Profiles_%date:~5,2%%date:~8,2%.7z
::璁剧疆瑕佹墦鍖呯殑鏂囦欢浠ュ強鏂囦欢澶癸紝璇烽厡鎯呰嚜宸辨坊鍔�
:: abp
set opt="%ProfilesPath%adblockplus" "%ProfilesPath%adblockplus"
set opt=%opt% "%ProfilesPath%autoproxy"
:: 琛ㄥ崟鍘嗗彶
set opt=%opt% "%ProfilesPath%formhistory.sqlite"
:: userchrome
set opt=%opt% "%ProfilesPath%chrome"
:: 鍏ㄩ儴鎵╁睍鍖�
set opt=%opt% "%ProfilesPath%*extensions*"
:: 鎻掍欢
>>>>>>> 6b27c670b159a266533b99deea80a223e683b7e3
set opt=%opt% "%ProfilesPath%Plugins"
:: userScripts
set opt=%opt% "%ProfilesPath%scriptish_scripts" "%ProfilesPath%gm_scripts"
:: cookies
set opt=%opt% "%ProfilesPath%cookies.sqlite"
<<<<<<< HEAD
:: 历史
set opt=%opt% "%ProfilesPath%places.sqlite"
:: localstore
set opt=%opt% "%ProfilesPath%localstore.rdf"
:: 配置参数
set opt=%opt% "%ProfilesPath%prefs.js" "%ProfilesPath%user.js"
:: stylish
set opt=%opt% "%ProfilesPath%stylish.sqlite"
:: 搜索
=======
:: 鍘嗗彶
set opt=%opt% "%ProfilesPath%places.sqlite"
:: localstore
set opt=%opt% "%ProfilesPath%localstore.rdf"
:: 閰嶇疆鍙傛暟
set opt=%opt% "%ProfilesPath%prefs.js" "%ProfilesPath%user.js"
:: stylish
set opt=%opt% "%ProfilesPath%stylish.sqlite"
:: 鎼滅储
>>>>>>> 6b27c670b159a266533b99deea80a223e683b7e3
set opt=%opt% "%ProfilesPath%*search*"
:: FlashGot
set opt=%opt% "%ProfilesPath%FlashGot.exe"

7z.exe u -up1q3r2x2y2z2w2 %ArchiveName% %opt%
<<<<<<< HEAD
@echo 备份完成
=======
@echo 澶囦唤瀹屾垚
>>>>>>> 6b27c670b159a266533b99deea80a223e683b7e3



