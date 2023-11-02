echo "Killing all containers starting with '${USER}_cleanrl'"
sudo kill -9 $(ps aux | grep '${USER}_torch_ngp' | awk '{print $2}')
