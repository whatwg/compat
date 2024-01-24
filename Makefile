SHELL=/bin/bash -o pipefail
.PHONY: local remote deploy

remote: compatibility.bs
	@ (HTTP_STATUS=$$(curl https://api.csswg.org/bikeshed/ \
	                       --output compatibility.html \
	                       --write-out "%{http_code}" \
	                       --header "Accept: text/plain, text/html" \
	                       -F die-on=warning \
	                       -F md-Text-Macro="COMMIT-SHA LOCAL COPY" \
	                       -F file=@compatibility.bs) && \
	[[ "$$HTTP_STATUS" -eq "200" ]]) || ( \
		echo ""; cat compatibility.html; echo ""; \
		rm -f compatibility.html; \
		exit 22 \
	);

local: compatibility.bs
	bikeshed spec compatibility.bs compatibility.html --md-Text-Macro="COMMIT-SHA LOCAL-COPY"

deploy: compatibility.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh
	EXTRA_FILES="*.png" \
	bash ./deploy.sh
