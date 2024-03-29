# REV24: Wed 20 Dec 2023 15:00
# REV19: Tue 21 Feb 2023 20:00
# REV09: Fri 27 Jan 2023 10:00
# REV03: Thu 14 Jul 2022 07:00
# REV01: Sat 29 Jan 2022 13:00
# START: Mon 15 Feb 2021 09:00

SITEURL   = "doit.vlsm.org"
SRC_FILES = $(wildcard *.pmd)
MD_FILES  = $(patsubst %.pmd, %.md, $(SRC_FILES))

all: $(MD_FILES) .siteHack

%.md: %.pmd
	python assets/scripts/includeScript.py < $< > $@

004.md: 004.pmd _config.yml Gemfile _layouts/default.html Makefile \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
        assets/css/style.css assets/scripts/includeScript.py
	python assets/scripts/includeScript.py < 004.pmd > 004.md

005.md: 005.pmd assets/scripts/sources.list assets/scripts/clean-system.sh \
        assets/scripts/026-debJEKYLL 
	python assets/scripts/includeScript.py < 005.pmd > 005.md

006.md: 006.pmd assets/scripts/clean-home.sh \
        assets/scripts/set-rbenv1.sh
	python assets/scripts/includeScript.py < 006.pmd > 006.md

008.md: 008.pmd assets/configs/config-linux-kernel-amd64.txt
	python assets/scripts/includeScript.py < 008.pmd > 008.md

010.md: 010.pmd assets/configs/config-linux-kernel-arm64.txt
	python assets/scripts/includeScript.py < 010.pmd > 010.md

011.md: 011.pmd assets/configs/config-linux-kernel-arm64.txt
	python assets/scripts/includeScript.py < 011.pmd > 011.md

026.md: 026.pmd assets/scripts/026-debBasic \
        assets/scripts/026-debCompile assets/scripts/026-debOSP assets/scripts/026-debOSPADD \
        assets/scripts/026-debJEKYLL 
	python assets/scripts/includeScript.py < 026.pmd > 026.md

027.md: 027.pmd assets/scripts/027-doBASH assets/scripts/027-doDNS assets/scripts/027-doZero \
        assets/scripts/027-doUPDATE assets/scripts/027-doZero
	python assets/scripts/includeScript.py < 027.pmd > 027.md

.siteHack: _site/sitemap.xml
	@bash  .siteHack $(SITEURL)
	@touch .siteHack

.phony: ALL

