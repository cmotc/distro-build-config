#! /bin/sh
rm -rf .build auto config local
./regen/step0-lb_clean.sh && ./regen/step1-lb_config.sh && ./regen/step2-get_keys.sh && ./regen/step3-source_lists.sh && ./regen/step4-package_lists.sh && ./regen/step5-etc_settings.sh && ./regen/step6-user_settings.sh && ./regen/step7-setup_hooks.sh