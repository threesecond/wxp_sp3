CLS
@ECHO OFF
COLOR 70
MODE CON COLS=80 LINES=25
if not exist wget.exe goto error
if not exist hotfix.cmd goto error
ECHO -------------------------------------------------------------------------------
ECHO     (偽) Windows XP Pre-SP3 自動建立程式
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：這是用來自動產生 (偽) Windows XP Pre-SP3 的批次檔。
ECHO           執行這個批次檔就會自動從微軟網站下載更新檔，
ECHO           並按照 (偽) Windows XP Pre-SP3 的格式自動產生安裝檔。
ECHO           請確定您已經連接 1Mb 以上的寬頻網路，下載時間大約為
ECHO           10~30 分鐘不等，請耐心等候。
ECHO.
ECHO     系統需求：                          
ECHO           1. Windows XP SP2    
ECHO           2. Windows Media Player 10  
ECHO.
ECHO.
ECHO.     
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵開始下載！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/    更新日期：200810/28
ECHO -------------------------------------------------------------------------------
pause
CLS
ECHO -------------------------------------------------------------------------------
ECHO   開始下載檔案.....
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO   0. 正在建立安裝目錄，請稍後...
if exist build.log del /Q build.log
if exist wxp_sp3\ rmdir /S /Q wxp_sp3\
md wxp_sp3\wxpsp2\hotfix1\
md wxp_sp3\wxpsp2\hotfix2\
md wxp_sp3\wxpsp2\hotfix3\
md wxp_sp3\wxpsp2\hotfix4\
md wxp_sp3\wxpsp2\hotfix5\
md wxp_sp3\wmp10\hotfix1\
md wxp_sp3\wmp10\hotfix2\
move /y wget.exe %WINDIR%\System32\ > nul
move /y hotfix.cmd wxp_sp3\ > nul
ECHO.
ECHO   1. 正在下載 Windows XP SP2 之後的所有修正檔，請稍後...
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/f/d/9/fd90dca8-2712-4fa1-9d2c-2637540da9dc/WindowsXP-KB873339-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/7/8/2/7824e935-3e00-42de-861b-ffbe3f2ec5d1/WindowsXP-KB885523-x86-cht.exe     
wget -abuild.log http://download.microsoft.com/download/1/6/f/16f080f3-3fc8-450b-8421-989e17447e1f/WindowsXP-KB885835-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/a/0/0/a00f337b-b6f5-48c9-b39b-5e36239613a4/WindowsXP-KB885836-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/0/e/2/0e29e117-b96a-4f99-9249-dc7a71377224/WindowsXP-KB886185-x86-cht.exe     
wget -abuild.log http://download.microsoft.com/download/4/9/d/49d5a644-bb1a-4dbc-9c3b-5cb2bebeded9/WindowsXP-KB886677-x86-cht.exe     
wget -abuild.log http://download.microsoft.com/download/b/d/7/bd7c5bae-6243-427d-bb1c-8e670c206bfd/WindowsXP-KB887742-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/f/f/7/ff7dfa8a-66ef-4e7e-9bbd-49ac88d28d78/WindowsXP-KB888302-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/4/d/2/4d2791e9-b975-410d-a871-afb56a39b578/WindowsXP-KB890859-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/b/9/b/b9b7ae9d-b5d2-414a-90fa-562300b44365/WindowsXP-KB891781-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/e/e/2/ee26acfa-a442-4d3b-8d7e-cf4df8b2c483/WindowsXP-KB893756-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/e/3/f/e3f11915-b323-4b5e-99ef-0552256a1f41/WindowsXP-KB896358-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/b/f/9/bf9a61a0-dc38-44d4-b85d-35d059403d1b/WindowsXP-KB896423-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/f/d/6/fd603a90-5e46-4a87-93f3-f77cf0ade7f7/WindowsXP-KB896428-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/5/f/5/5f5a1082-98b4-4560-908d-e8f495708419/WindowsXP-KB898461-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/7/f/a/7fa3fe2a-ef25-4f53-b250-cdd4a9704a64/WindowsXP-KB899587-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/e/9/3/e936e060-84dc-453b-a7d2-3478100b7919/WindowsXP-KB899591-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/4/e/3/4e3922e1-13c2-45a0-9cef-ff4f7445d0c7/WindowsXP-KB900930-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/9/7/1/971f62b1-b6c2-4cd6-988f-0beddf09f515/WindowsXP-KB901214-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/6/d/3/6d3f2b87-8d56-4e76-a24a-75ae837219ee/WindowsXP-KB900725-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/0/a/2/0a273dcf-51aa-4c65-8a83-0e0a9b7828fc/WindowsXP-KB901017-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/c/6/7/c67d0151-7a39-464a-a912-24387d36f47a/WindowsXP-KB902400-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/8/6/5/8651d010-50cd-4f7c-ab5e-cea4b3e25384/WindowsXP-KB905414-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/6/a/c/6acf52fb-4ea6-4fd4-ae3b-9def50758505/WindowsXP-KB905749-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/e/b/1/eb1b36a4-8093-4af8-bb69-dbbb723c182c/WindowsXP-KB907865-x86-CHT.exe       
wget -abuild.log http://download.microsoft.com/download/f/2/1/f21ca431-fb20-4fb8-8958-1fe5665fd248/WindowsXP-KB884883-v8-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/c/1/4/c146802e-27fa-428e-a988-ee2645b68ef4/WindowsXP-KB906569-v2-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/f/e/0/fe0d2a8d-ec03-4968-8e6f-d2109175f429/Windows-KB909520-v1.000-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/6/5/3/653df83d-4a98-4d4c-94fb-05f193c38bd4/WindowsXP-KB910437-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/e/c/1/ec11f46a-ad40-4bba-8164-a9d63b78ce0a/WindowsXP-KB908519-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/e/8/d/e8d38efa-247e-4a40-a8d4-ab6777692c10/WindowsXP-KB911927-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/0/9/109d4eb7-7702-4112-b6f8-40dd89234e11/WindowsXP-KB901190-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/9/3/9939cc6c-58f9-4f9d-a8e7-b35d1850d5eb/WindowsXP-KB911562-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/5/f/c/5fc32b2d-3c1b-493d-8c5d-6f4c2b2dec0c/WindowsXP-KB914841-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/2/0/7/20792eed-7f33-4ae0-821e-56379cf858a8/WindowsXP-KB889673-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/0/d/6/0d67e40c-ba78-452e-a7a1-9b5e7d4d6fa0/WindowsXP-KB319740-v5-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/b/6/0b6a49f8-63b4-47d1-9d7c-fdc1f83f60ab/WindowsXP-KB907265-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/6/8/b/68bbf8a2-3204-4aa3-a062-b6cb1754fae6/WindowsXP-KB904942-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/c/c/0/cc0b53b7-22f0-4507-8b96-c16d4ff950db/WindowsXP-KB913538-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/0/6/1/0614dbd3-e015-434d-aa84-ffafcce1099a/WindowsXP-KB898900-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/f/c/7/fc7c2ef9-e1c1-4514-9539-7a99ffc8d6f6/WindowsXP-KB913580-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/7/a/6/7a641ab5-f3a5-4cdc-b950-f0180e1d5fc9/WindowsXP-KB908531-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/f/7/6/f7698cf3-a5a5-4f87-9a87-e8117e119c09/WindowsXP-KB900485-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/d/5/0d55ba29-0576-423d-8def-f44e795bc310/WindowsXP-KB918439-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/f/f/d/ffd5ae9d-ad1f-472b-aa26-b04258f84c9c/WindowsXP-KB914389-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/1/0/d101a5ff-0d2b-4ca2-8d1e-d7e74958d617/WindowsXP-KB916595-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/f/6/c/f6c8e6e7-5571-4a5f-a21b-9e9766361bec/WindowsXP-KB917730-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/4/6/a/46a6d96a-cc26-4715-a94a-3c7bfb4f4ff0/WindowsXP-KB918093-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/7/6/2/762fbb58-15f8-4856-b804-bdafc8436dbc/WindowsXP-KB914388-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/3/5/e/35ea6bda-4fc1-4aeb-b379-d23af753861c/WindowsXP-KB911280-v2-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/8/6/2/86244b94-a2d3-43e6-ae6a-bf502b867d44/WindowsXP-KB912817-v2-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/2/5/d/25d5cbe6-ee76-4acf-883b-f65aecebcaf0/WindowsXP-KB897338-v3-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/c/0/0/c007f78e-0328-4880-a2e9-0b6586c1e583/WindowsXP-KB920683-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/2/d/92d32897-d93c-4c56-80da-68b81d2486ef/WindowsXP-KB920670-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/a/9/a/a9a2778d-4f9d-4205-84e3-8f051c5d1f29/WindowsXP-KB920685-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/9/d/9/9d958248-bc1a-4c77-833c-016f656b58f6/WindowsXP-KB920872-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/0/6/f/06fe5fd0-2fa3-48b7-8c9a-2e325b7f0a99/WindowsXP-KB916846-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/b/7/c/b7c3f711-5d51-4c2f-aa30-86e3fb19f1ea/WindowsXP-KB909095-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/3/b/1/3b1ac156-a788-46cf-ab91-92e4bf0fc7f1/WindowsXP-KB899271-v4-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/e/9/3/e93bb878-c701-440f-aac5-a640a7b4bf4a/WindowsXP-KB922582-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/5/1/8/51862690-c635-409b-a3b4-8d5f79130932/WindowsXP-KB923191-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/6/3/d632fa72-d889-4146-921f-130336954101/WindowsXP-KB924191-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/e/d/1/ed10b6fa-30de-418c-acb7-50250c7dcb9e/WindowsXP-KB922819-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/a/9/2a91e9de-6760-4b5f-b09f-d5433bd9da57/WindowsXP-KB924496-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/5/2/b52f8aa4-505b-4b3f-9ed8-a7a39f01b46c/WindowsXP-KB923980-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/c/e/8/ce87da1b-573d-440e-99dd-baf55bd45f00/WindowsXP-KB920213-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/1/c/6/1c6d4bfd-6c9e-447d-a67d-f010537462ed/WindowsXP-KB917021-v3-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/f/3/2/f32bb5a9-c69f-4cb3-86de-a8ecf0016048/WindowsXP-KB914440-v12-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/9/3/0931b3a5-5584-4813-9ee7-7660a2cae76b/WindowsXP-KB926247-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/0/8/b/08b363c6-5e22-464b-aa98-615854af79a9/WindowsXP-KB926255-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/4/d/d4d92ea5-20da-4d12-9892-a3e35459a5f4/WindowsXP-KB918005-v4-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/b/5/5b5971cb-78dc-476a-bee3-fdbb4c268872/WindowsXP-KB922120-v5-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/8/d/e/8de5060d-f534-49f2-922e-21428433f2f9/WindowsXP-KB925720-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/6/7/d/67d46bdd-d85a-40a2-aa6a-d453219f92f9/WindowsXP-KB924441-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/e/2/7/e272bc39-2aca-4dcf-8bb2-22596f0d09f1/WindowsXP-KB896256-v4-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/5/2/252eaf65-082a-4e6d-a5d4-1e238022ab45/WindowsXP-KB924941-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/4/5/b4548e97-fe83-4be0-9ba4-b335d0b5b51f/StepByStepInteractiveTraining-KB923723-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/a/1/e/a1efe40b-823e-4462-bd94-2161c44deed4/WindowsXP-KB928255-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/b/5/8/b5883a71-08b6-47c0-b534-724c679e7b12/WindowsXP-KB927802-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/d/9/d/d9d301b1-6cbe-413d-8c73-1df38fd75a10/WindowsXP-KB928843-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/b/f/1/bf15caa3-8686-455d-a718-89df0a57315a/WindowsXP-KB927779-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/6/4/d/64d7a95a-3f1a-4e04-a9bb-fd85d5b3f49f/WindowsXP-KB926436-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/5/5/1/55145171-4fcb-4083-a242-a6bb2d3a0e9e/WindowsXP-KB924667-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/3/5/f/35f11a55-fa12-49bd-afbb-8c0c828bc313/WindowsXP-KB918118-x86-CHT.exe                    
wget -abuild.log http://download.microsoft.com/download/e/1/b/e1b69db9-bb13-4abf-a674-8bef78f5b4e4/WINDOWSXP-KB925876-X86-CHT.EXE                    
wget -abuild.log http://download.microsoft.com/download/c/4/a/c4a1c27d-85bb-447e-b2bc-178b77f7e06f/WindowsXP-KB925902-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/e/d/0ed94421-3456-4640-96b7-ee67fdb01b5e/WindowsXP-KB931261-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/a/8/d/a8d36e17-258a-49c8-acbf-a59f4b4e85b7/WindowsXP-KB932168-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/3/d/03deb22d-af45-447f-a33d-2d2d21cf23de/WindowsXP-KB930178-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/f/d/4/fd469449-23f5-4800-b6bc-aad3efc2cc73/WindowsXP-KB932590-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/6/2/b/62b93e97-2e2f-4a54-a0a9-cd12ceea0c3e/WindowsXP-KB929338-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/0/6/d0621b9b-0d15-413d-9e1b-18ed86e4a022/WindowsXP-KB930916-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/8/1/4/814b0c00-8037-44f6-a9c8-4a636364ff9c/WindowsXP-KB935840-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/6/8/5688ca46-de75-4a8a-bf1c-3d1fac11e0eb/WindowsXP-KB929123-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/a/d/9/ad9fbbd4-b571-4fb7-aea0-4db30006079d/WindowsXP-KB935839-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/2/3/d231aa3b-a4cc-4104-94f0-7393609e97eb/WindowsXP-KB933612-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/4/1/1/4114720d-4014-429b-885f-4f34ebd358b5/WindowsXP-KB939373-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/b/e/9bee1425-5694-41b4-8422-31a26a6fd55f/WindowsXP-KB933062-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/8/c/98c7d0f0-ac43-4c75-93bf-d89c5c8bbe77/WindowsXP-KB923845-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/c/4/0c4cb316-122d-4158-a6aa-2e37a8a2c80e/WindowsXP-KB936021-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/c/3/8/c38714d7-3181-4276-b315-11855e699484/WindowsXP-KB938127-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/6/a/b6aff376-aad1-4f86-b908-1b682cd9041a/WindowsXP-KB938828-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/f/7/1f702f62-8d85-4244-a7ac-5e22ee565537/WindowsXP-KB935708-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/6/f/c/6fc90ffc-5ab9-4ea0-8b15-bd8ff6c87427/WindowsMedia-KB911564-x86-CHT.exe  
wget -abuild.log http://download.microsoft.com/download/0/a/4/0a4a110d-9e32-4c43-bb03-19b3e9daa107/WindowsMedia6-KB925398-v2-x86-CHT.exe  
wget -abuild.log http://download.microsoft.com/download/d/8/4/d8469cfb-f5ed-4a17-909f-201b2f45badd/WindowsXP-KB933729-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/1/4/b14b4669-55f8-4a62-b558-3f112a7b448a/WindowsXP-KB943460-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/7/b/2/7b2613dd-afa8-4bb9-9ad5-6dd0449f67bb/WindowsXP-KB936357-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/a/7/da7f1488-88b5-4d5e-a0f7-7672d41df7ee/WindowsXP-KB937894-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/2/4/02488482-cd63-4f19-9412-a86821b60bd6/WindowsXP-KB944653-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/2/7/5275dede-33b0-4e29-bb2e-43f10e1c8a94/WindowsXP-KB942840-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/b/e/5beaf800-bbbc-4078-a56b-d2dba58dbf0c/WindowsXP-KB941644-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/8/0/b80e4fc4-eafb-4aa7-b18b-e77b33fc3074/WindowsXP-KB943485-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/7/0/5706faac-8dfc-4c48-b8d1-3fbaf07c9c83/WindowsXP-KB942831-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/0/2/5021b845-aceb-4ed4-93f0-c034caaf6b7b/WindowsXP-KB942830-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/c/2/0/c20f7cba-1995-4522-bff8-c85ab503ba73/WindowsXP-KB946026-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/6/3/a/63a6d7da-d7b3-44bd-b3a3-b644b3120d67/WindowsXP-KB943055-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/a/a/daa535fe-5a78-47ee-b763-aaf76c6ddb06/WindowsXP-KB946501-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/f/b/bfbb08bb-4207-41d1-86b8-f54e872ed8c1/WindowsXP-KB948590-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/5/d/5/5d5a8968-8edc-43a4-a24b-218f202ce048/WindowsXP-KB945553-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/a/b/a/aba583f7-3dc1-4235-9e8c-4204b6a7d640/WindowsXP-KB943198-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/d/2/1d218f4f-e7e9-4be7-acdc-96d488f1f3a0/WindowsXP-KB950749-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/f/0/c/f0cdf8f7-5952-42f9-8064-daa2087022c3/WindowsXP-KB952287-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/9/d/19ddb765-9e1c-41ca-bc7e-948dc7ab2ed5/WindowsXP-KB951698-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/f/5/d/f5df22ac-ba6f-4975-815a-c5c12becec69/WindowsXP-KB950762-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/5/c/d5ce8230-4e5c-46e9-9966-4e0ec996de3d/WindowsXP-KB950760-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/e/e/7/ee798716-39c2-47ff-9689-da52704aa23e/WindowsXP-KB932823-v3-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/e/e/e/eee2d6e2-e464-4349-b521-a5c6386b948e/WindowsXP-KB951830-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/5/a/2/5a2f25f4-0153-4b1b-8d9a-a7f5b4cf8e63/WindowsXP-KB944043-v3-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/6/1/261fca42-22c0-4f91-9451-0e0f2e08356d/WindowsXP-KB942288-v3-x86.exe    
wget -abuild.log http://download.microsoft.com/download/f/2/9/f2964a3e-ae50-484a-80fe-e55c37963d6c/WindowsXP-KB951748-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/1/f/3/1f301b6e-90a5-4b8b-96b1-80b27cfe06fa/WindowsXP-KB952155-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/2/1/2/2129ad43-1192-4d16-b1ed-720098627519/WindowsXP-KB951376-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/c/4/8/c486343a-7b01-4316-85cd-f82df5147e18/WindowsXP-KB952954-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/1/2/b/12b36d6a-8065-4f5b-a759-e58ef1e0a407/WindowsXP-KB951066-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/4/2/d/42db9e7e-b161-48fd-a960-864a1ae7797e/WindowsXP-KB950974-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/0/4/f/04f33726-926a-4f64-b957-8443c39c26f6/WindowsXP-KB953839-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/c/a/6/ca612a33-4552-48c8-93c4-923cf6b7e254/WindowsXP-KB944338-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/3/2/d32b42d1-4aab-4ae8-b079-b796095a5d09/WindowsXP-KB955417-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/5/d/d5df3f09-7885-4ce9-bb14-f5d21ed1c146/WindowsXP-KB932716-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/3/f/0/3f0b36f6-926c-482d-ae4f-57be22cd7d2e/WindowsXP-KB938464-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/4/b/7/4b7a2ff8-f45a-4511-87d2-e64655733766/WindowsXP-KB951618-v2-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/b/c/b/bcbe25a4-4532-42b3-a2a4-3af5f56a5bf4/WindowsXP-KB951072-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/0/4/d04ac3ee-e381-4f1c-b8a6-022644346813/WindowsXP-KB958644-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/6/a/5/6a5a48b9-490d-455a-bc49-efb78cf5577f/WindowsXP-KB956390-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/7/3/3/73399e0c-9ef1-4ad8-a49e-bfffa78d955f/WindowsXP-KB956803-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/3/a/9/3a954a64-bb3d-480c-b75c-b648bcb14880/WindowsXP-KB954211-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/e/d/3/ed33e9bd-47f1-42db-843b-73071912bc0c/WindowsXP-KB953155-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/a/c/9/ac938a57-eccf-4982-9d3a-a63300e528d3/WindowsXP-KB957095-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/0/f/8/0f862a24-49ee-4409-bf3f-71985999f769/WindowsXP-KB956841-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/9/2/4/924f160a-062f-4cac-9507-ab0bd73f937a/WindowsXP-KB915865-v11-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/5/d/4/5d428d99-ff56-4dc7-a049-d3623f0d1426/WindowsXP-KB954920-v2-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/e/c/3/ec308422-8bd1-479c-bcb3-7788b8d3e782/WindowsXP-KB956391-x86-CHT.exe    
move /y *.exe wxp_sp3\wxpsp2\hotfix1\ > nul
ECHO      ├正在下載 HotFix Type 2，請稍後...
wget -abuild.log http://download.microsoft.com/download/5/a/d/5ad868a0-8ecd-4bb0-a882-fe53eb7ef348/VB6.0-KB290887-X86.exe
wget -abuild.log http://download.microsoft.com/download/c/c/3/cc3460fc-91e3-4c9f-8ceb-d576a0662aa9/WindowsXP-KB923789-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/7/1/17115a2c-8493-4947-bb7d-d7b58457acf7/CAPICOM-KB931906-v2102.exe
wget -abuild.log http://download.microsoft.com/download/7/b/e/7be6558b-bb23-49a0-9b84-4506136e68a8/Webfldrs-KB907306-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/0/6/2064287c-65a7-4aa9-9a38-e0fbb67ffae1/rootsupd.exe
VB6.0-KB290887-X86.exe /Q /T:%TEMP%
del /q /f VB6.0-KB290887-X86.exe > nul
move /y %TEMP%\vbrun60sp6.exe wxp_sp3\wxpsp2\hotfix2\ > nul
move /y *.exe wxp_sp3\wxpsp2\hotfix2\ > nul
ECHO      ├正在下載 HotFix Type 3，請稍後...
wget -abuild.log http://download.microsoft.com/download/5/6/f/56f22d33-bc91-4e9b-88d3-3e55a7169022/WindowsXP-KB923996-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/2/3/9237a53a-3a9a-48c4-a74a-0871063c316c/WindowsXP-KB924867-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/a/3/2a32151e-c470-405a-a315-16a79450a784/WindowsXP-KB920342-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/d/d/7/dd74dda2-c592-4e96-9e19-a5e8fad8e7eb/WindowsXP-KB935448-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/8/d/18d7dc44-617a-4d19-82ea-eb0ba1743e77/WindowsXP-KB935843-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/e/f/b/efb874f5-eea7-4b37-996a-4c3f8e8fdb7d/WindowsXP-KB927891-v3-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/e/0/2e0f0bf9-6eed-41e1-8279-c3ba6c1d68a1/WindowsXP-KB946627-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/1/1/911b2939-8d50-4461-a3ce-b5efd03fa95f/WindowsXP-KB940275-v3-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/3/2/9/329c83c3-c092-48d8-b1eb-709319e8cffa/Windows-zh-TW-KB943729.exe
move /y *.exe wxp_sp3\wxpsp2\hotfix3\ > nul
ECHO      ├正在下載 HotFix Type 4，請稍後...
wget -abuild.log http://download.microsoft.com/download/4/a/a/4aa524c6-239d-47ff-860b-5b397199cbf8/windows-kb890830-v2.3.exe
move /y *.exe wxp_sp3\wxpsp2\hotfix4\ > nul
ECHO      ├正在下載 Windows Update Agent，請稍後...
wget -abuild.log http://download.windowsupdate.com/v7/windowsupdate/redist/standalone/WindowsUpdateAgent30-x86.exe
WindowsUpdateAgent30-x86.exe /Q /X:wxp_sp3\wxpsp2\hotfix5
wget -abuild.log http://update.microsoft.com/microsoftupdate/v6/V5Controls/en/x86/client/muweb_site.cab
wget -abuild.log http://update.microsoft.com/microsoftupdate/v6/V5Controls/en/x86/client/wuweb_site.cab
extrac32 /y muweb_site.cab muweb.dll
extrac32 /y wuweb_site.cab wuweb.dll
del /q /f *.cab > nul
del /q /f *.exe > nul
move /y *.dll wxp_sp3\wxpsp2\hotfix5\ > nul
for %%i in (ar cs da de el es fi fr he hu it ja ko nl no pl pt ptbr ru sv tr zhcn) do (
rd /q /s wxp_sp3\wxpsp2\hotfix5\%%i > nul
del /q /f wxp_sp3\wxpsp2\hotfix5\*.mui_%%i > nul
del /q /f wxp_sp3\wxpsp2\hotfix5\wuauhelp.chm_%%i > nul  
)
ECHO      下載完成。
ECHO.
ECHO   2. 正在下載 Windows Media Player 10 之後的所有修正檔，請稍後...
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/7/e/0/7e055e3f-6014-43bc-b6ff-6a90ced1d032/windowsmedia10-kb902344-x86-intl.exe
wget -abuild.log http://download.microsoft.com/download/4/2/e/42e69c7e-9651-4fe6-9835-a2af47eea40c/WindowsMedia10-KB936782-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/f/2/3/f23cc3db-376b-4e99-bbae-2a327031d150/WindowsXP-KB923689-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/3/c/93c2de53-05f5-4497-ba41-257de0ec4015/WindowsXP-KB941569-x86-CHT.exe
move /y *.exe wxp_sp3\wmp10\hotfix1\ > nul
ECHO      ├正在下載 HotFix Type 2，請稍後...
move /y *.exe wxp_sp3\wmp10\hotfix2\ > nul
ECHO      下載完成。
ECHO.
ECHO.
CLS
ECHO -------------------------------------------------------------------------------
ECHO     檔案下載完成！
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：(偽) Windows XP Pre-SP3 所有檔案已下載完成。
ECHO           您可在這個目錄下找到 wxp_sp3，您只要將此目錄複製到您所要更新的電腦，
ECHO           並執行 hotfix.cmd 即可開始安裝 (偽) Windows XP Pre-SP3。
ECHO.
ECHO           原始的 build.cmd 和 wget.exe，您可自行刪除。
ECHO.           
ECHO           另外，這個目錄下會產生記錄檔 build.log，這是下載檔案的完整記錄，
ECHO           您可以開啟這個檔案檢查下載記錄，按下任意鍵後會刪除這個記錄檔
ECHO           並關閉程式。
ECHO.
ECHO.
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵關閉程式！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.     
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/
ECHO -------------------------------------------------------------------------------
pause
move /y %WINDIR%\System32\wget.exe > nul
explorer "http://www.threesecond.info/v2/modules/xhnewbb/viewtopic.php?topic_id=245"
goto end

:error
CLS
ECHO -------------------------------------------------------------------------------
ECHO     找不到必要的檔案！
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：您正在執行的 (偽) Windows XP Pre-SP3 自動建立程式
ECHO           缺少必要的執行檔，請確認您是否有完整的檔案，
ECHO           或是重新下載 (偽) Windows XP Pre-SP3 自動建立程式。
ECHO.
ECHO           本程式即將關閉。
ECHO.         
ECHO.         
ECHO.         
ECHO.         
ECHO.
ECHO.
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵關閉程式！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.     
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/
ECHO -------------------------------------------------------------------------------
pause
goto end

:end
exit