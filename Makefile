# START Mon 15 Feb 2021 09:41:08 WIB

ALL: 004.md 005.md 006.md

004.md: 004.pmd _config.yml Gemfile _layouts/layout.html Makefile \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 004.pmd > 004.md

005.md: 005.pmd assets/scripts/sources.list assets/scripts/clean-system.sh \
        assets/scripts/debs.sh 
	python assets/scripts/includeScript.py < 005.pmd > 005.md

006.md: 006.pmd assets/scripts/clean-home.sh \
        assets/scripts/set-rbenv1.sh
	python assets/scripts/includeScript.py < 006.pmd > 006.md

.phony: ALL

