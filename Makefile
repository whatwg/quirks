local: Overview.bs
	bikeshed spec Overview.bs Overview.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

remote: Overview.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@Overview.bs > Overview.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

deploy: Overview.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh && bash ./deploy.sh
