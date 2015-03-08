#! /bin/sh
rm -rf .build auto config local
./step0-lb_clean.sh && ./step1-lb_config.sh && ./boostrap-https-transport.sh && ./step2-get_keys.sh && ./step3-source_lists.sh && ./step4-package_lists.sh && ./step5-etc_settings.sh && ./step6-user_settings.sh && ./step7-setup_hooks.sh