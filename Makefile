local: compatibility.bs
	bikeshed spec compatibility.bs compatibility.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

remote: compatibility.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@compatibility.bs > compatibility.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"
