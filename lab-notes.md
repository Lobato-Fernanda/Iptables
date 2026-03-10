# Notas do Laboratório IPTables
Este arquivo contém observações feitas durante a execução do laboratório.
---
# Problema encontrado
Erro ao iniciar a máquina virtual:
No bootable medium found
### Causa
Nenhuma imagem ISO estava associada à máquina virtual.
### Solução
1. Baixar Ubuntu ISO
2. Abrir configurações da VM
3. Selecionar a ISO no armazenamento
---
# Configuração de IP
Cliente
192.168.10.2
Servidor
192.168.20.2
Firewall
192.168.10.1
192.168.20.1

---

# Teste de Conectividade
Cliente executou:
ping 192.168.20.2
Resultado esperado:
Resposta do servidor.
---
# Problema observado
Durante o teste:
1211 packets transmitted
0 received

Possíveis causas:
- firewall bloqueando
- rota não configurada
- serviço inativo

---
# Conclusão
Este laboratório permitiu compreender:
- funcionamento de firewall
- roteamento entre redes
- configuração de NAT
- controle de acesso por portas
