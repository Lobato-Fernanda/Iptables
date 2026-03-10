
---
```bash
#!/bin/bash
```
# Firewall IPTables Script
# Laboratório de Redes

echo "Iniciando configuração do firewall..."

# Limpar regras existentes
iptables -F
iptables -t nat -F
iptables -X

echo "Regras antigas removidas."

# Políticas padrão
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

echo "Políticas padrão configuradas."

# Permitir loopback
iptables -A INPUT -i lo -j ACCEPT

# Permitir conexões já estabelecidas
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

echo "Loopback e conexões estabelecidas liberadas."

# Permitir SSH na rede interna
iptables -A INPUT -p tcp --dport 22 -s 192.168.10.0/24 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -s 192.168.20.0/24 -j ACCEPT

echo "SSH liberado."

# Habilitar encaminhamento de pacotes
echo 1 > /proc/sys/net/ipv4/ip_forward

echo "Encaminhamento de pacotes ativado."

# Configurar NAT
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

echo "NAT configurado."

# Permitir ICMP entre redes
iptables -A FORWARD -p icmp -s 192.168.10.0/24 -d 192.168.20.0/24 -j ACCEPT
iptables -A FORWARD -p icmp -s 192.168.20.0/24 -d 192.168.10.0/24 -j ACCEPT

echo "Ping permitido entre cliente e servidor."

# Bloquear HTTP
iptables -A FORWARD -p tcp --dport 80 -j DROP

echo "HTTP bloqueado."

# Permitir HTTPS
iptables -A FORWARD -p tcp --dport 443 -j ACCEPT

echo "HTTPS permitido."

echo "Configuração do firewall finalizada."
