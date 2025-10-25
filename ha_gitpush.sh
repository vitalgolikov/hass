# Go to /config folder
cd /config

# Указываем явно каталог с ключами
export HOME="/config"
export GIT_SSH_COMMAND="ssh -i /config/.ssh/id_rsa -o StrictHostKeyChecking=yes -o UserKnownHostsFile=/config/.ssh/known_hosts"

# Add all changed files/folders to repository and add commit message with current date stamp
#git commit -am "config files on “date +'%d—%m-%Y %H:%M:%S'~"
git commit -am "config files on $(date +'%d-%m-%Y %H:%M:%S')"

# Push changes towards GitHub
git push -u origin main
