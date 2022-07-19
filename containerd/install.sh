# Install containerd
yay -S --needed --answerclean=All --nodiffmenu --noconfirm containerd nerdctl

sudo loginctl enable-linger $(whoami)

python sub.py

sudo mkdir -p /etc/systemd/system/user@.service.d

cat <<EOF | sudo tee /etc/systemd/system/user@.service.d/delegate.conf
[Service]
Delegate=cpu cpuset io memory pids
EOF

sudo systemctl daemon-reload


curl -s https://raw.githubusercontent.com/containerd/nerdctl/master/extras/rootless/containerd-rootless-setuptool.sh | containerd-rootless-setuptool.sh install

# Rootless Containers: https://rootlesscontaine.rs/getting-started/common/
# https://github.com/containerd/nerdctl/blob/master/docs/rootless.md