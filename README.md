# IPTables Firewall Lab
Autor: Fernanda Lobato    

Este repositório contém um laboratório prático de **segurança de redes utilizando IPTables** para configuração de um firewall Linux.
O objetivo é simular um ambiente com três máquinas virtuais:
- Firewall
- Cliente
- Servidor
Permitindo estudar conceitos de:
- filtragem de pacotes
- roteamento
- NAT
- segmentação de redes
- controle de acesso
---
# Ambiente do Laboratório
O laboratório foi desenvolvido utilizando:
- Ubuntu Linux
- IPTables
- VirtualBox
---
# Topologia da Rede
    INTERNET
       |
     (NAT)
       |
    [FIREWALL]

---
# Estrutura do Repositório
iptables-firewall-lab
│

├── README.md

├── firewall-rules.sh

└── lab-notes.md
---
# Configuração do Firewall
As regras do firewall estão no arquivo:
firewall-rules.sh
Esse script:
- limpa regras antigas
- define políticas padrão
- habilita NAT
- permite SSH
- permite ICMP entre redes
- controla acesso HTTP/HTTPS

---
# Como executar o laboratório
No firewall:
```bash
chmod +x firewall-rules.sh
sudo ./firewall-rules.sh
```
---
# Testes realizados
Testes de conectividade:
Cliente → Servidor
```bash
ping 192.168.20.2
```
| Porta | Status    |
| ----- | --------- |
| 80    | Bloqueada |
| 443   | Permitida |
---
# Conceitos Aprendidos
- Firewall Linux
- IPTables
- NAT
- roteamento entre redes
- segmentação de rede
- controle de tráfego
  
⚠️ Aviso
Este laboratório foi criado exclusivamente para fins educacionais.
Não utilize essas técnicas em redes sem autorização.
