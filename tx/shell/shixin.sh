#/bin/bash
#@author:azimao
#@date:2018-07-13

shixinDev="root@119.23.131.139"
rsync -avz $shixinDev:/wwwroot/sx_member_api /wwwazi
rsync -avz $shixinDev:/wwwroot/git-webhook /wwwazi
rsync -avz $shixinDev:/wwwroot/phpmysql.com /wwwazi
rsync -avz $shixinDev:/wwwroot/zentaopms /wwwazi
rsync -avz $shixinDev:/wwwroot/api.shixinyuezi.net /wwwazi
