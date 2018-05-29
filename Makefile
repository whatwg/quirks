remote: quirks.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@quirks.bs > quirks.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

local: quirks.bs
	bikeshed spec quirks.bs quirks.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

deploy: quirks.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh
	bash ./deploy.sh

review: quirks.bs
	curl --remote-name --fail https://resources.whatwg.org/build/review.sh
	bash ./review.sh
