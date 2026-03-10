# Laboratório 2 — Firewall com IPTables

Autores: Fernanda Lobato • Paulo • Marcelo  

Este laboratório demonstra a criação de um **ambiente virtual com três máquinas Linux** para simular uma rede com **firewall utilizando IPTables**.

O objetivo é compreender na prática conceitos de:

- roteamento
- filtragem de pacotes
- NAT (Network Address Translation)
- controle de portas
- comunicação entre redes isoladas

---

# Tecnologias Utilizadas

- Ubuntu Linux
- IPTables
- VirtualBox
- Redes TCP/IP
- ICMP (Ping)

---

# Topologia da Rede

O laboratório foi construído com **3 máquinas virtuais**:
# Iptables
Este laboratório demonstra a criação de um ambiente virtual com três máquinas Linux para simular uma rede com firewall utilizando IPTables
       INTERNET
           |
         (NAT)
           |
    ----------------
    |   FIREWALL   |
    | 192.168.10.1 |
    | 192.168.20.1 |
    ----------------
       |        |
       |        |
  CLIENTE    SERVIDOR

  
