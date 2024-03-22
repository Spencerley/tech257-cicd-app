# Manually Delete node 
# sudo apt-get remove nodejs
# manually change node
# curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash - sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs

# add app and environment folder to VM<
    # rsync -avz -e "ssh -o StrictHostKeyChecking=no" app ubuntu@3.250.202.254:/home/ubuntu/
    # rsync -avz -e "ssh -o StrictHostKeyChecking=no" environment ubuntu@3.250.202.254:/home/ubuntu/

# run the script available available eng99_cicd/environment/app/provision.sh - sudo chmod +x provision.sh
    # cd environment/app/
	# sudo -n chmod +x provision.sh
	# ./provision.sh

# ssh into your ec2 from localhost
    # ssh -o "StrictHostKeyChecking=no" ubuntu@3.250.202.254

# navigate to new app folder
    # cd ..
	# cd ..
	# cd app

# once working get this to trigger after merge job
# ensure aws SG allows ssh to jenkins
# ensure file.pem provided to jenkins
# ensure ec2 is running
rsync -avz -e "ssh -o StrictHostKeyChecking=no" app ubuntu@3.250.202.254:/home/ubuntu/
rsync -avz -e "ssh -o StrictHostKeyChecking=no" environment ubuntu@3.250.202.254:/home/ubuntu/

ssh -o "StrictHostKeyChecking=no" ubuntu@3.250.202.254 <<EOF
	sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt-get install nginx -y
    sudo systemctl restart nginx
    cd environment/app/
	sudo -n chmod +x provision.sh
	./provision.sh
	cd ..
	cd ..
	cd app
	sudo -n apt install npm
	sudo npm install -g pm2
	npm install
	pm2 stop app.js
	pm2 start app.js