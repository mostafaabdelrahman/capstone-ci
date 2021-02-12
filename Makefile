install-requirements:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-hadolint:
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x ./hadolint
	sudo cp ./hadolint /bin/hadolint
	
lint:
	hadolint --ignore DL3013 Dockerfile 
	pylint --disable=R,C,W1203 app.py

create-eks:
	eksctl create cluster --name udacity-capstone --region us-west-2  --zones=us-west-2a,us-west-2b,us-west-2c \
		--nodegroup-name workers --node-type t2.micro --nodes 3 --nodes-min 3 --nodes-max 3 \
		--ssh-access --ssh-public-key "webapp-key" --managed
		
create-deployment:
	./run_kubernetes_deployment.sh
