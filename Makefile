SHELL=/bin/bash -o pipefail
.PHONY: local remote deploy review

remote: quirks.bs
	@ (HTTP_STATUS=$$(curl https://api.csswg.org/bikeshed/ \
	                       --output quirks.html \
	                       --write-out "%{http_code}" \
	                       --header "Accept: text/plain, text/html" \
	                       -F die-on=warning \
	                       -F md-Text-Macro="COMMIT-SHA LOCAL COPY" \
	                       -F file=@quirks.bs) && \
	[[ "$$HTTP_STATUS" -eq "200" ]]) || ( \
		echo ""; cat quirks.html; echo ""; \
		rm -f quirks.html; \
		exit 22 \
	);

local: quirks.bs
	bikeshed spec quirks.bs quirks.html --md-Text-Macro="COMMIT-SHA LOCAL COPY"

deploy: quirks.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh
	bash ./deploy.sh

review: quirks.bs
	curl --remote-name --fail https://resources.whatwg.org/build/review.sh
	bash ./review.sh
