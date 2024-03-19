# How do you create an SSH key pair?
Using the ssh-keygen command:
1. `ssh-keygen -t rsa -f C:/Users/<WINDOWS_USER>/.ssh/<KEY_FILENAME> -C <email> -b 2048`
2. eval `ssh-agent -s`
3. `ssh-add <path-to-key>`
4. cd into ssh folder
5. cat the public key `cat <key-name.pub>`
6. Copy the key without spaces and add it to deploy keys in the settings of your repo.
7. Test the connection to GitHub with `ssh -T git@github.com`
8. `git clonegit@github.com:<path-to-repo.git>` using the SSH method instead of https should clone down the repo.