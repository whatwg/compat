SHELL=/bin/bash -o pipefail
.PHONY: local remote deploy review

remote: compatibility.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@compatibility.bs > compatibility.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

local: compatibility.bs
	bikeshed spec compatibility.bs compatibility.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

deploy: compatibility.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh
	EXTRA_FILES="*.png" \
	bash ./deploy.sh

review: compatibility.bs
	curl --remote-name --fail https://resources.whatwg.org/build/review.sh
	bash ./review.sh
