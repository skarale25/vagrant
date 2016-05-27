Vagrant.configure(2) do |config|
  config.push.define "atlas" do |push|
       push.app = "skarale/pymeetup"
  end

  config.vm.define :meetup_ubuntu do |meetup_ubuntu|
    meetup_ubuntu.vm.box = "baremettle/ubuntu-14.04"

    # port forwarding
    meetup_ubuntu.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true

    # sync folder
    meetup_ubuntu.vm.synced_folder "./", "/var/www", create: true, group:"www=data", owner: "www-data"


    meetup_ubuntu.vm.provision "shell",
        inline: "/bin/bash /home/vagrant/boot_file.sh"
    end
  #  meetup_ubuntu.vm.provision "shell", inline: <<-SHELL
  #     mkdir snehal
  #     sudo apt-get update
  #   sudo apt-get install -y apache2
  #  SHELL_END
  end

