# Capacitação N1IT - IAAS 

Criando Infraestrutura Como Serviço.

O objetivo deste projeto é criar a infraestrutura solicitada no Azure de forma rápida com Terraform.

Segue descrição dos recursos que serão criados:

1 - rg.tf: Cria o Resource Group no Azure;

2 - network.tf: Cria a rede virtual no Azure;

3 - nsg.tf: Cria o NSG e libera a porta 3389 para acesso RDP no caso de máquinas Windows;

4 - nic.tf: Cria interface de rede;

5 - pip.tf: IP Público para acesso as VMs através da internet;

7 - vmserver: Cria uma VM Windows Server 2019 e associa a ela todos os recursos criados anteriormente;

8 - storage.tf: cria uma conta de armazenamento.

Nota 1: Importante lembrar que todos os nomes atribuidos podem ser modificados.
Nota 2: Usuário e senha da vm está no arquivo varcredenciais
