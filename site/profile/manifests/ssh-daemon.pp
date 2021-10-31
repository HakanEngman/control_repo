class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDlRRnuFUwuRdNbY+oobBOFUyUKWqfha3cCvM62Nxc7lIbJLK4KGsx2AKuSDwHT3twnlkulzZHZs9B5ZxJwG8h+8yn/diLZc2P8pvtKJBvgwAQ9/UPr+1spWVfoeaE6b+Sk7Zj+hKTziD4PzoFhBolg+YJ2pizeN1wOG/zkzPCxuecDBbipT/I6RSBtfcyp+n6EP4TlndgOYQ5cy28wr2ccOTk7qOcDC2yoys1ll8sl3mL2e36uYA1wJagzhauEAlqCxvsEkk4cYd8wK8p2zaBtlMJjIEtzOVrtI9ZWZ41d5ERtwICv4QfAlnmfStNSM9mf0xXMC71cFgysxewzWRQP',
	}  
}
