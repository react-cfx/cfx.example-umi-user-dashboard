pjName := cfx.example-umi-user-dashboard

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3080:80 \
		-p 3088:8080 \
		-p 3030:3000 \
		-p 3000:8000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash

in:
	docker exec \
		-ti \
		${pjName} \
		/bin/bash

dev:
	docker run \
		--name ${pjName} \
		--restart always \
		-d \
		-p 3000:8000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash -lc \
			"cd /root/${pjName}/packages/Umi && make rebuild && make static && make serve"

prd:
	docker run \
		--name ${pjName} \
		--restart always \
		-d \
		-p 80:80 \
		-v $$(pwd):/srv \
		-v $$(pwd)/packages/Umi/Caddyfile:/etc/Caddyfile \
		productionwentdown/caddy

stop:
	docker rm -f ${pjName}

logs:
	docker logs -f ${pjName}
